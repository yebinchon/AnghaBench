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
struct checkout_opts {int /*<<< orphan*/  ignore_skipworktree; int /*<<< orphan*/  patch_mode; int /*<<< orphan*/  writeout_stage; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct option FUNC1 (char,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct option FUNC2 () ; 
 struct option FUNC3 (char,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARSE_OPT_NONEG ; 
 int /*<<< orphan*/  FUNC4 (struct option*) ; 
 struct option* FUNC5 (struct option*,struct option*) ; 

__attribute__((used)) static struct option *FUNC6(struct checkout_opts *opts,
						struct option *prevopts)
{
	struct option options[] = {
		FUNC3('2', "ours", &opts->writeout_stage,
			      FUNC0("checkout our version for unmerged files"),
			      2, PARSE_OPT_NONEG),
		FUNC3('3', "theirs", &opts->writeout_stage,
			      FUNC0("checkout their version for unmerged files"),
			      3, PARSE_OPT_NONEG),
		FUNC1('p', "patch", &opts->patch_mode, FUNC0("select hunks interactively")),
		FUNC1(0, "ignore-skip-worktree-bits", &opts->ignore_skipworktree,
			 FUNC0("do not limit pathspecs to sparse entries only")),
		FUNC2()
	};
	struct option *newopts = FUNC5(prevopts, options);
	FUNC4(prevopts);
	return newopts;
}