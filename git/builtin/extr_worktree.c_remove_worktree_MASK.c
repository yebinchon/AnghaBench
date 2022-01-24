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
struct worktree {int /*<<< orphan*/  id; int /*<<< orphan*/  path; } ;
struct strbuf {char const* buf; } ;
struct option {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct option FUNC1 () ; 
 struct option FUNC2 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARSE_OPT_NOCOMPLETE ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  WT_VALIDATE_WORKTREE_MISSING_OK ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct worktree*,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct worktree*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 struct worktree* FUNC10 (struct worktree**,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (struct worktree**) ; 
 struct worktree** FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct worktree*) ; 
 int FUNC14 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct option*) ; 
 scalar_t__ FUNC17 (struct worktree*,struct strbuf*,int /*<<< orphan*/ ) ; 
 char* FUNC18 (struct worktree*) ; 
 int /*<<< orphan*/  worktree_usage ; 

__attribute__((used)) static int FUNC19(int ac, const char **av, const char *prefix)
{
	int force = 0;
	struct option options[] = {
		FUNC2(&force,
			 FUNC0("force removal even if worktree is dirty or locked"),
			 PARSE_OPT_NOCOMPLETE),
		FUNC1()
	};
	struct worktree **worktrees, *wt;
	struct strbuf errmsg = STRBUF_INIT;
	const char *reason = NULL;
	int ret = 0;

	ac = FUNC14(ac, av, prefix, options, worktree_usage, 0);
	if (ac != 1)
		FUNC16(worktree_usage, options);

	worktrees = FUNC12(0);
	wt = FUNC10(worktrees, prefix, av[0]);
	if (!wt)
		FUNC8(FUNC3("'%s' is not a working tree"), av[0]);
	if (FUNC13(wt))
		FUNC8(FUNC3("'%s' is a main working tree"), av[0]);
	if (force < 2)
		reason = FUNC18(wt);
	if (reason) {
		if (*reason)
			FUNC8(FUNC3("cannot remove a locked working tree, lock reason: %s\nuse 'remove -f -f' to override or unlock first"),
			    reason);
		FUNC8(FUNC3("cannot remove a locked working tree;\nuse 'remove -f -f' to override or unlock first"));
	}
	if (FUNC17(wt, &errmsg, WT_VALIDATE_WORKTREE_MISSING_OK))
		FUNC8(FUNC3("validation failed, cannot remove working tree: %s"),
		    errmsg.buf);
	FUNC15(&errmsg);

	if (FUNC9(wt->path)) {
		if (!force)
			FUNC4(wt, av[0]);

		ret |= FUNC6(wt);
	}
	/*
	 * continue on even if ret is non-zero, there's no going back
	 * from here.
	 */
	ret |= FUNC5(wt->id);
	FUNC7();

	FUNC11(worktrees);
	return ret;
}