#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct zip_data_desc {int /*<<< orphan*/  size; int /*<<< orphan*/  compressed_size; int /*<<< orphan*/  crc32; int /*<<< orphan*/  magic; } ;
struct zip64_data_desc {int /*<<< orphan*/  size; int /*<<< orphan*/  compressed_size; int /*<<< orphan*/  crc32; int /*<<< orphan*/  magic; } ;

/* Variables and functions */
 scalar_t__ ZIP64_DATA_DESC_SIZE ; 
 scalar_t__ ZIP_DATA_DESC_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int,struct zip_data_desc*,scalar_t__) ; 
 int /*<<< orphan*/  zip_offset ; 

__attribute__((used)) static void FUNC3(unsigned long size,
				unsigned long compressed_size,
				unsigned long crc)
{
	if (size >= 0xffffffff || compressed_size >= 0xffffffff) {
		struct zip64_data_desc trailer;
		FUNC0(trailer.magic, 0x08074b50);
		FUNC0(trailer.crc32, crc);
		FUNC1(trailer.compressed_size, compressed_size);
		FUNC1(trailer.size, size);
		FUNC2(1, &trailer, ZIP64_DATA_DESC_SIZE);
		zip_offset += ZIP64_DATA_DESC_SIZE;
	} else {
		struct zip_data_desc trailer;
		FUNC0(trailer.magic, 0x08074b50);
		FUNC0(trailer.crc32, crc);
		FUNC0(trailer.compressed_size, compressed_size);
		FUNC0(trailer.size, size);
		FUNC2(1, &trailer, ZIP_DATA_DESC_SIZE);
		zip_offset += ZIP_DATA_DESC_SIZE;
	}
}