-- SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
-- SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
-- SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
SET CHARSET UTF8MB4;
DROP SCHEMA IF EXISTS `recipinder`;
CREATE SCHEMA IF NOT EXISTS `recipinder` DEFAULT CHARACTER SET utf8mb4;
USE `recipinder`;

CREATE TABLE IF NOT EXISTS `users` (
    `id` VARCHAR(64) NOT NULL COMMENT 'ユーザID',
    `name` VARCHAR(64) NOT NULL COMMENT '名前',
    `created_at` DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '作成時',
    `updated_at` DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新時',
    PRIMARY KEY (`id`),
    INDEX `idx_auth_token` (`id` ASC)
    );

CREATE TABLE IF NOT EXISTS `recipinder`.`recipis` (
    `id` MEDIUMINT NOT NULL AUTO_INCREMENT COMMENT 'レシピID',
    `recipe_name` VARCHAR(64) NOT NULL COMMENT 'レシピネーム',
    `description` VARCHAR(512) NOT NULL COMMENT 'レシピ概要',
    `url` VARCHAR(128) NOT NULL COMMENT '料理画像URL',
    `place` integer NOT NULL COMMENT '値段',
    `ingredients` VARCHAR(64) NOT NULL COMMENT '材料ID',
    `tag` integer NOT NULL COMMENT 'tagid',
    `evaluation` integer NOT NULL COMMENT '評価',
    `created_at` DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '作成時',
    `updated_at` DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新時',
    PRIMARY KEY (`id`)
    );

CREATE TABLE IF NOT EXISTS `recipinder`.`recipe_user` (
    `id` VARCHAR(64) NOT NULL COMMENT 'ID',
    `recipe_id` VARCHAR(64) NOT NULL COMMENT 'レシピID',
    `user_id` VARCHAR(64) NOT NULL COMMENT 'ユーザID',
    `like` integer NOT NULL COMMENT 'like判定',
    PRIMARY KEY (`id`)
    );

CREATE TABLE IF NOT EXISTS `recipinder`.`review` (
    `id` VARCHAR(64) NOT NULL COMMENT 'ID',
    `recipe_id` VARCHAR(64) NOT NULL COMMENT 'レシピID',
    `evaluation` integer NOT NULL COMMENT '評価',
    PRIMARY KEY (`id`)
    );

-- user
INSERT INTO users (id,name) VALUES ("1","rakko1");
INSERT INTO users (id,name) VALUES ("2","rakko2");


-- `id` VARCHAR(64) NOT NULL COMMENT 'レシピID',
--     `recipe_name` VARCHAR(64) NOT NULL COMMENT 'レシピネーム',
--     `description` VARCHAR(512) NOT NULL COMMENT 'レシピ概要',
--     `url` VARCHAR(128) NOT NULL COMMENT '料理画像URL',
--     `place` integer NOT NULL COMMENT '値段',
--     `ingredients` VARCHAR(64) NOT NULL COMMENT '材料ID',
--     `tag` integer NOT NULL COMMENT 'tagid',
--     `evaluation` integer NOT NULL COMMENT '評価',
-- recipe
INSERT INTO recipis (recipe_name,description,url,place,ingredients,tag,evaluation) VALUES ("niku","食ってみな飛ぶぞ","https://image.delishkitchen.tv/recipe/233971595058610622/1.webp?version=1658215376&w=600",500,"鶏モモ肉,卵",0,3);

INSERT INTO recipis (recipe_name,description,url,place,ingredients,tag,evaluation) VALUES ("niku","食ってみな飛ぶぞ","https://image.delishkitchen.tv/recipe/201390441034155089/1.webp?version=1639021741&w=600",500,"鶏モモ肉,卵",0,3);
INSERT INTO recipis (recipe_name,description,url,place,ingredients,tag,evaluation) VALUES ("niku","食ってみな飛ぶぞ","https://image.delishkitchen.tv/recipe/233971595058610622/1.webp?version=1658215376&w=600",500,"鶏モモ肉,卵",0,3);
INSERT INTO recipis (recipe_name,description,url,place,ingredients,tag,evaluation) VALUES ("niku","食ってみな飛ぶぞ","https://image.delishkitchen.tv/recipe/201390441034155089/1.webp?version=1639021741&w=600",500,"鶏モモ肉,卵",0,3);
INSERT INTO recipis (recipe_name,description,url,place,ingredients,tag,evaluation) VALUES ("niku","食ってみな飛ぶぞ","https://image.delishkitchen.tv/recipe/233971595058610622/1.webp?version=1658215376&w=600",500,"鶏モモ肉,卵",0,3);
INSERT INTO recipis (recipe_name,description,url,place,ingredients,tag,evaluation) VALUES ("niku","食ってみな飛ぶぞ","https://image.delishkitchen.tv/recipe/201390441034155089/1.webp?version=1639021741&w=600",500,"鶏モモ肉,卵",0,3);
INSERT INTO recipis (recipe_name,description,url,place,ingredients,tag,evaluation) VALUES ("niku","食ってみな飛ぶぞ","https://image.delishkitchen.tv/recipe/233971595058610622/1.webp?version=1658215376&w=600",500,"鶏モモ肉,卵",0,3);
INSERT INTO recipis (recipe_name,description,url,place,ingredients,tag,evaluation) VALUES ("niku","食ってみな飛ぶぞ","https://image.delishkitchen.tv/recipe/201390441034155089/1.webp?version=1639021741&w=600",500,"鶏モモ肉,卵",0,3);
INSERT INTO recipis (recipe_name,description,url,place,ingredients,tag,evaluation) VALUES ("niku","食ってみな飛ぶぞ","https://image.delishkitchen.tv/recipe/233971595058610622/1.webp?version=1658215376&w=600",500,"鶏モモ肉,卵",0,3);

INSERT INTO recipis (recipe_name,description,url,place,ingredients,tag,evaluation) VALUES ("niku","食ってみな飛ぶぞ","https://image.delishkitchen.tv/recipe/201390441034155089/1.webp?version=1639021741&w=600",500,"鶏モモ肉,卵",0,3);
INSERT INTO recipis (recipe_name,description,url,place,ingredients,tag,evaluation) VALUES ("niku","食ってみな飛ぶぞ","https://image.delishkitchen.tv/recipe/201390441034155089/1.webp?version=1639021741&w=600",500,"鶏モモ肉,卵",0,3);
INSERT INTO recipis (recipe_name,description,url,place,ingredients,tag,evaluation) VALUES ("niku","食ってみな飛ぶぞ","https://image.delishkitchen.tv/recipe/201390441034155089/1.webp?version=1639021741&w=600",500,"鶏モモ肉,卵",0,3);
INSERT INTO recipis (recipe_name,description,url,place,ingredients,tag,evaluation) VALUES ("niku","食ってみな飛ぶぞ","https://image.delishkitchen.tv/recipe/201390441034155089/1.webp?version=1639021741&w=600",500,"鶏モモ肉,卵",0,3);
INSERT INTO recipis (recipe_name,description,url,place,ingredients,tag,evaluation) VALUES ("niku","食ってみな飛ぶぞ","https://image.delishkitchen.tv/recipe/233971595058610622/1.webp?version=1658215376&w=600",500,"鶏モモ肉,卵",0,3);
INSERT INTO recipis (recipe_name,description,url,place,ingredients,tag,evaluation) VALUES ("niku","食ってみな飛ぶぞ","https://image.delishkitchen.tv/recipe/233971595058610622/1.webp?version=1658215376&w=600",500,"鶏モモ肉,卵",0,3);
INSERT INTO recipis (recipe_name,description,url,place,ingredients,tag,evaluation) VALUES ("niku","食ってみな飛ぶぞ","https://image.delishkitchen.tv/recipe/233971595058610622/1.webp?version=1658215376&w=600",500,"鶏モモ肉,卵",0,3);
INSERT INTO recipis (recipe_name,description,url,place,ingredients,tag,evaluation) VALUES ("niku","食ってみな飛ぶぞ","https://image.delishkitchen.tv/recipe/201390441034155089/1.webp?version=1639021741&w=600",500,"鶏モモ肉,卵",0,3);
INSERT INTO recipis (recipe_name,description,url,place,ingredients,tag,evaluation) VALUES ("niku","食ってみな飛ぶぞ","https://image.delishkitchen.tv/recipe/233971595058610622/1.webp?version=1658215376&w=600",500,"鶏モモ肉,卵",0,3);
INSERT INTO recipis (recipe_name,description,url,place,ingredients,tag,evaluation) VALUES ("niku","食ってみな飛ぶぞ","https://image.delishkitchen.tv/recipe/201390441034155089/1.webp?version=1639021741&w=600",500,"鶏モモ肉,卵",0,3);
INSERT INTO recipis (recipe_name,description,url,place,ingredients,tag,evaluation) VALUES ("niku","食ってみな飛ぶぞ","https://image.delishkitchen.tv/recipe/233971595058610622/1.webp?version=1658215376&w=600",500,"鶏モモ肉,卵",0,3);

INSERT INTO recipis (recipe_name,description,url,place,ingredients,tag,evaluation) VALUES ("niku","食ってみな飛ぶぞ","https://image.delishkitchen.tv/recipe/233971595058610622/1.webp?version=1658215376&w=600",500,"鶏モモ肉,卵",0,3);
INSERT INTO recipis (recipe_name,description,url,place,ingredients,tag,evaluation) VALUES ("niku","食ってみな飛ぶぞ","https://image.delishkitchen.tv/recipe/233971595058610622/1.webp?version=1658215376&w=600",500,"鶏モモ肉,卵",0,3);
INSERT INTO recipis (recipe_name,description,url,place,ingredients,tag,evaluation) VALUES ("niku","食ってみな飛ぶぞ","https://image.delishkitchen.tv/recipe/233971595058610622/1.webp?version=1658215376&w=600",500,"鶏モモ肉,卵",0,3);
INSERT INTO recipis (recipe_name,description,url,place,ingredients,tag,evaluation) VALUES ("niku","食ってみな飛ぶぞ","https://image.delishkitchen.tv/recipe/233971595058610622/1.webp?version=1658215376&w=600",500,"鶏モモ肉,卵",0,3);
INSERT INTO recipis (recipe_name,description,url,place,ingredients,tag,evaluation) VALUES ("niku","食ってみな飛ぶぞ","https://image.delishkitchen.tv/recipe/233971595058610622/1.webp?version=1658215376&w=600",500,"鶏モモ肉,卵",0,3);
INSERT INTO recipis (recipe_name,description,url,place,ingredients,tag,evaluation) VALUES ("niku","食ってみな飛ぶぞ","https://image.delishkitchen.tv/recipe/233971595058610622/1.webp?version=1658215376&w=600",500,"鶏モモ肉,卵",0,3);
INSERT INTO recipis (recipe_name,description,url,place,ingredients,tag,evaluation) VALUES ("niku","食ってみな飛ぶぞ","https://image.delishkitchen.tv/recipe/233971595058610622/1.webp?version=1658215376&w=600",500,"鶏モモ肉,卵",0,3);
INSERT INTO recipis (recipe_name,description,url,place,ingredients,tag,evaluation) VALUES ("niku","食ってみな飛ぶぞ","https://image.delishkitchen.tv/recipe/233971595058610622/1.webp?version=1658215376&w=600",500,"鶏モモ肉,卵",0,3);
INSERT INTO recipis (recipe_name,description,url,place,ingredients,tag,evaluation) VALUES ("niku","食ってみな飛ぶぞ","https://image.delishkitchen.tv/recipe/233971595058610622/1.webp?version=1658215376&w=600",500,"鶏モモ肉,卵",0,3);
INSERT INTO recipis (recipe_name,description,url,place,ingredients,tag,evaluation) VALUES ("niku","食ってみな飛ぶぞ","https://image.delishkitchen.tv/recipe/233971595058610622/1.webp?version=1658215376&w=600",500,"鶏モモ肉,卵",0,3);
