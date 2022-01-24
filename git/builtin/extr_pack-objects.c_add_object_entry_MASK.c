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
struct packed_git {int dummy; } ;
struct object_id {int dummy; } ;
typedef  int /*<<< orphan*/  off_t ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 scalar_t__ WRITE_BITMAP_QUIET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct object_id const*,int,int /*<<< orphan*/ ,int,int,struct packed_git*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct object_id const*,int) ; 
 int /*<<< orphan*/  no_closure_warning ; 
 scalar_t__ FUNC4 (char const*) ; 
 int /*<<< orphan*/  nr_seen ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  progress_state ; 
 int /*<<< orphan*/  FUNC6 (struct object_id const*,int,struct packed_git**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ write_bitmap_index ; 

__attribute__((used)) static int FUNC8(const struct object_id *oid, enum object_type type,
			    const char *name, int exclude)
{
	struct packed_git *found_pack = NULL;
	off_t found_offset = 0;

	FUNC2(progress_state, ++nr_seen);

	if (FUNC3(oid, exclude))
		return 0;

	if (!FUNC6(oid, exclude, &found_pack, &found_offset)) {
		/* The pack is missing an object, so it will not have closure */
		if (write_bitmap_index) {
			if (write_bitmap_index != WRITE_BITMAP_QUIET)
				FUNC7(FUNC0(no_closure_warning));
			write_bitmap_index = 0;
		}
		return 0;
	}

	FUNC1(oid, type, FUNC5(name),
			    exclude, name && FUNC4(name),
			    found_pack, found_offset);
	return 1;
}