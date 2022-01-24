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
struct commit_list {struct commit_list* next; struct commit* item; } ;
struct TYPE_2__ {int flags; } ;
struct commit {TYPE_1__ object; struct commit_list* parents; } ;

/* Variables and functions */
 int REV_SHIFT ; 
 int UNINTERESTING ; 
 int /*<<< orphan*/  FUNC0 (struct commit*,struct commit_list**) ; 
 int /*<<< orphan*/  FUNC1 (struct commit_list*) ; 
 scalar_t__ FUNC2 (struct commit*,struct commit_list**) ; 
 int /*<<< orphan*/  FUNC3 (struct commit*) ; 
 struct commit* FUNC4 (struct commit_list**) ; 

__attribute__((used)) static void FUNC5(struct commit_list **list_p,
		      struct commit_list **seen_p,
		      int num_rev, int extra)
{
	int all_mask = ((1u << (REV_SHIFT + num_rev)) - 1);
	int all_revs = all_mask & ~((1u << REV_SHIFT) - 1);

	while (*list_p) {
		struct commit_list *parents;
		int still_interesting = !!FUNC1(*list_p);
		struct commit *commit = FUNC4(list_p);
		int flags = commit->object.flags & all_mask;

		if (!still_interesting && extra <= 0)
			break;

		FUNC2(commit, seen_p);
		if ((flags & all_revs) == all_revs)
			flags |= UNINTERESTING;
		parents = commit->parents;

		while (parents) {
			struct commit *p = parents->item;
			int this_flag = p->object.flags;
			parents = parents->next;
			if ((this_flag & flags) == flags)
				continue;
			FUNC3(p);
			if (FUNC2(p, seen_p) && !still_interesting)
				extra--;
			p->object.flags |= flags;
			FUNC0(p, list_p);
		}
	}

	/*
	 * Postprocess to complete well-poisoning.
	 *
	 * At this point we have all the commits we have seen in
	 * seen_p list.  Mark anything that can be reached from
	 * uninteresting commits not interesting.
	 */
	for (;;) {
		int changed = 0;
		struct commit_list *s;
		for (s = *seen_p; s; s = s->next) {
			struct commit *c = s->item;
			struct commit_list *parents;

			if (((c->object.flags & all_revs) != all_revs) &&
			    !(c->object.flags & UNINTERESTING))
				continue;

			/* The current commit is either a merge base or
			 * already uninteresting one.  Mark its parents
			 * as uninteresting commits _only_ if they are
			 * already parsed.  No reason to find new ones
			 * here.
			 */
			parents = c->parents;
			while (parents) {
				struct commit *p = parents->item;
				parents = parents->next;
				if (!(p->object.flags & UNINTERESTING)) {
					p->object.flags |= UNINTERESTING;
					changed = 1;
				}
			}
		}
		if (!changed)
			break;
	}
}