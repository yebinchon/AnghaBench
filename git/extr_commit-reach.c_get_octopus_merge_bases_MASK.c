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
struct commit_list {struct commit_list* next; int /*<<< orphan*/  item; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct commit_list**) ; 
 struct commit_list* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct commit_list *FUNC2(struct commit_list *in)
{
	struct commit_list *i, *j, *k, *ret = NULL;

	if (!in)
		return ret;

	FUNC0(in->item, &ret);

	for (i = in->next; i; i = i->next) {
		struct commit_list *new_commits = NULL, *end = NULL;

		for (j = ret; j; j = j->next) {
			struct commit_list *bases;
			bases = FUNC1(i->item, j->item);
			if (!new_commits)
				new_commits = bases;
			else
				end->next = bases;
			for (k = bases; k; k = k->next)
				end = k;
		}
		ret = new_commits;
	}
	return ret;
}