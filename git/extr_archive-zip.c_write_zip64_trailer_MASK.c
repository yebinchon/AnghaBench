#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct zip64_dir_trailer_locator {int /*<<< orphan*/  number_of_disks; int /*<<< orphan*/  offset; int /*<<< orphan*/  disk; int /*<<< orphan*/  magic; int /*<<< orphan*/  size; int /*<<< orphan*/  entries; int /*<<< orphan*/  entries_on_this_disk; int /*<<< orphan*/  directory_start_disk; int /*<<< orphan*/  version; int /*<<< orphan*/  creator_version; int /*<<< orphan*/  record_size; } ;
struct zip64_dir_trailer {int /*<<< orphan*/  number_of_disks; int /*<<< orphan*/  offset; int /*<<< orphan*/  disk; int /*<<< orphan*/  magic; int /*<<< orphan*/  size; int /*<<< orphan*/  entries; int /*<<< orphan*/  entries_on_this_disk; int /*<<< orphan*/  directory_start_disk; int /*<<< orphan*/  version; int /*<<< orphan*/  creator_version; int /*<<< orphan*/  record_size; } ;
struct TYPE_2__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZIP64_DIR_TRAILER_LOCATOR_SIZE ; 
 scalar_t__ ZIP64_DIR_TRAILER_RECORD_SIZE ; 
 int /*<<< orphan*/  ZIP64_DIR_TRAILER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int max_creator_version ; 
 int /*<<< orphan*/  FUNC3 (int,struct zip64_dir_trailer_locator*,int /*<<< orphan*/ ) ; 
 TYPE_1__ zip_dir ; 
 scalar_t__ zip_dir_entries ; 
 scalar_t__ zip_offset ; 

__attribute__((used)) static void FUNC4(void)
{
	struct zip64_dir_trailer trailer64;
	struct zip64_dir_trailer_locator locator64;

	FUNC1(trailer64.magic, 0x06064b50);
	FUNC2(trailer64.record_size, ZIP64_DIR_TRAILER_RECORD_SIZE);
	FUNC0(trailer64.creator_version, max_creator_version);
	FUNC0(trailer64.version, 45);
	FUNC1(trailer64.disk, 0);
	FUNC1(trailer64.directory_start_disk, 0);
	FUNC2(trailer64.entries_on_this_disk, zip_dir_entries);
	FUNC2(trailer64.entries, zip_dir_entries);
	FUNC2(trailer64.size, zip_dir.len);
	FUNC2(trailer64.offset, zip_offset);

	FUNC1(locator64.magic, 0x07064b50);
	FUNC1(locator64.disk, 0);
	FUNC2(locator64.offset, zip_offset + zip_dir.len);
	FUNC1(locator64.number_of_disks, 1);

	FUNC3(1, &trailer64, ZIP64_DIR_TRAILER_SIZE);
	FUNC3(1, &locator64, ZIP64_DIR_TRAILER_LOCATOR_SIZE);
}