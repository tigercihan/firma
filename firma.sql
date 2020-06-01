-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2020 at 10:23 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `firma`
--

-- --------------------------------------------------------

--
-- Table structure for table `ayarlar`
--

CREATE TABLE `ayarlar` (
  `id` int(11) NOT NULL,
  `logo` varchar(150) COLLATE utf8_turkish_ci DEFAULT NULL,
  `url` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` varchar(250) COLLATE utf8_turkish_ci DEFAULT NULL,
  `keywords` varchar(250) COLLATE utf8_turkish_ci DEFAULT NULL,
  `author` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `tel` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `gsm` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `faks` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `mail` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `adres` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `il` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ilce` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `recapctha` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `maps` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `analystic` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `facebook` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `twitter` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `instagram` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `youtube` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `google` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `smtp_user` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `smtp_password` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `smtp_host` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `smtp_port` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `ayarlar`
--

INSERT INTO `ayarlar` (`id`, `logo`, `url`, `title`, `description`, `keywords`, `author`, `tel`, `gsm`, `faks`, `mail`, `adres`, `il`, `ilce`, `recapctha`, `maps`, `analystic`, `facebook`, `twitter`, `instagram`, `youtube`, `google`, `smtp_user`, `smtp_password`, `smtp_host`, `smtp_port`, `created_at`, `updated_at`) VALUES
(1, NULL, 'localhost', 'Laravel Firma', 'Laravel Ders', 'laravel,ders', NULL, '2123544545', '54523233232', '2124575757', 'info@laravel.com', 'aç.smdlkashndkjçansjkçdna', 'istanbul', 'kartal', NULL, NULL, NULL, 'facebook.com/laravel', 'twitter.com/laravel', 'instagram.com/laravel', 'youtube.com/laravel', NULL, NULL, NULL, NULL, NULL, '2020-05-26 13:14:52', '2020-05-26 23:28:57');

-- --------------------------------------------------------

--
-- Table structure for table `bloglar`
--

CREATE TABLE `bloglar` (
  `id` int(11) NOT NULL,
  `baslik` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `icerik` longtext COLLATE utf8_turkish_ci NOT NULL,
  `yazar` int(11) DEFAULT NULL,
  `etiketler` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `resimler` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `kategori` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `bloglar`
--

INSERT INTO `bloglar` (`id`, `baslik`, `icerik`, `yazar`, `etiketler`, `resimler`, `slug`, `kategori`, `created_at`, `updated_at`) VALUES
(1, 'Yüzme', 'dfsdfsdfwerwfsdferfwefwef', NULL, 'asdasdasdasd', NULL, 'yuzme', 0, '2020-05-31 16:44:07', '2020-05-31 16:44:07'),
(2, 'Yüzme', 'ffdgdfgdfgdafgdsfgdsfgergdfbdfbdsb', NULL, 'asdasdasdasd', NULL, 'yuzme', 0, '2020-05-31 16:44:42', '2020-05-31 16:44:42'),
(3, 'Sport', 'lşamslkdfnangfjksabdgılhbwaılsdgjsbndgonwoşıgnıownşognwşoegnoşweng\r\nfkwsoşdngaasd\r\nGwkdglkhnaskjdgbsajdg', NULL, '#sport', NULL, 'sport-2020-05-31-164910', 0, '2020-05-31 16:49:10', '2020-05-31 16:49:10'),
(4, 'Tenis', '<p>asf&ouml;şalsmflşkasdfgnsajldgblsabdglkjasbdgf</p>', NULL, '#tenis', NULL, 'tenis-2020-05-31-170819', 0, '2020-05-31 17:08:19', '2020-05-31 17:08:19');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hakkimizda`
--

CREATE TABLE `hakkimizda` (
  `id` int(11) NOT NULL,
  `vizyon` text COLLATE utf8_turkish_ci NOT NULL,
  `misyon` text COLLATE utf8_turkish_ci NOT NULL,
  `kisa_yazi` text COLLATE utf8_turkish_ci NOT NULL,
  `icerik` text COLLATE utf8_turkish_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `hakkimizda`
--

INSERT INTO `hakkimizda` (`id`, `vizyon`, `misyon`, `kisa_yazi`, `icerik`, `created_at`, `updated_at`) VALUES
(1, 'Vizyonumuz', 'Misyonumuz', 'Kısa yazı', 'Lasdşlaösdşmalkşsdnkjansdnaskdnakjsndkjansd\nasdkmalksdnklansda\nskdoanslkdnasdnqwd\nasdaokansdoansda\nsdaosdaıosdojasdjasdas\ndaosjdoıajsdıojaosıdjıajsdıojaıjosd', '2020-05-30 22:48:08', '2020-05-30 22:48:08');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yetki` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `yetki`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'cihan', 'admin@admin.com', '$2y$10$HxDDM0AimGR4UXkqHJEK0OxhFhYjp.v//b2AkQ3BguMaMd/beKQDK', '9', NULL, '2020-05-28 03:58:54', '2020-05-28 03:58:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ayarlar`
--
ALTER TABLE `ayarlar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bloglar`
--
ALTER TABLE `bloglar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hakkimizda`
--
ALTER TABLE `hakkimizda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `ayarlar`
--
ALTER TABLE `ayarlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bloglar`
--
ALTER TABLE `bloglar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hakkimizda`
--
ALTER TABLE `hakkimizda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
