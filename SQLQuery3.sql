create database casestudy
create table users(
users_id int identity primary key,
name varchar(50),
users_type_id int foreign key references user_type(user_type_id)
)
create table user_type(
user_type_id int identity primary key,
descriptn varchar(max)
)
create table login(
username varchar(50) not null,
passwords varchar(50) not null,
login_id int foreign key references users(users_id)
)

create table act_category(
act_id int identity primary key,
cat_descrptn varchar(max)
)
create table store(
s_id int identity primary key,
s_detail varchar(max)
)

create table req_status(
req_id int identity primary key,
req_descrptn varchar(max)
)


create table task(
t_id int identity primary key,
title varchar(50),
descrptn varchar(max),
fromdate date not null,
todate date not null,
act_cat_id int foreign key references act_category(act_id),
store_id int foreign key references store(s_id),
r_status_id int foreign key references req_status(req_id)
)
