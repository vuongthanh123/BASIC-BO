-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 31, 2021 lúc 01:35 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `data_web08`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `makhachdathang` int(10) NOT NULL,
  `masanpham` int(10) NOT NULL,
  `noidungbinhluan` text COLLATE utf8_unicode_ci NOT NULL,
  `thoigianbinhluan` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`makhachdathang`, `masanpham`, `noidungbinhluan`, `thoigianbinhluan`) VALUES
(1, 12, 'sản phẩm tạm ổn', '2021-10-19 12:13:34'),
(4, 5, 'hàng đẹp lắm,  mà giao hàng nhanh nữa', '2021-10-19 12:25:29'),
(3, 10, 'lần sau sẽ mua lại', '2021-10-19 12:26:05'),
(2, 4, 'shop tư vấn rất nhiệt tình', '2021-10-19 12:26:05'),
(4, 7, 'giao hàng chậm, sản phẩm đẹp', '2021-10-19 12:27:12'),
(3, 4, 'fsdaf', '2021-10-29 02:39:38'),
(4, 5, 'giá rẻ so với chất lượng sản phẩm', '2021-10-30 23:17:02'),
(10, 4, 'shop đóng gói cẩn thận nhưng mà khóa bị lỗi, shop cũng rất nhiệt tình đổi hàng', '2021-10-30 23:18:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `mahoadon` int(10) NOT NULL,
  `masanpham` int(10) NOT NULL,
  `soluongmua` int(15) NOT NULL,
  `dongia` float NOT NULL,
  `maphuongthucthanhtoan` int(11) NOT NULL,
  `ghichudonhang` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `makhachdathang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`mahoadon`, `masanpham`, `soluongmua`, `dongia`, `maphuongthucthanhtoan`, `ghichudonhang`, `makhachdathang`) VALUES
(34, 15, 1, 53515.2, 1, 'Test thui ý', 3),
(34, 23, 3, 3000, 1, 'Test thui ý', 3),
(35, 9, 1, 7000, 3, 'Hế lâu ae.', 4),
(35, 28, 1, 3600, 3, 'Hế lâu ae.', 4),
(35, 6, 1, 3200, 3, 'Hế lâu ae.', 4),
(36, 12, 8, 6400, 2, 'cũng hay', 5),
(36, 26, 3, 28461, 2, 'cũng hay', 5),
(36, 4, 1, 2000, 2, 'cũng hay', 5),
(36, 15, 3, 53515.2, 2, 'cũng hay', 5),
(38, 12, 5, 6400, 1, 'chi chi', 7),
(38, 6, 10, 3200, 1, 'chi chi', 7),
(38, 28, 5, 3600, 1, 'chi chi', 7),
(39, 6, 1, 3200, 1, 'không có gì hết', 8),
(39, 12, 3, 6400, 1, 'không có gì hết', 8),
(39, 27, 2, 64313, 1, 'không có gì hết', 8),
(39, 28, 1, 3600, 1, 'không có gì hết', 8),
(40, 12, 2, 6400, 3, '', 9),
(40, 10, 1, 880, 3, '', 9),
(41, 13, 1, 7110.4, 1, 'shop ship nhanh cho mình nhé', 10),
(41, 26, 1, 28461, 1, 'shop ship nhanh cho mình nhé', 10),
(41, 27, 3, 64313, 1, 'shop ship nhanh cho mình nhé', 10),
(42, 2, 1, 7200, 3, 'Tui chầm kamr bà con cô bác ạ', 93),
(42, 28, 4, 3600, 3, 'Tui chầm kamr bà con cô bác ạ', 93),
(43, 9, 1, 5950, 1, 'Cảm thán', 94),
(43, 6, 1, 3200, 1, 'Cảm thán', 94),
(43, 15, 2, 53515.2, 1, 'Cảm thán', 94),
(44, 6, 1, 3200, 1, '', 95),
(44, 27, 1, 54666.1, 1, '', 95),
(45, 28, 3, 3600, 1, 'Chán rồi k muốn test nx huhu', 96),
(45, 11, 1, 25600, 1, 'Chán rồi k muốn test nx huhu', 96),
(45, 10, 1, 880, 1, 'Chán rồi k muốn test nx huhu', 96),
(46, 7, 0, 5000, 1, '', 97),
(47, 13, 5, 7110.4, 1, '', 98),
(48, 27, 1, 54666.1, 1, '', 99),
(49, 28, 5, 3600, 1, '', 100);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `mahoadon` int(10) NOT NULL,
  `makhachdathang` int(10) NOT NULL,
  `ngaydat` datetime NOT NULL,
  `tongtien` float NOT NULL,
  `tongsoluong` int(11) NOT NULL,
  `trangthai` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`mahoadon`, `makhachdathang`, `ngaydat`, `tongtien`, `tongsoluong`, `trangthai`) VALUES
(34, 3, '2021-10-29 22:42:19', 62515.2, 4, 1),
(35, 4, '2021-10-30 19:22:11', 13800, 3, 0),
(36, 5, '2021-10-30 20:00:47', 299129, 15, 0),
(38, 7, '2021-10-30 20:05:14', 82000, 20, 0),
(39, 8, '2021-10-30 20:07:58', 154626, 7, 0),
(40, 9, '2021-10-30 20:08:53', 13680, 3, 0),
(41, 10, '2021-10-30 20:55:21', 228510, 5, 0),
(42, 93, '2021-10-31 08:33:19', 21600, 5, 0),
(43, 94, '2021-10-31 08:34:22', 116180, 4, 0),
(44, 95, '2021-10-31 08:37:28', 57866.1, 2, 0),
(45, 96, '2021-10-31 08:38:42', 37280, 5, 0),
(46, 97, '2021-10-31 08:40:01', 10000, 2, 0),
(47, 98, '2021-10-31 08:45:11', 35552, 5, 0),
(48, 99, '2021-10-31 08:45:56', 54666.1, 1, 0),
(49, 100, '2021-10-31 08:51:54', 18000, 5, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachdathang`
--

CREATE TABLE `khachdathang` (
  `makhachdathang` int(11) NOT NULL,
  `tenkhachdathang` varchar(100) NOT NULL,
  `diachikhachdathang` varchar(200) NOT NULL,
  `sodienthoaikhachdathang` varchar(10) NOT NULL,
  `emailkhachdathang` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khachdathang`
--

INSERT INTO `khachdathang` (`makhachdathang`, `tenkhachdathang`, `diachikhachdathang`, `sodienthoaikhachdathang`, `emailkhachdathang`) VALUES
(1, '1', '1', '1', 'minh@gmail.com'),
(2, 'Test1', 'a', '111', ''),
(3, 'Nguyệt', 'Test1', '1', '11@gmail.com'),
(4, 'Minh', 'Hà Nam', '1', '11@gmail.com'),
(5, 'Nguyệt', 'Nơi Suho ở', '0999', 'fanexo@gmail.com'),
(6, 'Nguyệt', 'Test1', '111', '11@gmail.com'),
(7, 'Nguyệt', 'Test1', '111', '11@gmail.com'),
(8, 'á', 'Test1', '0999', 'minh@gmail.com'),
(9, '1', '1', '1', '11@gmail.com'),
(10, 'Ngáo', 'No quá', '888', 'thembundau@gmail.com'),
(93, 'U là trời', 'Khó quá bỏ qua', '123456', 'fanexo@gmail.com'),
(94, '1', 'No quá', '888', 'thembundau@gmail.com'),
(95, 'Nguyệt', 'Test1', '111', 'thembundau@gmail.com'),
(96, 'Khùng', 'Không test nx', '898989', ''),
(97, 'Nguyệt', 'Hà Nam', '123456', ''),
(98, 'Nguyệt', 'Hà Nam', '123456', '11@gmail.com'),
(99, 'abc', 'Hà Nam', '888', 'fanexo@gmail.com'),
(100, 'Hình như lần này đc r', 'Done chưa ta', '0909999', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `makhachhang` int(11) NOT NULL,
  `tenkhachhang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `diachikhachhang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sodienthoaikhachhang` int(15) NOT NULL,
  `emailkhachhang` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `matkhaukhachhang` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`makhachhang`, `tenkhachhang`, `diachikhachhang`, `sodienthoaikhachhang`, `emailkhachhang`, `matkhaukhachhang`) VALUES
(1, 'Vũ Nguyệt Hà', 'Xóm 3- Nga thanh - Nga lĩnh- Hà Nội', 858489766, 'vunguyetha2001@gmail.com', ''),
(2, 'Trần Hữu Long', 'làng thiện chi-Bạch Phượng- Đống Đa- Hà Nội', 325498112, 'long123@gmail.com', ''),
(3, 'Nguyệt Nguyệt', ' Hà Nam - Hà Nội', 858489751, 'nguyet123@gmail.com', ''),
(4, 'Linh Ngọc Mai', '22 tôn thất tùng - Đóng đa -  Hà Nội', 325459445, 'Ngọcmai124@gmail.com', ''),
(5, 'Xuân Hoàng', 'Kim Ngưu - Ba Đình- Hà Nội', 58962782, 'xuanhoang123@gmail.com', ''),
(6, 'Ngọc Minh', '45 Phạm Ngọc Thạch - Đống Đa - Hà Nội', 325459456, 'minhngoc123@gmail.com', ''),
(7, 'Hoàng Hà', '', 962843029, 'hoangha123@gmail.com', ''),
(11,'Vương Yến Thanh ', 'Thanh miện-Hải Dương', 0386159131, 'vuongthanh123a@gmail.com', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `makhuyenmai` int(10) NOT NULL,
  `giamgia` int(10) NOT NULL,
  `thoihan` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`makhuyenmai`, `giamgia`, `thoihan`) VALUES
(1, 0, NULL),
(2, 20, '2021-11-09 11:27:01'),
(3, 20, '2021-11-16 06:53:41'),
(4, 15, '2021-11-10 11:53:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienhe`
--

CREATE TABLE `lienhe` (
  `malienhe` int(10) NOT NULL,
  `tenlienhe` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `emaillienhe` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `chudelienhe` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `noidunglienhe` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `ngaylienhe` datetime NOT NULL,
  `trangthai` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lienhe`
--

INSERT INTO `lienhe` (`malienhe`, `tenlienhe`, `emaillienhe`, `chudelienhe`, `noidunglienhe`, `ngaylienhe`, `trangthai`) VALUES
(2, 'Minh', 'a@gmail.com', 'Hí hí', 'Test thui á', '2021-10-29 16:48:16', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `maloaisanpham` int(10) NOT NULL,
  `tenloaisanpham` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `anhloai` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`maloaisanpham`, `tenloaisanpham`, `anhloai`) VALUES
(1, 'Túi note', 'category-home-1-img-1.jpg'),
(2, 'Balo', 'category-home-1-img-10.jpg'),
(3, 'Túi đeo vai', 'category-home-1-img-3.jpg'),
(4, 'Túi đeo chéo', 'category-home-1-img-4.jpg'),
(5, 'Ví', 'category-home-1-img-5.jpg'),
(6, 'Phụ kiện đi kèm', 'category-home-1-img-6.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `manguoidung` int(10) NOT NULL,
  `tennguoidung` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `emailnguoidung` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`manguoidung`, `tennguoidung`, `emailnguoidung`, `matkhau`) VALUES
(1, 'Vương Yến Thanh', 'vuongthanh123a@gmail.com', 9999),
(2, 'Tô Thị Linh', 'tothilinh@gmail.com', 9999),
(3, 'Ta Minh Tien', 'minhtien2107@gmail.com', 9999);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `manhacungcap` int(10) NOT NULL,
  `tennhacungcap` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `diachinhacungcap` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sdtnhacungcap` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`manhacungcap`, `tennhacungcap`, `diachinhacungcap`, `sdtnhacungcap`) VALUES
(1, 'Hai Anh', 'Nam Định ', 88889999),
(2, 'Kim Chi', 'Quảng Ninh', 99998888),
(3, 'Linh Chi', 'Quảng Bình', 77778888),
(4, 'Ngân Ngân', 'Haỉ Dương', 66667777);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phuongthucthanhtoan`
--

CREATE TABLE `phuongthucthanhtoan` (
  `maphuongthucthanhtoan` int(11) NOT NULL,
  `tenphuongthucthanhtoan` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phuongthucthanhtoan`
--

INSERT INTO `phuongthucthanhtoan` (`maphuongthucthanhtoan`, `tenphuongthucthanhtoan`) VALUES
(1, 'Thanh toán khi nhận hàng'),
(2, 'Thanh toán qua ví điện tử'),
(3, 'Thanh toán qua thẻ ngân hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `masanpham` int(10) NOT NULL,
  `tensanpham` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `maloaisanpham` int(10) NOT NULL,
  `soluong` int(15) NOT NULL,
  `dongia` int(15) NOT NULL,
  `anh` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `mota` text COLLATE utf8_unicode_ci NOT NULL,
  `manhacungcap` int(10) NOT NULL,
  `makhuyenmai` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`masanpham`, `tensanpham`, `maloaisanpham`, `soluong`, `dongia`, `anh`, `mota`, `manhacungcap`, `makhuyenmai`) VALUES
(1, 'SOL BAG', 1, 20, 550000, 'product-home-1-img-8.jpg', '• Hoạ tiết: 3 màu, da PU mềm • Kích thước: 28x32x10cm ', 1, 1),
(2, 'FEND BACKPACK', 2, 100, 900000, 'product-home-1-img-10.jpg', '• Hoạ tiết: 3 màu, da PU mềm • Kích thước:28x34x9cm', 4, 3),
(3, 'IVY BAG', 3, 123, 300000, 'product-home-1-img-1.jpg', '• Kiểu dáng: Basic, thanh lịch • Kích thước: 24 x 17,3 x 6cm', 4, 3),
(4, 'CHARIS BAG', 3, 231, 2000, 'product-home-1-img-3.jpg', '• Kiểu dáng: Hobo Bag • Kích thước: 19 x 24 x 7cm', 3, 4),
(5, 'LII BAG', 3, 431, 300000, 'product-home-1-img-4.jpg', ' • Với những trường hợp do lỗi sản xuất, bạn có thể 1 đổi 1 trong 7 ngày. • LESAC miễn phí bảo hành trong khoảng 7-30 ngày kể từ ngày nhận hàng.', 2, 2),
(6, 'AMM BAG', 3, 10, 400000, 'product-home-1-img-6.jpg', '• Hoạ tiết: Một màu, da PU vân cá sấc • Kích thước: 16.5 x 24 x 7cm', 1, 2),
(7, 'WEE BAG', 4, 0, 500000, 'product-home-1-img-2.jpg', '• Kiểu dáng: Basic, thanh lịch • Kích thước: 20.5 x 13.5 x 6.5 cm', 2, 1),
(8, 'AVERY BAG', 4, 60, 6000, 'product-home-1-img-5.jpg', ' • Kiểu dáng: Basic, thanh lịch • Kích thước: 22 x 17 x 6cm', 1, 3),
(9, 'MIKALA BAG', 4, 16, 700000, 'product-home-1-img-7.jpg', '• Kiểu dáng: Basic, thanh lịch • Kích thước: 22 x 15 x 8cm ', 3, 4),
(10, 'CASS BAG', 4, 9, 110000, 'product-home-1-img-9.jpg', '• Kiểu dáng: Basic, thanh lịch • Kích thước: 19x12x5cm', 2, 2),
(11, 'JULIA BAG', 4, 32, 320000, 'lat-pho-mai.jpg', '• Kiểu dáng: Basic, thanh lịch • Kích thước: 20 x 14 x 8cm', 1, 2),
(12, 'LYLY WALLET', 5, 205, 200000, 'le-han-quoc.jpg', '• Kiểu dáng: Basic, thanh lịch • Kích thước: 14 x 10 x 2cm', 3, 2),
(13, 'STAND WALLET', 5, 301, 350000, 'tao-do.jpg', '• Kiểu dáng: Basic, thanh lịch • Kích thước: 14 x 10 x 2cm', 4, 2),
(14, 'LEVISA WALLET', 7, 0, 90909, 'chuoi.jpg', '• Kiểu dáng: Basic, thanh lịch • Kích thước: 12 x 9 x 2cm', 3, 1),
(15, 'GLAM', 6, 999, 150000, 'buoi.jpg', '• Set bao gồm 5 pin cài ngẫu nhiên  • Chất liệu: hợp kim không niken', 1, 2),
(16, 'DỊCH VỤ GÓI QUÀ', 6, 10, 20000, 'phomai.jpg', '• Thiệp chúc (nhận viết thiệp theo yêu cầu)', 1, 1),
(17, 'THIỆP LỜI CHÚC', 6, 15, 10000, 'dua-nuoc.jpg', '• Kích thước: 14 x 9cm  • Chất liệu: Giấy ốp chất mịn|', 2, 1),
(18, 'HỘP QUÀ', 6, 333, 400000, 'kiwi.jpg', '• Kích thước: 9x18x25.5cm', 4, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trogiup`
--

CREATE TABLE `trogiup` (
  `matrogiup` int(10) NOT NULL,
  `tentrogiup` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `emailtrogiup` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sdttrogiup` int(15) NOT NULL,
  `noidungtrogiup` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `ngayyeucau` datetime NOT NULL,
  `trangthai` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `trogiup`
--

INSERT INTO `trogiup` (`matrogiup`, `tentrogiup`, `emailtrogiup`, `sdttrogiup`, `noidungtrogiup`, `ngayyeucau`, `trangthai`) VALUES
(1, 'Minh', 'nguyet@gmail.com', 9999, 'Sây hai Yến hâm', '2021-10-30 20:48:08', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `masanpham` int(10) NOT NULL,
  `makhachhang` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD KEY `foreign key` (`makhachdathang`),
  ADD KEY `masanpham` (`masanpham`);

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD KEY `maphuongthucthanhtoan` (`maphuongthucthanhtoan`),
  ADD KEY `masanpham` (`masanpham`),
  ADD KEY `chitiethoadon_ibfk_4` (`makhachdathang`),
  ADD KEY `chitiethoadon_ibfk` (`mahoadon`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`mahoadon`),
  ADD KEY `fk1` (`makhachdathang`);

--
-- Chỉ mục cho bảng `khachdathang`
--
ALTER TABLE `khachdathang`
  ADD PRIMARY KEY (`makhachdathang`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`makhachhang`);

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`makhuyenmai`);

--
-- Chỉ mục cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`malienhe`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`maloaisanpham`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`manguoidung`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`manhacungcap`);

--
-- Chỉ mục cho bảng `phuongthucthanhtoan`
--
ALTER TABLE `phuongthucthanhtoan`
  ADD PRIMARY KEY (`maphuongthucthanhtoan`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masanpham`),
  ADD KEY `makhuyenmai` (`makhuyenmai`),
  ADD KEY `maloaisanpham` (`maloaisanpham`),
  ADD KEY `manhacungcap` (`manhacungcap`);

--
-- Chỉ mục cho bảng `trogiup`
--
ALTER TABLE `trogiup`
  ADD PRIMARY KEY (`matrogiup`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`masanpham`),
  ADD KEY `makhachhang` (`makhachhang`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `mahoadon` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `khachdathang`
--
ALTER TABLE `khachdathang`
  MODIFY `makhachdathang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `makhachhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `makhuyenmai` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `malienhe` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `manguoidung` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `manhacungcap` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `phuongthucthanhtoan`
--
ALTER TABLE `phuongthucthanhtoan`
  MODIFY `maphuongthucthanhtoan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `masanpham` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `matintuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `trogiup`
--
ALTER TABLE `trogiup`
  MODIFY `matrogiup` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `masanpham` int(10) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`masanpham`) REFERENCES `sanpham` (`masanpham`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foreign key` FOREIGN KEY (`makhachdathang`) REFERENCES `khachdathang` (`makhachdathang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk` FOREIGN KEY (`mahoadon`) REFERENCES `hoadon` (`mahoadon`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`makhachdathang`) REFERENCES `khachdathang` (`makhachdathang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`maphuongthucthanhtoan`) REFERENCES `phuongthucthanhtoan` (`maphuongthucthanhtoan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitiethoadon_ibfk_3` FOREIGN KEY (`masanpham`) REFERENCES `sanpham` (`masanpham`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitiethoadon_ibfk_4` FOREIGN KEY (`mahoadon`) REFERENCES `hoadon` (`mahoadon`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`makhachdathang`) REFERENCES `khachdathang` (`makhachdathang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`makhuyenmai`) REFERENCES `khuyenmai` (`makhuyenmai`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`maloaisanpham`) REFERENCES `loaisanpham` (`maloaisanpham`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sanpham_ibfk_3` FOREIGN KEY (`manhacungcap`) REFERENCES `nhacungcap` (`manhacungcap`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`makhachhang`) REFERENCES `khachhang` (`makhachhang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`masanpham`) REFERENCES `sanpham` (`masanpham`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;