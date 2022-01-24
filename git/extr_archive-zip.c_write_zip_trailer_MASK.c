#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct zip_dir_trailer {int /*<<< orphan*/  comment_length; int /*<<< orphan*/  offset; int /*<<< orphan*/  size; int /*<<< orphan*/  entries; int /*<<< orphan*/  entries_on_this_disk; int /*<<< orphan*/  directory_start_disk; int /*<<< orphan*/  disk; int /*<<< orphan*/  magic; } ;
struct object_id {int dummy; } ;
struct TYPE_4__ {int hexsz; } ;
struct TYPE_3__ {int len; struct zip_dir_trailer* buf; } ;

/* Variables and functions */
 int ZIP_DIR_TRAILER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct zip_dir_trailer* FUNC4 (struct object_id const*) ; 
 TYPE_2__* the_hash_algo ; 
 int /*<<< orphan*/  FUNC5 (int,struct zip_dir_trailer*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_1__ zip_dir ; 
 int /*<<< orphan*/  zip_dir_entries ; 
 int /*<<< orphan*/  zip_offset ; 

__attribute__((used)) static void FUNC7(const struct object_id *oid)
{
	struct zip_dir_trailer trailer;
	int clamped = 0;

	FUNC2(trailer.magic, 0x06054b50);
	FUNC0(trailer.disk, 0);
	FUNC0(trailer.directory_start_disk, 0);
	FUNC1(trailer.entries_on_this_disk, zip_dir_entries,
			&clamped);
	FUNC1(trailer.entries, zip_dir_entries, &clamped);
	FUNC2(trailer.size, zip_dir.len);
	FUNC3(trailer.offset, zip_offset, &clamped);
	FUNC0(trailer.comment_length, oid ? the_hash_algo->hexsz : 0);

	FUNC5(1, zip_dir.buf, zip_dir.len);
	if (clamped)
		FUNC6();
	FUNC5(1, &trailer, ZIP_DIR_TRAILER_SIZE);
	if (oid)
		FUNC5(1, FUNC4(oid), the_hash_algo->hexsz);
}