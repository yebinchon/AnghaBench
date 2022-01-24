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
struct rev_info {int /*<<< orphan*/  diffopt; } ;
struct object_id {int dummy; } ;
struct object_array_entry {TYPE_1__* item; } ;
struct TYPE_2__ {int flags; struct object_id oid; } ;

/* Variables and functions */
 int UNINTERESTING ; 
 int /*<<< orphan*/  builtin_diff_usage ; 
 int /*<<< orphan*/  FUNC0 (struct object_id const*,struct object_id const*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct rev_info *revs,
			     int argc, const char **argv,
			     struct object_array_entry *ent0,
			     struct object_array_entry *ent1)
{
	const struct object_id *(oid[2]);
	int swap = 0;

	if (argc > 1)
		FUNC2(builtin_diff_usage);

	/*
	 * We saw two trees, ent0 and ent1.  If ent1 is uninteresting,
	 * swap them.
	 */
	if (ent1->item->flags & UNINTERESTING)
		swap = 1;
	oid[swap] = &ent0->item->oid;
	oid[1 - swap] = &ent1->item->oid;
	FUNC0(oid[0], oid[1], "", &revs->diffopt);
	FUNC1(revs);
	return 0;
}