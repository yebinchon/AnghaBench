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
struct option {int dummy; } ;
struct checkout_opts {int /*<<< orphan*/  ignore_other_worktrees; int /*<<< orphan*/  overwrite_ignore; int /*<<< orphan*/  new_orphan_branch; int /*<<< orphan*/  force; int /*<<< orphan*/  track; int /*<<< orphan*/  force_detach; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRANCH_TRACK_EXPLICIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct option FUNC1 (char,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct option FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct option FUNC3 () ; 
 struct option FUNC4 (char,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct option FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct option FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARSE_OPT_NOCOMPLETE ; 
 int /*<<< orphan*/  FUNC7 (struct option*) ; 
 struct option* FUNC8 (struct option*,struct option*) ; 

__attribute__((used)) static struct option *FUNC9(
	struct checkout_opts *opts, struct option *prevopts)
{
	struct option options[] = {
		FUNC1('d', "detach", &opts->force_detach, FUNC0("detach HEAD at named commit")),
		FUNC4('t', "track",  &opts->track, FUNC0("set upstream info for new branch"),
			BRANCH_TRACK_EXPLICIT),
		FUNC6(&opts->force, FUNC0("force checkout (throw away local modifications)"),
			   PARSE_OPT_NOCOMPLETE),
		FUNC5(0, "orphan", &opts->new_orphan_branch, FUNC0("new-branch"), FUNC0("new unparented branch")),
		FUNC2(0, "overwrite-ignore", &opts->overwrite_ignore,
			   FUNC0("update ignored files (default)"),
			   PARSE_OPT_NOCOMPLETE),
		FUNC1(0, "ignore-other-worktrees", &opts->ignore_other_worktrees,
			 FUNC0("do not check if another worktree is holding the given ref")),
		FUNC3()
	};
	struct option *newopts = FUNC8(prevopts, options);
	FUNC7(prevopts);
	return newopts;
}