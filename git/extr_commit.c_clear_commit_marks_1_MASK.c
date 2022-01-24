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
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct TYPE_2__ {unsigned int flags; } ;
struct commit {struct commit_list* parents; TYPE_1__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct commit*,struct commit_list**) ; 

__attribute__((used)) static void FUNC1(struct commit_list **plist,
				 struct commit *commit, unsigned int mark)
{
	while (commit) {
		struct commit_list *parents;

		if (!(mark & commit->object.flags))
			return;

		commit->object.flags &= ~mark;

		parents = commit->parents;
		if (!parents)
			return;

		while ((parents = parents->next))
			FUNC0(parents->item, plist);

		commit = commit->parents->item;
	}
}