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
struct commit_list {struct commit_list* next; struct commit* item; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct commit_list*,struct commit_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct commit*,struct commit_list**) ; 
 int /*<<< orphan*/  FUNC2 (struct commit_list*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct commit*,struct commit*) ; 
 int /*<<< orphan*/  the_repository ; 

int FUNC5(struct commit *commit, struct commit_list *with_commit)
{
	if (!with_commit)
		return 1;

	if (FUNC3(the_repository)) {
		struct commit_list *from_list = NULL;
		int result;
		FUNC1(commit, &from_list);
		result = FUNC0(from_list, with_commit, 0);
		FUNC2(from_list);
		return result;
	} else {
		while (with_commit) {
			struct commit *other;

			other = with_commit->item;
			with_commit = with_commit->next;
			if (FUNC4(other, commit))
				return 1;
		}
		return 0;
	}
}