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
struct worktree {int dummy; } ;
struct option {int dummy; } ;

/* Variables and functions */
 int DEFAULT_ABBREV ; 
 int /*<<< orphan*/  GWT_SORT_LINKED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct option FUNC1 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ) ; 
 struct option FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct worktree**) ; 
 struct worktree** FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct worktree**,int*,int*) ; 
 int FUNC6 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct worktree*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct worktree*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct option*) ; 
 int /*<<< orphan*/  worktree_usage ; 

__attribute__((used)) static int FUNC10(int ac, const char **av, const char *prefix)
{
	int porcelain = 0;

	struct option options[] = {
		FUNC1(0, "porcelain", &porcelain, FUNC0("machine-readable output")),
		FUNC2()
	};

	ac = FUNC6(ac, av, prefix, options, worktree_usage, 0);
	if (ac)
		FUNC9(worktree_usage, options);
	else {
		struct worktree **worktrees = FUNC4(GWT_SORT_LINKED);
		int path_maxlen = 0, abbrev = DEFAULT_ABBREV, i;

		if (!porcelain)
			FUNC5(worktrees, &abbrev, &path_maxlen);

		for (i = 0; worktrees[i]; i++) {
			if (porcelain)
				FUNC8(worktrees[i]);
			else
				FUNC7(worktrees[i], path_maxlen, abbrev);
		}
		FUNC3(worktrees);
	}
	return 0;
}