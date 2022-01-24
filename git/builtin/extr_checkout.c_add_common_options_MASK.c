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
struct option {char* member_2; char* member_4; char* member_5; int /*<<< orphan*/  member_7; int /*<<< orphan*/  member_6; int /*<<< orphan*/ * member_3; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct checkout_opts {int /*<<< orphan*/  conflict_style; int /*<<< orphan*/  merge; int /*<<< orphan*/  show_progress; int /*<<< orphan*/  quiet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  OPTION_CALLBACK ; 
 struct option FUNC1 (char,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct option FUNC2 () ; 
 struct option FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct option FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARSE_OPT_OPTARG ; 
 int /*<<< orphan*/  FUNC5 (struct option*) ; 
 int /*<<< orphan*/  option_parse_recurse_submodules_worktree_updater ; 
 struct option* FUNC6 (struct option*,struct option*) ; 

__attribute__((used)) static struct option *FUNC7(struct checkout_opts *opts,
					 struct option *prevopts)
{
	struct option options[] = {
		FUNC4(&opts->quiet, FUNC0("suppress progress reporting")),
		{ OPTION_CALLBACK, 0, "recurse-submodules", NULL,
			    "checkout", "control recursive updating of submodules",
			    PARSE_OPT_OPTARG, option_parse_recurse_submodules_worktree_updater },
		FUNC1(0, "progress", &opts->show_progress, FUNC0("force progress reporting")),
		FUNC1('m', "merge", &opts->merge, FUNC0("perform a 3-way merge with the new branch")),
		FUNC3(0, "conflict", &opts->conflict_style, FUNC0("style"),
			   FUNC0("conflict style (merge or diff3)")),
		FUNC2()
	};
	struct option *newopts = FUNC6(prevopts, options);
	FUNC5(prevopts);
	return newopts;
}