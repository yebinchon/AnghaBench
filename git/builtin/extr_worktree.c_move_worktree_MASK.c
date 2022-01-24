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
struct worktree {char const* path; } ;
struct strbuf {char const* buf; } ;
struct option {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct option FUNC1 () ; 
 struct option FUNC2 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARSE_OPT_NOCOMPLETE ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,char const*) ; 
 scalar_t__ FUNC6 (char const*) ; 
 char* FUNC7 (char const*) ; 
 struct worktree* FUNC8 (struct worktree**,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (struct worktree**) ; 
 struct worktree** FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (char const*) ; 
 scalar_t__ FUNC13 (struct worktree*) ; 
 int FUNC14 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC15 (char const*,char const*) ; 
 int FUNC16 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC17 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC18 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC19 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC20 (struct worktree*,char const*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,struct option*) ; 
 int /*<<< orphan*/  FUNC22 (struct worktree*) ; 
 scalar_t__ FUNC23 (struct worktree*,struct strbuf*,int /*<<< orphan*/ ) ; 
 char* FUNC24 (struct worktree*) ; 
 int /*<<< orphan*/  worktree_usage ; 

__attribute__((used)) static int FUNC25(int ac, const char **av, const char *prefix)
{
	int force = 0;
	struct option options[] = {
		FUNC2(&force,
			 FUNC0("force move even if worktree is dirty or locked"),
			 PARSE_OPT_NOCOMPLETE),
		FUNC1()
	};
	struct worktree **worktrees, *wt;
	struct strbuf dst = STRBUF_INIT;
	struct strbuf errmsg = STRBUF_INIT;
	const char *reason = NULL;
	char *path;

	ac = FUNC14(ac, av, prefix, options, worktree_usage, 0);
	if (ac != 2)
		FUNC21(worktree_usage, options);

	path = FUNC15(prefix, av[1]);
	FUNC17(&dst, path);
	FUNC9(path);

	worktrees = FUNC11(0);
	wt = FUNC8(worktrees, prefix, av[0]);
	if (!wt)
		FUNC4(FUNC3("'%s' is not a working tree"), av[0]);
	if (FUNC13(wt))
		FUNC4(FUNC3("'%s' is a main working tree"), av[0]);
	if (FUNC12(dst.buf)) {
		const char *sep = FUNC7(wt->path);

		if (!sep)
			FUNC4(FUNC3("could not figure out destination name from '%s'"),
			    wt->path);
		FUNC19(&dst);
		FUNC17(&dst, sep);
	}
	if (FUNC6(dst.buf))
		FUNC4(FUNC3("target '%s' already exists"), dst.buf);

	FUNC22(wt);

	if (force < 2)
		reason = FUNC24(wt);
	if (reason) {
		if (*reason)
			FUNC4(FUNC3("cannot move a locked working tree, lock reason: %s\nuse 'move -f -f' to override or unlock first"),
			    reason);
		FUNC4(FUNC3("cannot move a locked working tree;\nuse 'move -f -f' to override or unlock first"));
	}
	if (FUNC23(wt, &errmsg, 0))
		FUNC4(FUNC3("validation failed, cannot move working tree: %s"),
		    errmsg.buf);
	FUNC18(&errmsg);

	if (FUNC16(wt->path, dst.buf) == -1)
		FUNC5(FUNC3("failed to move '%s' to '%s'"), wt->path, dst.buf);

	FUNC20(wt, dst.buf);

	FUNC18(&dst);
	FUNC10(worktrees);
	return 0;
}