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
struct worktree {int /*<<< orphan*/  path; int /*<<< orphan*/  is_detached; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct worktree**) ; 
 struct worktree** FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct worktree*,char const*) ; 
 scalar_t__ FUNC5 (struct worktree*,char const*) ; 

__attribute__((used)) static void FUNC6(const char *target)
{
	struct worktree **worktrees = FUNC3(0);
	int i;

	for (i = 0; worktrees[i]; i++) {
		struct worktree *wt = worktrees[i];

		if (!wt->is_detached)
			continue;

		if (FUNC5(wt, target))
			FUNC1(FUNC0("Branch %s is being rebased at %s"),
			    target, wt->path);

		if (FUNC4(wt, target))
			FUNC1(FUNC0("Branch %s is being bisected at %s"),
			    target, wt->path);
	}

	FUNC2(worktrees);
}