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
struct commit_list {int dummy; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; } ;

/* Variables and functions */
 int REV_SHIFT ; 
 int UNINTERESTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct commit* FUNC1 (struct commit_list**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct commit_list *seen, int num_rev)
{
	int all_mask = ((1u << (REV_SHIFT + num_rev)) - 1);
	int all_revs = all_mask & ~((1u << REV_SHIFT) - 1);
	int exit_status = 1;

	while (seen) {
		struct commit *commit = FUNC1(&seen);
		int flags = commit->object.flags & all_mask;
		if (!(flags & UNINTERESTING) &&
		    ((flags & all_revs) == all_revs)) {
			FUNC2(FUNC0(&commit->object.oid));
			exit_status = 0;
			commit->object.flags |= UNINTERESTING;
		}
	}
	return exit_status;
}