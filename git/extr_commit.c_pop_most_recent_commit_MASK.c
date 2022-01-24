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
struct TYPE_2__ {unsigned int flags; } ;
struct commit {TYPE_1__ object; struct commit_list* parents; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct commit*,struct commit_list**) ; 
 int /*<<< orphan*/  FUNC1 (struct commit*) ; 
 struct commit* FUNC2 (struct commit_list**) ; 

struct commit *FUNC3(struct commit_list **list,
				      unsigned int mark)
{
	struct commit *ret = FUNC2(list);
	struct commit_list *parents = ret->parents;

	while (parents) {
		struct commit *commit = parents->item;
		if (!FUNC1(commit) && !(commit->object.flags & mark)) {
			commit->object.flags |= mark;
			FUNC0(commit, list);
		}
		parents = parents->next;
	}
	return ret;
}