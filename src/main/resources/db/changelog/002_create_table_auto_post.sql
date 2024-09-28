create table auto_post
(
    id           serial primary key,
    description  varchar,
    created      timestamp default current_timestamp,
    auto_user_id int,
    constraint fk_auto_user foreign key (auto_user_id) references auto_user (id) on delete cascade
);