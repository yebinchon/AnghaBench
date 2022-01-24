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
struct rev_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  add_object_entry_from_bitmap ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  bitmap_git ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nr_result ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct rev_info*) ; 
 int /*<<< orphan*/  progress_state ; 
 int /*<<< orphan*/  reuse_packfile ; 
 scalar_t__ reuse_packfile_objects ; 
 int /*<<< orphan*/  reuse_packfile_offset ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct rev_info *revs)
{
	if (!(bitmap_git = FUNC3(revs)))
		return -1;

	if (FUNC2() &&
	    !FUNC4(
			bitmap_git,
			&reuse_packfile,
			&reuse_packfile_objects,
			&reuse_packfile_offset)) {
		FUNC0(reuse_packfile_objects);
		nr_result += reuse_packfile_objects;
		FUNC1(progress_state, nr_result);
	}

	FUNC5(bitmap_git, &add_object_entry_from_bitmap);
	return 0;
}