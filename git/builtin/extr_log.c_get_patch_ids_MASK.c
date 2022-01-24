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
struct TYPE_4__ {int nr; TYPE_1__* objects; } ;
struct rev_info {int max_parents; int /*<<< orphan*/  prefix; TYPE_2__ pending; } ;
struct patch_ids {int dummy; } ;
struct object {unsigned int flags; int /*<<< orphan*/  oid; } ;
struct commit {int dummy; } ;
struct TYPE_3__ {struct object* item; } ;

/* Variables and functions */
 unsigned int ADDED ; 
 unsigned int SEEN ; 
 unsigned int SHOWN ; 
 unsigned int UNINTERESTING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct commit*,struct patch_ids*) ; 
 int /*<<< orphan*/  FUNC2 (struct rev_info*,struct object*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct commit*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct commit* FUNC5 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct patch_ids*) ; 
 struct commit* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct rev_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static void FUNC10(struct rev_info *rev, struct patch_ids *ids)
{
	struct rev_info check_rev;
	struct commit *commit, *c1, *c2;
	struct object *o1, *o2;
	unsigned flags1, flags2;

	if (rev->pending.nr != 2)
		FUNC4(FUNC0("need exactly one range"));

	o1 = rev->pending.objects[0].item;
	o2 = rev->pending.objects[1].item;
	flags1 = o1->flags;
	flags2 = o2->flags;
	c1 = FUNC7(the_repository, &o1->oid);
	c2 = FUNC7(the_repository, &o2->oid);

	if ((flags1 & UNINTERESTING) == (flags2 & UNINTERESTING))
		FUNC4(FUNC0("not a range"));

	FUNC6(the_repository, ids);

	/* given a range a..b get all patch ids for b..a */
	FUNC9(the_repository, &check_rev, rev->prefix);
	check_rev.max_parents = 1;
	o1->flags ^= UNINTERESTING;
	o2->flags ^= UNINTERESTING;
	FUNC2(&check_rev, o1, "o1");
	FUNC2(&check_rev, o2, "o2");
	if (FUNC8(&check_rev))
		FUNC4(FUNC0("revision walk setup failed"));

	while ((commit = FUNC5(&check_rev)) != NULL) {
		FUNC1(commit, ids);
	}

	/* reset for next revision walk */
	FUNC3(c1, SEEN | UNINTERESTING | SHOWN | ADDED);
	FUNC3(c2, SEEN | UNINTERESTING | SHOWN | ADDED);
	o1->flags = flags1;
	o2->flags = flags2;
}