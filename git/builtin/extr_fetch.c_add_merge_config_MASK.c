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
struct refspec_item {int /*<<< orphan*/  src; } ;
struct ref {void* fetch_head_status; struct ref* next; int /*<<< orphan*/  name; } ;
struct branch {int merge_nr; TYPE_1__** merge; } ;
typedef  int /*<<< orphan*/  refspec ;
struct TYPE_2__ {int /*<<< orphan*/  src; } ;

/* Variables and functions */
 void* FETCH_HEAD_MERGE ; 
 scalar_t__ FUNC0 (struct branch*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ref const*,struct refspec_item*,struct ref***,int) ; 
 int /*<<< orphan*/  FUNC2 (struct refspec_item*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct ref **head,
			   const struct ref *remote_refs,
		           struct branch *branch,
		           struct ref ***tail)
{
	int i;

	for (i = 0; i < branch->merge_nr; i++) {
		struct ref *rm, **old_tail = *tail;
		struct refspec_item refspec;

		for (rm = *head; rm; rm = rm->next) {
			if (FUNC0(branch, i, rm->name)) {
				rm->fetch_head_status = FETCH_HEAD_MERGE;
				break;
			}
		}
		if (rm)
			continue;

		/*
		 * Not fetched to a remote-tracking branch?  We need to fetch
		 * it anyway to allow this branch's "branch.$name.merge"
		 * to be honored by 'git pull', but we do not have to
		 * fail if branch.$name.merge is misconfigured to point
		 * at a nonexisting branch.  If we were indeed called by
		 * 'git pull', it will notice the misconfiguration because
		 * there is no entry in the resulting FETCH_HEAD marked
		 * for merging.
		 */
		FUNC2(&refspec, 0, sizeof(refspec));
		refspec.src = branch->merge[i]->src;
		FUNC1(remote_refs, &refspec, tail, 1);
		for (rm = *old_tail; rm; rm = rm->next)
			rm->fetch_head_status = FETCH_HEAD_MERGE;
	}
}