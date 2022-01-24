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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct option FUNC1 () ; 
 struct option FUNC2 (int /*<<< orphan*/ ,char*,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,...) ; 
 struct worktree* FUNC5 (struct worktree**,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct worktree**) ; 
 struct worktree** FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct worktree*) ; 
 int FUNC10 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct option*) ; 
 char* FUNC12 (struct worktree*) ; 
 int /*<<< orphan*/  worktree_usage ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static int FUNC14(int ac, const char **av, const char *prefix)
{
	const char *reason = "", *old_reason;
	struct option options[] = {
		FUNC2(0, "reason", &reason, FUNC0("string"),
			   FUNC0("reason for locking")),
		FUNC1()
	};
	struct worktree **worktrees, *wt;

	ac = FUNC10(ac, av, prefix, options, worktree_usage, 0);
	if (ac != 1)
		FUNC11(worktree_usage, options);

	worktrees = FUNC7(0);
	wt = FUNC5(worktrees, prefix, av[0]);
	if (!wt)
		FUNC4(FUNC3("'%s' is not a working tree"), av[0]);
	if (FUNC9(wt))
		FUNC4(FUNC3("The main working tree cannot be locked or unlocked"));

	old_reason = FUNC12(wt);
	if (old_reason) {
		if (*old_reason)
			FUNC4(FUNC3("'%s' is already locked, reason: %s"),
			    av[0], old_reason);
		FUNC4(FUNC3("'%s' is already locked"), av[0]);
	}

	FUNC13(FUNC8("worktrees/%s/locked", wt->id),
		   "%s", reason);
	FUNC6(worktrees);
	return 0;
}