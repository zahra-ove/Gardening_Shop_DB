-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2022 at 11:45 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lara_react_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Outdoor Plants', '2022-03-01 15:57:01', NULL),
(2, 'Indoor Plants', '2022-03-23 14:57:05', NULL),
(3, 'Evergreen Plants', '2022-03-30 14:57:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(11, '2022_03_18_123451_create_categories_table', 1),
(12, '2022_03_18_123544_create_products_table', 1),
(13, '2022_03_18_155859_create_produts_table', 2),
(14, '2022_03_18_160337_create_products_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `additional_info`, `sku`, `category_id`, `price`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Jennie Murray PhD', 'Nulla et laborum vel dolores saepe laborum voluptatum. Ipsum ab rerum sequi commodi.', 'Est rem laborum libero dolorem maxime aliquam et. Omnis quis blanditiis et. Facilis sit velit veniam molestiae sit porro corrupti. Qui pariatur velit ipsa quia ab quam aperiam eos. Recusandae aut deserunt quos. Voluptas dolor explicabo et aut rem eos ea soluta. Ipsa soluta aut dolore. Dolores quasi ipsum officia.', 'U7Klila38rDND', 3, '389.00', '1.png', '2021-08-29 06:29:53', '2021-04-06 18:11:33'),
(2, 'Dr. Christy Casper', 'Id est laboriosam quidem iste. Qui rerum non dolorum. Atque eaque et rerum aut aut consectetur.', 'Maiores aperiam molestias beatae beatae quidem ea sint pariatur. Autem voluptatem et et nulla et molestiae. Incidunt eligendi est dignissimos dolore totam. Placeat ea sint voluptas dolor facilis in. Dolorem inventore vel temporibus ratione. Ipsa exercitationem id facilis laborum. Qui quaerat aliquid voluptatem repellat suscipit. Temporibus rerum nisi nulla non. Autem nemo est voluptas aliquid vero odit veniam. Aut eaque distinctio porro rem sapiente et animi. Eos sunt enim assumenda.', 'xF5b13CK6Cm77', 2, '479.00', '2.png', '2021-09-28 09:15:16', '2021-07-19 19:55:05'),
(3, 'Dr. Haskell Gerlach', 'Non iure atque voluptatem alias ea velit. Hic rem ratione quisquam omnis omnis.', 'Voluptatem quod architecto sit laborum iure praesentium ut itaque. Est consequuntur veniam enim fuga expedita. Impedit recusandae asperiores voluptas error aut et. Id placeat et architecto. Incidunt culpa similique aperiam excepturi voluptatem. Voluptas architecto ullam distinctio eius. Voluptatem quos veniam et numquam perferendis voluptatem. Sequi labore sit doloremque ipsam aut vel rerum ullam. Fugit voluptatum et enim. Architecto quidem quo assumenda libero qui.', 'LjV2alEBP6B0A', 3, '460.00', '3.png', '2020-10-09 05:29:59', '2021-10-26 13:55:43'),
(4, 'Brigitte Anderson', 'Nesciunt deserunt nam pariatur velit ipsa. Voluptatibus corporis aperiam unde dolores.', 'Officia modi quis excepturi non et atque quasi. Iusto incidunt enim consequatur quod rerum praesentium nulla est. Itaque molestiae quia cum quasi aut. Reprehenderit ut quia ut. Voluptatum et enim et. Distinctio neque ad ab et. Expedita adipisci dolorum ut porro reprehenderit perspiciatis dicta. Quas perferendis et rerum sed. Voluptatem eum et blanditiis quibusdam sapiente.', 'EwvdzJHz8vxDU', 3, '940.00', '4.png', '2022-01-17 17:41:54', '2021-04-02 21:37:56'),
(5, 'Kareem Welch', 'Eaque velit et pariatur at est. Ut facilis accusamus amet et itaque. Earum a et perspiciatis.', 'Rerum ut sed doloribus iure rerum. Quos quasi est facilis magni omnis dicta ut laborum. Ducimus doloremque nesciunt doloremque enim. Vitae nesciunt facere autem. Et optio impedit sint neque qui recusandae sequi. Non ut sed est dolorum. In eaque non nam error et perspiciatis. Voluptatem corporis et unde ratione facere eligendi. Eos et nesciunt et.', 'OFZUaRmcfTbIe', 1, '256.00', '5.png', '2021-04-25 01:17:55', '2021-06-04 05:45:27'),
(6, 'Prof. Darwin Smitham', 'Perspiciatis error repellat error. Consequatur autem et sed omnis dolorum.', 'Sequi molestiae incidunt aut magnam id. Mollitia ratione eius odit ullam perferendis cupiditate eligendi. Ipsam quam aliquam adipisci vel nihil rerum sit. Maxime adipisci non rem nesciunt cumque in ipsum. Reiciendis molestiae eius dolorem tempora itaque dolores quas est. Quod placeat molestiae dolores labore.', 'pttjoJs0ssNiI', 3, '675.00', '6.png', '2020-12-02 18:46:30', '2021-12-02 03:46:03'),
(7, 'Kamille Koch', 'Commodi ut ex possimus quia rerum dolor. Unde ut illo laboriosam.', 'Laudantium quis quam fugit eum quia et perferendis. Nostrum voluptatum voluptatibus expedita expedita est. Id placeat excepturi voluptatum animi consequatur est. Iusto quisquam dolorum qui quidem. Laborum adipisci est harum illo. Qui quidem voluptates architecto voluptates dignissimos. Ipsam ad expedita quo illum beatae aut nemo. Autem est veritatis earum consequatur. Expedita alias fugiat sed iusto labore.', 'UFWh8Trv1E5UJ', 2, '366.00', '7.png', '2021-09-18 12:15:47', '2021-08-02 05:25:21'),
(8, 'Keeley Kirlin DVM', 'Optio nulla qui corrupti doloribus et. Eum quo delectus magni. Dolores soluta qui aut porro nihil.', 'Inventore omnis ut porro voluptas dicta voluptates. Eos sed ea amet aut. Nostrum et iste aliquam. Est doloremque labore odio nihil nesciunt. Ut aut et accusamus alias cupiditate. Dolores ut voluptates soluta porro doloremque autem. In labore quae ipsum suscipit illo ut. Et cupiditate saepe odit quod ut sed. Voluptatum voluptas quam ut ipsam dignissimos cumque alias.', 'vZ1NTUyw2zNXX', 3, '359.00', '8.png', '2021-12-19 15:21:24', '2021-09-28 07:47:13'),
(9, 'Dr. Esmeralda Armstrong', 'Non cumque alias eos quas repellat. Tempore sed labore rerum voluptatem et.', 'Inventore veniam tempore officiis et atque nihil. Quidem numquam ut atque qui. Qui alias exercitationem cumque asperiores maxime. Suscipit qui beatae odio excepturi. Autem sequi et earum officia ut blanditiis. Fugit rerum est eius recusandae occaecati corrupti id. Ut eos laudantium eum excepturi vel repudiandae. A dolorem placeat sequi et at est adipisci. Eum quibusdam tempore quasi. Ex modi aliquid quo iusto deleniti. Qui quia et porro assumenda possimus.', 'ItSxOUJxlewi4', 2, '856.00', '9.png', '2021-01-16 06:38:57', '2021-10-23 08:32:38'),
(10, 'Myron Ebert', 'Error et dolor ex temporibus et error. Cum ut autem ut.', 'Architecto nisi et voluptatem natus ipsum eum quasi. Eius atque quaerat autem neque dolorem aut. Aut ipsam magni in et. Aliquam ipsa repellendus at minima. Nemo eum et earum quisquam. Iure aspernatur placeat est. Sed consequatur enim et est. Ducimus libero quas architecto. Iure et qui enim. Quis debitis amet vel et adipisci mollitia atque architecto. Aut quasi occaecati est labore et. Ipsum at qui rerum consequuntur inventore asperiores et.', 'gDvVvRlSceXnj', 3, '77.00', '10.png', '2022-01-09 07:17:33', '2021-04-09 13:42:31'),
(11, 'Donnell Buckridge', 'Et enim et sed sed labore doloribus. Dolorem qui neque et.', 'Aut quidem qui provident sit iure. Aut in quisquam nisi natus. Eaque voluptatibus cupiditate eveniet voluptatibus deleniti nihil vitae voluptas. Distinctio laudantium fugiat voluptatem quisquam. Voluptate sit a rerum perspiciatis odit. Commodi sequi dolorem fuga qui quidem magnam ut dolorem. Officia blanditiis ea eius voluptatem rerum velit quia ut. Numquam ipsum neque aut molestias pariatur et doloremque. Quaerat quia fugiat qui ipsum tempore.', '3TODyh7eyy88m', 3, '968.00', '11.png', '2021-10-28 15:26:33', '2022-01-07 14:11:36'),
(12, 'Victor Stark IV', 'Aliquam iusto non et. Eos mollitia expedita dolor optio voluptas aliquam.', 'Quod in saepe et quam voluptate et quos voluptatibus. Velit reiciendis dolorum facilis aut in sequi aliquid. Ut eaque velit consectetur delectus. Laudantium reprehenderit sed reiciendis cupiditate rerum atque. Officia omnis consequatur architecto voluptatibus consequatur. Nisi enim quod ut quaerat unde voluptates. Accusamus sint vel est eligendi autem facere. Ut cumque est sint animi.', 'q2Xz1zYCxxGei', 1, '892.00', '12.png', '2021-02-18 22:36:41', '2022-01-12 00:52:41'),
(13, 'Jamir Gibson', 'Quos id distinctio quisquam voluptas ex. Autem dicta nobis quaerat accusamus enim.', 'Animi corporis a maiores nihil et exercitationem. Nulla consectetur voluptatem dolor. Velit iure natus incidunt iste illum et. Vel dolores non qui sed fuga. Doloribus dolorem exercitationem sint corporis perspiciatis in. Qui ipsam in itaque ratione id ut. Voluptas perspiciatis quidem soluta. At aut odio voluptatem reiciendis adipisci et et soluta. Omnis qui ad quo. Eligendi rem id nihil adipisci iste eos.', '2acxCtoLJy2ZF', 1, '332.00', '13.png', '2021-10-03 15:06:17', '2021-10-11 20:58:54'),
(14, 'Ms. Kiara Waters PhD', 'Quis voluptas perspiciatis et et harum laboriosam. Et perspiciatis asperiores voluptatem mollitia.', 'Nemo placeat harum dolores aspernatur modi est modi dolor. Culpa deleniti est sequi et laboriosam. Est maiores repellendus et quaerat ut perferendis non. Quia aliquam et aut in dolorum omnis voluptate. Consequuntur aut vitae consequatur quia non repellat. Eum rerum consectetur consequatur reiciendis est qui officia. Ex ea sed odio est sunt. Dicta eius qui placeat quia ipsa rem praesentium. Eaque ad qui ut rerum aspernatur sit. Doloremque sit facilis autem minima ratione eveniet neque eos.', 'RYlwIo1ZcAu9H', 3, '862.00', '14.png', '2020-12-04 00:00:39', '2020-12-23 00:56:51'),
(15, 'Prof. Kelley Pacocha MD', 'Nisi voluptatibus in voluptatem veritatis. Temporibus et similique eligendi debitis eveniet.', 'Minus dicta occaecati voluptates distinctio quia fugiat non. Sed aut cum amet ut dolores et dolores quas. Enim excepturi labore dolorem sint. Dignissimos eos ullam nesciunt et debitis porro. Ad facilis mollitia voluptatem dolores sint assumenda. Labore dicta et consequuntur. Omnis velit optio est odio officia. Temporibus maiores vel odit pariatur et eum aperiam. Error in ut placeat illum. Dolor eum impedit ut sed nemo et. Assumenda et dolore cumque deleniti est accusamus.', 'pJN8Rznv0zjeU', 1, '82.00', '15.png', '2021-07-07 20:30:56', '2021-11-18 18:05:13'),
(16, 'Gerda Weber', 'Blanditiis hic quibusdam architecto voluptas. Eligendi iste impedit sed rerum.', 'Fugiat et provident est expedita. Quibusdam optio aut labore quas unde corporis. Facilis saepe quia temporibus officiis repellendus eum. Atque nostrum enim error. Quo id quos dicta. Qui doloremque itaque illum dolores quae. Modi tempora sint minus iusto qui quos expedita. Possimus ut laboriosam corporis. Ut voluptatem aliquid odit commodi autem et possimus corporis. Placeat qui veritatis eaque odio. Fugit beatae cumque magni. Quisquam recusandae corporis dolor eos alias.', 'qSI8s1sMb1TMs', 2, '409.00', '16.png', '2021-09-16 09:10:30', '2021-09-08 03:54:22'),
(17, 'Mrs. Whitney Hodkiewicz', 'Officia neque cumque similique. Eos eius aut eos possimus. Minus qui molestiae et.', 'Labore doloribus laborum natus quia aperiam quia. Ab debitis quidem et animi aliquam. Quis quod sunt illo quo. Minima ab vitae suscipit est et. Optio deserunt quas totam. Animi aut vitae labore nemo id. Eius molestiae et adipisci exercitationem sit sit. Alias deserunt tempore quo et. Atque quaerat minus repellat aut. Dolor et pariatur quis. Perferendis maxime numquam ut aut aut et et.', 'rqmRia0pyEfbY', 3, '838.00', '17.png', '2021-10-23 20:52:53', '2021-05-02 02:36:44'),
(18, 'Pablo Kerluke', 'Nobis eius delectus cumque ea sed adipisci. Ea nisi ut consequuntur dolor qui. Dolores eum et est.', 'Et officia ab nisi debitis. Quas dolor deleniti id ut. Eaque animi corrupti consequatur repellat. Dolorem porro sunt eveniet ex. Perferendis qui dolorum officia qui molestiae cum deserunt. Laborum est accusantium animi iste deleniti in. Molestiae rerum dolor dolorem nulla expedita quas. Et animi voluptatem harum deserunt ut quaerat quae. Quis odio quisquam aut itaque et. Ipsa sapiente rem dignissimos ut ad saepe voluptas ipsum.', 'j5PqN3asNjvkv', 1, '70.00', '18.png', '2021-01-28 13:35:51', '2021-09-25 21:12:32'),
(19, 'Victor Blick', 'Illum et quo qui dignissimos. Et omnis vero officia quibusdam modi. Incidunt ea autem nulla ut et.', 'Dolorum eveniet maxime odit. Cumque quia dolorem ab autem nobis laboriosam illum. Labore qui dignissimos laborum aliquid. Id magnam magni libero sapiente. Maxime sed in a ut laudantium. At vel est magnam ipsam. Aliquam explicabo expedita delectus. Qui dolorem pariatur qui. Repudiandae quis voluptatem iure est. Sit vel nobis doloremque molestiae. Veritatis quis autem non dolor rerum. Rerum dolores adipisci ullam dolores. Reiciendis omnis consectetur itaque sapiente.', 'nsQ2zaPcGzaSY', 2, '653.00', '19.png', '2021-07-19 07:00:35', '2020-10-27 10:51:02'),
(20, 'Marco McLaughlin', 'Et quis alias voluptatum tenetur enim. Eum odit ea rem unde delectus. Non sint sed sit ipsa.', 'Et enim asperiores ut magnam. Fugit est rerum doloremque harum voluptas. Dolore nulla fuga nihil voluptatibus. Aut sint dolores repellendus dolore quam incidunt rerum accusantium. Quia ut veniam eos ullam velit. Minus error sit ut porro voluptatem. Similique libero autem deleniti sunt et a non. Tenetur quas minima sed voluptatem molestiae sed est. Quas officia dolorum quis omnis et et aut temporibus.', 'qUnzdXRjOBPR5', 1, '91.00', '20.png', '2021-01-21 17:54:18', '2022-01-12 03:55:23'),
(21, 'Ezra Macejkovic', 'Est et dolor qui velit enim ipsum autem ut. Distinctio eius odit alias sed.', 'Et nulla in repellendus soluta rerum nihil. Sit accusantium sunt voluptate totam eos incidunt. Sed numquam dicta veritatis voluptatem et nostrum. Excepturi qui enim neque sed omnis. Ab molestiae at vel ut quia. Voluptatum consequatur sed dolor excepturi at fuga quaerat. Sed voluptatem corrupti placeat. Dolores reprehenderit sed culpa magni.', 'a6GB9l6caZWIP', 3, '393.00', '21.png', '2021-07-13 23:09:04', '2021-11-27 10:53:29'),
(22, 'Furman Powlowski', 'Quia quae itaque occaecati. Adipisci fuga placeat in non quis sunt magnam.', 'Sit commodi omnis et saepe. Suscipit ex a aliquam at. Distinctio in animi maiores earum amet commodi. Sapiente vel eum cupiditate doloribus rerum. Culpa magni eum laudantium laborum non eos beatae numquam. Debitis excepturi aut consequatur consequatur fugit laboriosam. Modi quia accusamus dolorem omnis consequatur minus asperiores. Unde recusandae sunt molestiae quibusdam ut dicta.', 'F9MPQ6nVz3Cn6', 3, '816.00', '22.png', '2021-05-10 19:52:50', '2022-02-19 04:23:39'),
(23, 'Ahmed Sipes', 'Adipisci quia unde quisquam. Qui debitis aliquid facilis dolorem aut.', 'Quam qui sapiente vel aspernatur earum. Maiores corrupti molestias et qui sed voluptas labore. Ipsa libero vero officia ratione consequatur. Similique nulla quasi consequuntur porro voluptates. Quaerat consectetur qui natus velit fuga amet officiis saepe. Rerum ut atque delectus. Possimus unde perferendis odio asperiores et debitis nihil. Qui quod culpa at repellendus dolores odit. Aut non soluta repellendus labore. Et tempora in ut. Neque ut omnis molestiae natus libero neque.', 'PYlZyl8fGa8zW', 1, '287.00', '23.png', '2021-09-22 20:53:54', '2022-02-10 15:45:09'),
(24, 'Corbin Donnelly I', 'Non dolore maxime numquam ut neque delectus unde. Eum adipisci sint aut et eligendi.', 'Repellendus tempore deserunt omnis distinctio illum praesentium. Possimus suscipit illum itaque rerum cum. Eum libero qui quasi illo. Nemo necessitatibus amet est reprehenderit reprehenderit voluptas sint. Animi hic rem in vel sed id. Quis deleniti reprehenderit quibusdam odio repudiandae molestiae. Veritatis doloribus et neque et rerum.', 'kuEVvEszHSfFI', 1, '835.00', '24.png', '2021-07-05 07:28:56', '2020-11-10 16:08:56'),
(25, 'Madaline Toy DDS', 'Temporibus nam et omnis. Laborum velit placeat ipsum veritatis maiores molestiae quia.', 'Modi nemo corporis voluptatem quia autem ut et illo. Quam ut nesciunt ut velit. Quas sed aut velit est rerum soluta soluta. Esse earum odit pariatur est. Est labore illum quidem delectus exercitationem quos rem dolores. Doloribus voluptatem quisquam consequatur quo labore voluptatem repellendus. Voluptates quia omnis maxime voluptatem ut dolorem. Consequuntur molestias modi minima quaerat corrupti mollitia et. Hic vel earum sequi repellat cumque omnis. Accusamus omnis nostrum soluta ut.', '3C5cPd0QaGUVy', 1, '955.00', '25.png', '2021-03-10 01:43:14', '2020-11-04 05:01:57'),
(26, 'Chadd Gislason', 'Quasi ipsum deleniti et. Consequatur qui recusandae esse provident enim officia velit.', 'Et minus saepe consequuntur accusantium eveniet voluptatem ab. Eum similique eos debitis laboriosam. Aperiam sed autem sint. Voluptate quo qui eum cupiditate et id omnis. Velit nihil accusamus doloribus numquam sunt. Corrupti est qui eos. Corrupti in eius laborum sit unde porro veniam. Cupiditate qui voluptatibus ipsa sed dolorum distinctio. Exercitationem velit delectus nisi unde.', 'AVq5rihvz25BK', 2, '477.00', '26.png', '2021-05-07 19:04:43', '2021-09-09 07:59:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
