-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Pon 03. čen 2024, 10:09
-- Verze serveru: 10.4.28-MariaDB
-- Verze PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `eshop`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add Kategorie', 7, 'add_category'),
(26, 'Can change Kategorie', 7, 'change_category'),
(27, 'Can delete Kategorie', 7, 'delete_category'),
(28, 'Can view Kategorie', 7, 'view_category'),
(29, 'Can add Zákazník', 8, 'add_customer'),
(30, 'Can change Zákazník', 8, 'change_customer'),
(31, 'Can delete Zákazník', 8, 'delete_customer'),
(32, 'Can view Zákazník', 8, 'view_customer'),
(33, 'Can add Produkt', 9, 'add_products'),
(34, 'Can change Produkt', 9, 'change_products'),
(35, 'Can delete Produkt', 9, 'delete_products'),
(36, 'Can view Produkt', 9, 'view_products'),
(37, 'Can add Objednávka', 10, 'add_order'),
(38, 'Can change Objednávka', 10, 'change_order'),
(39, 'Can delete Objednávka', 10, 'delete_order'),
(40, 'Can view Objednávka', 10, 'view_order'),
(41, 'Can add Recenze', 11, 'add_review'),
(42, 'Can change Recenze', 11, 'change_review'),
(43, 'Can delete Recenze', 11, 'delete_review'),
(44, 'Can view Recenze', 11, 'view_review'),
(45, 'Can add Blogy', 12, 'add_post'),
(46, 'Can change Blogy', 12, 'change_post'),
(47, 'Can delete Blogy', 12, 'delete_post'),
(48, 'Can view Blogy', 12, 'view_post');

-- --------------------------------------------------------

--
-- Struktura tabulky `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$p33lbJYPBmyfU8g6aroy6S$9HKd4oDsHb8ZZ1E44HezM5kgSh753Ivoy4fE0nV44G4=', NULL, 1, 'camabar646@mfyax.com', '', '', 'camabar646@mfyax.com', 1, 1, '2024-05-16 11:10:16.000000'),
(2, 'pbkdf2_sha256$600000$wb4n8srG2T3Xrd6dxJwv1w$WsTiHmUhBHHnzVii8GQm6+BYDAXfrzUyD5+2J5WAX34=', '2024-05-16 11:16:11.702115', 1, 'bohdan.macek', '', '', '', 1, 1, '2024-05-16 11:12:11.079173'),
(3, 'pbkdf2_sha256$600000$aYh7jhJ3EEY1DBagNnM5qM$0+P/V3dn20CeTuhusHReJeE8gnv00aMC5oiY+CBXDPU=', '2024-06-03 07:37:51.296819', 1, 'bohdan.macek@office365.spspzlin.cz', '', '', 'bohdan.macek@office365.spspzlin.cz', 1, 1, '2024-05-16 11:15:44.000000'),
(4, 'pbkdf2_sha256$600000$HA15xKIl9gJ42FGJzAmL48$KSj2FTYJDnE9Uo1HgXKpQg9f1kSXDZXIgGLcZ2x+fr4=', NULL, 0, 'zoltumerza@gufum.com', '', '', 'zoltumerza@gufum.com', 0, 1, '2024-05-16 11:18:35.722089');

-- --------------------------------------------------------

--
-- Struktura tabulky `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-05-16 11:13:18.101165', '1', 'camabar646@mfyax.com', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Superuser status\"]}}]', 4, 2),
(2, '2024-05-16 11:16:25.212023', '3', 'bohdan.macek@office365.spspzlin.cz', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Superuser status\"]}}]', 4, 2),
(3, '2024-05-16 11:20:27.013250', '1', 'Medy', 1, '[{\"added\": {}}]', 7, 3),
(4, '2024-05-16 11:24:34.315705', '1', 'Lesní med', 1, '[{\"added\": {}}]', 9, 3),
(5, '2024-05-16 11:25:01.611812', '2', 'Med klasik', 1, '[{\"added\": {}}]', 9, 3),
(6, '2024-05-16 11:35:17.063540', '3', 'Sada medů', 1, '[{\"added\": {}}]', 9, 3),
(7, '2024-05-16 11:35:35.442661', '4', 'Pastovaný med', 1, '[{\"added\": {}}]', 9, 3),
(8, '2024-05-16 11:35:51.709298', '5', 'Květový med', 1, '[{\"added\": {}}]', 9, 3),
(9, '2024-05-16 11:36:14.934381', '6', 'Sada medů 2', 1, '[{\"added\": {}}]', 9, 3),
(10, '2024-05-16 11:37:30.230351', '6', 'Vřesový med', 2, '[{\"changed\": {\"fields\": [\"N\\u00e1zev\", \"Cena\"]}}]', 9, 3),
(11, '2024-05-16 11:37:55.089862', '7', 'Med 1kg', 1, '[{\"added\": {}}]', 9, 3),
(12, '2024-05-16 11:39:04.186651', '7', 'Sada medů - speciál', 2, '[{\"changed\": {\"fields\": [\"N\\u00e1zev\", \"Cena\"]}}]', 9, 3),
(13, '2024-05-16 11:40:00.645159', '8', 'Med 1kg', 1, '[{\"added\": {}}]', 9, 3),
(14, '2024-05-16 11:44:24.968964', '2', 'Ostatní', 1, '[{\"added\": {}}]', 7, 3),
(15, '2024-05-16 11:44:27.110077', '9', 'Mateří kašička', 1, '[{\"added\": {}}]', 9, 3),
(16, '2024-05-16 11:45:01.911500', '10', 'Mast - včelí med', 1, '[{\"added\": {}}]', 9, 3),
(17, '2024-05-16 11:45:26.768968', '11', 'Propolis - láhev', 1, '[{\"added\": {}}]', 9, 3),
(18, '2024-05-16 11:50:28.216207', '12', 'Med s jahodama', 1, '[{\"added\": {}}]', 9, 3),
(19, '2024-05-16 11:51:23.348945', '8', 'Med 2kg', 2, '[{\"changed\": {\"fields\": [\"N\\u00e1zev\"]}}]', 9, 3),
(20, '2024-05-16 11:52:52.138841', '13', 'fsdfs', 1, '[{\"added\": {}}]', 9, 3),
(21, '2024-05-16 11:53:28.826457', '13', 'fsdfs', 3, '', 9, 3),
(22, '2024-05-16 11:59:29.312844', '1', 'Blog č.1 - Vítejte na novém webu....', 1, '[{\"added\": {}}]', 12, 3);

-- --------------------------------------------------------

--
-- Struktura tabulky `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'store', 'category'),
(8, 'store', 'customer'),
(10, 'store', 'order'),
(12, 'store', 'post'),
(9, 'store', 'products'),
(11, 'store', 'review');

-- --------------------------------------------------------

--
-- Struktura tabulky `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-05-16 11:02:47.673952'),
(2, 'auth', '0001_initial', '2024-05-16 11:02:47.988499'),
(3, 'admin', '0001_initial', '2024-05-16 11:02:48.061099'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-05-16 11:02:48.067509'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-05-16 11:02:48.071511'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-05-16 11:02:48.108372'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-05-16 11:02:48.143030'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-05-16 11:02:48.152328'),
(9, 'auth', '0004_alter_user_username_opts', '2024-05-16 11:02:48.158320'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-05-16 11:02:48.237372'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-05-16 11:02:48.239372'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-05-16 11:02:48.245374'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-05-16 11:02:48.253496'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-05-16 11:02:48.263498'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-05-16 11:02:48.274594'),
(16, 'auth', '0011_update_proxy_permissions', '2024-05-16 11:02:48.281314'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-05-16 11:02:48.291313'),
(18, 'sessions', '0001_initial', '2024-05-16 11:02:48.314405'),
(19, 'store', '0001_initial', '2024-05-16 11:02:48.457774'),
(20, 'store', '0002_auto_20210423_1934', '2024-05-16 11:02:48.484680'),
(21, 'store', '0003_order_address', '2024-05-16 11:02:48.496398'),
(22, 'store', '0004_order_phone', '2024-05-16 11:02:48.509084'),
(23, 'store', '0005_order_date', '2024-05-16 11:02:48.520723'),
(24, 'store', '0006_order_status', '2024-05-16 11:02:48.530579'),
(25, 'store', '0007_review', '2024-05-16 11:02:48.606152'),
(26, 'store', '0008_remove_review_user_review_customer', '2024-05-16 11:02:48.764181'),
(27, 'store', '0009_alter_category_options_alter_customer_options_and_more', '2024-05-16 11:02:48.807179'),
(28, 'store', '0010_alter_review_options', '2024-05-16 11:02:48.811205'),
(29, 'store', '0011_alter_review_options', '2024-05-16 11:02:48.817203'),
(30, 'store', '0012_alter_category_options_alter_customer_options_and_more', '2024-05-16 11:02:48.861214'),
(31, 'store', '0013_alter_category_options_alter_customer_options_and_more', '2024-05-16 11:02:49.755401'),
(32, 'store', '0014_post', '2024-05-16 11:02:49.768380'),
(33, 'store', '0015_post_field_color_post_text_size_alter_post_image', '2024-05-16 11:02:49.787875'),
(34, 'store', '0014_news', '2024-05-16 11:02:49.798933'),
(35, 'store', '0016_merge_20240516_1253', '2024-05-16 11:02:49.801935'),
(36, 'store', '0017_delete_news_alter_post_options_and_more', '2024-05-16 11:02:49.827928');

-- --------------------------------------------------------

--
-- Struktura tabulky `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3euyehl20r7y1afelp9sn829an874b7k', '.eJxVjEsOhCAQBe_CekKQVgGXs58zmG5oxvlJArgy3n00ceP2Vb1ahcdcxbBuNzHiUqdxKZzHVxCDAHHZCP2H5wOEN87PJH2aa36RPBR50iIfKfD3frqXwIRl2t9KGReQIFKrFFsDVhM5dp03rm9s32tABZo612lUPlKIsdEEpEwD3No96pdS04-zGPT2BzCrPwI:1s7Zlq:Z7iQzB7fGhajTbnT4Z6EOFdJ3suogIntVwCXkAvKAbE', '2024-05-30 11:59:38.521926'),
('hzlzqfyok3ftystuxxevn21uviu4krn8', '.eJxVjEsOhCAQBe_Sa0MQVMDl7OcMphuacX6SAK6Md58xceP2VdXbwGOuMG57A34tNX05w6gamHCt87QWztMzwAgaLhuhf_NygPDC5ZGET0vNTxKHIk5axD0F_txO93IwY5n_tZTGBSQdqZOSrdFWETl2vTduaO0wKI1SK-pdr1D6SCHGVpEmaVrNnYX9B0aYPwI:1sE2Ym:4z1t2dvFDzQcoxa30xkhVZCWdEgNKkPnJxaw0sOUZq4', '2024-06-17 07:56:52.409553');

-- --------------------------------------------------------

--
-- Struktura tabulky `store_category`
--

CREATE TABLE `store_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `store_category`
--

INSERT INTO `store_category` (`id`, `name`) VALUES
(1, 'Medy'),
(2, 'Ostatní');

-- --------------------------------------------------------

--
-- Struktura tabulky `store_customer`
--

CREATE TABLE `store_customer` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `store_customer`
--

INSERT INTO `store_customer` (`id`, `first_name`, `last_name`, `phone`, `email`, `password`, `user_id`) VALUES
(1, 'John', 'Doe', '1234567891', 'camabar646@mfyax.com', 'pbkdf2_sha256$600000$5BjwShQe2BLPm5j4tDKgBa$Vbw7ao1yrWqh/z45RD5zsHDBbjhdMGzo009PmGyFmmo=', 1),
(2, 'Bohdan', 'Maček', '1234567891', 'bohdan.macek@office365.spspzlin.cz', 'pbkdf2_sha256$600000$2RKiG5V1ijbdDYwOEPs8Ml$Xv69vXfMsLVihf3Jld4Z02SDe4GtfXMe4oFupkNdDnQ=', 3),
(3, 'Miroslav', 'Paroubek', '+420123456', 'zoltumerza@gufum.com', 'pbkdf2_sha256$600000$fWhwIUSaoakKRWBsjioJhO$rmCSfhK2QAS4IM8czwh0MsL356AJuN9XZEVe/0n2m/o=', 4);

-- --------------------------------------------------------

--
-- Struktura tabulky `store_order`
--

CREATE TABLE `store_order` (
  `id` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `store_order`
--

INSERT INTO `store_order` (`id`, `quantity`, `price`, `customer_id`, `product_id`, `address`, `phone`, `date`, `status`) VALUES
(1, 2, 300, 2, 1, 'Zlín 185', '1234567891', '2024-05-16', 0),
(2, 3, 250, 2, 2, 'Zlín 185', '1234567891', '2024-05-16', 0),
(3, 1, 500, 2, 9, 'Zlín 185', '1234567891', '2024-05-16', 0),
(4, 1, 150, 2, 11, 'Zlín 185', '1234567891', '2024-05-16', 0);

-- --------------------------------------------------------

--
-- Struktura tabulky `store_post`
--

CREATE TABLE `store_post` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `store_post`
--

INSERT INTO `store_post` (`id`, `title`, `content`, `image`, `created_at`) VALUES
(1, 'Vítejte na novém webu....', 'asdfajdjnfb kasdhnjkasdhfkasdhfksadfjkasbfkjbsadf klasfaskj dfb kasdfhbabs dfahfkjuashfiadikfn kasjdn fkjlasd fkjas hdkjfhalksf', 'uploads/blog/IMG_0935__19740.jpg', '2024-05-16 11:59:29.311842');

-- --------------------------------------------------------

--
-- Struktura tabulky `store_products`
--

CREATE TABLE `store_products` (
  `id` bigint(20) NOT NULL,
  `name` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `store_products`
--

INSERT INTO `store_products` (`id`, `name`, `price`, `description`, `image`, `category_id`) VALUES
(1, 'Lesní med', 300, 'Nějaký popis lorem ipsum', 'uploads/products/lesni_med.webp', 1),
(2, 'Med klasik', 250, 'sfghsfghsfghsfghsfghaargager', 'uploads/products/med1.jpeg', 1),
(3, 'Sada medů', 800, 'sfghsfghsfghsfghsfghaargager', 'uploads/products/med_sada.jpg', 1),
(4, 'Pastovaný med', 400, 'sfghsfghsfghsfghsfghaargager', 'uploads/products/pastovany_med.webp', 1),
(5, 'Květový med', 250, 'sfghsfghsfghsfghsfghaargager', 'uploads/products/Květovy_med.jpg', 1),
(6, 'Vřesový med', 200, 'sfghsfghsfghsfghsfghaargager', 'uploads/products/1055_vresovy-med-upravena.webp', 1),
(7, 'Sada medů - speciál', 2000, 'sfghsfghsfghsfghsfghaargager', 'uploads/products/prodej-medu-velky-drevic.jpg', 1),
(8, 'Med 2kg', 500, 'sfghsfghsfghsfghsfghaargager', 'uploads/products/39_med-kvetovy.webp', 1),
(9, 'Mateří kašička', 500, 'sfghsfghsfghsfghsfghaargager', 'uploads/products/Materi_kasicka_lYFWttQ.jpg', 2),
(10, 'Mast - včelí med', 100, 'sfghsfghsfghsfghsfghaargager', 'uploads/products/vceli-jed-masazni-gel-600-ml.jpg', 2),
(11, 'Propolis - láhev', 150, 'sfghsfghsfghsfghsfghaargager', 'uploads/products/propolis_lahev.jpg', 2),
(12, 'Med s jahodama', 500, 'sdfgsdfsdfsdf', 'uploads/products/95643230_227107215398005_3668388432880599040_n_23111557105471_web.jpg', 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `store_review`
--

CREATE TABLE `store_review` (
  `id` bigint(20) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` longtext NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Vypisuji data pro tabulku `store_review`
--

INSERT INTO `store_review` (`id`, `rating`, `comment`, `product_id`, `customer_id`) VALUES
(1, 3, 'dvsxdvdsvs', 4, 2),
(2, 3, '1251', 1, 2);

--
-- Indexy pro exportované tabulky
--

--
-- Indexy pro tabulku `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexy pro tabulku `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexy pro tabulku `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexy pro tabulku `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexy pro tabulku `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexy pro tabulku `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexy pro tabulku `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexy pro tabulku `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexy pro tabulku `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexy pro tabulku `store_category`
--
ALTER TABLE `store_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `store_customer`
--
ALTER TABLE `store_customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexy pro tabulku `store_order`
--
ALTER TABLE `store_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_order_customer_id_13d6d43e_fk` (`customer_id`),
  ADD KEY `store_order_product_id_11796f0f_fk` (`product_id`);

--
-- Indexy pro tabulku `store_post`
--
ALTER TABLE `store_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `store_products`
--
ALTER TABLE `store_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_products_category_id_48867233_fk` (`category_id`);

--
-- Indexy pro tabulku `store_review`
--
ALTER TABLE `store_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_review_customer_id_8a20ccc2_fk` (`customer_id`),
  ADD KEY `store_review_product_id_abc413b2_fk` (`product_id`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT pro tabulku `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pro tabulku `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pro tabulku `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pro tabulku `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pro tabulku `store_category`
--
ALTER TABLE `store_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pro tabulku `store_customer`
--
ALTER TABLE `store_customer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pro tabulku `store_order`
--
ALTER TABLE `store_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pro tabulku `store_post`
--
ALTER TABLE `store_post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pro tabulku `store_products`
--
ALTER TABLE `store_products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pro tabulku `store_review`
--
ALTER TABLE `store_review`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Omezení pro exportované tabulky
--

--
-- Omezení pro tabulku `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Omezení pro tabulku `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Omezení pro tabulku `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Omezení pro tabulku `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Omezení pro tabulku `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Omezení pro tabulku `store_customer`
--
ALTER TABLE `store_customer`
  ADD CONSTRAINT `store_customer_user_id_04276401_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Omezení pro tabulku `store_order`
--
ALTER TABLE `store_order`
  ADD CONSTRAINT `store_order_customer_id_13d6d43e_fk` FOREIGN KEY (`customer_id`) REFERENCES `store_customer` (`id`),
  ADD CONSTRAINT `store_order_product_id_11796f0f_fk` FOREIGN KEY (`product_id`) REFERENCES `store_products` (`id`);

--
-- Omezení pro tabulku `store_products`
--
ALTER TABLE `store_products`
  ADD CONSTRAINT `store_products_category_id_48867233_fk` FOREIGN KEY (`category_id`) REFERENCES `store_category` (`id`);

--
-- Omezení pro tabulku `store_review`
--
ALTER TABLE `store_review`
  ADD CONSTRAINT `store_review_customer_id_8a20ccc2_fk` FOREIGN KEY (`customer_id`) REFERENCES `store_customer` (`id`),
  ADD CONSTRAINT `store_review_product_id_abc413b2_fk` FOREIGN KEY (`product_id`) REFERENCES `store_products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
