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
struct worktree {int /*<<< orphan*/  id; } ;
struct option {int dummy; } ;

/* Variables and functions */
 struct option FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,...) ; 
 struct worktree* FUNC3 (struct worktree**,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct worktree**) ; 
 struct worktree** FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct worktree*) ; 
 int FUNC8 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct option*) ; 
 int /*<<< orphan*/  FUNC11 (struct worktree*) ; 
 int /*<<< orphan*/  worktree_usage ; 

__attribute__((used)) static int FUNC12(int ac, const char **av, const char *prefix)
{
	struct option options[] = {
		FUNC0()
	};
	struct worktree **worktrees, *wt;
	int ret;

	ac = FUNC8(ac, av, prefix, options, worktree_usage, 0);
	if (ac != 1)
		FUNC10(worktree_usage, options);

	worktrees = FUNC5(0);
	wt = FUNC3(worktrees, prefix, av[0]);
	if (!wt)
		FUNC2(FUNC1("'%s' is not a working tree"), av[0]);
	if (FUNC7(wt))
		FUNC2(FUNC1("The main working tree cannot be locked or unlocked"));
	if (!FUNC11(wt))
		FUNC2(FUNC1("'%s' is not locked"), av[0]);
	ret = FUNC9(FUNC6("worktrees/%s/locked", wt->id));
	FUNC4(worktrees);
	return ret;
}