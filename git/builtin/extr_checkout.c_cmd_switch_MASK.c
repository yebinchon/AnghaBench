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
struct checkout_opts {int dwim_new_local_branch; int discard_changes; int accept_ref; int only_merge_on_switching_branches; int orphan_from_empty_tree; int overlay_mode; scalar_t__ can_switch_when_in_progress; scalar_t__ implicit_detach; scalar_t__ switch_branch_doing_nothing_is_ok; scalar_t__ accept_pathspec; int /*<<< orphan*/  new_branch_force; int /*<<< orphan*/  new_branch; } ;
typedef  int /*<<< orphan*/  opts ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct option*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct option FUNC2 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ) ; 
 struct option FUNC3 () ; 
 struct option FUNC4 (char,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct option* FUNC5 (struct checkout_opts*,struct option*) ; 
 struct option* FUNC6 (struct checkout_opts*,struct option*) ; 
 int FUNC7 (int,char const**,char const*,struct checkout_opts*,struct option*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct checkout_opts*,int /*<<< orphan*/ ,int) ; 
 struct option* FUNC9 (struct option*) ; 
 int /*<<< orphan*/  switch_branch_usage ; 

int FUNC10(int argc, const char **argv, const char *prefix)
{
	struct checkout_opts opts;
	struct option *options = NULL;
	struct option switch_options[] = {
		FUNC4('c', "create", &opts.new_branch, FUNC1("branch"),
			   FUNC1("create and switch to a new branch")),
		FUNC4('C', "force-create", &opts.new_branch_force, FUNC1("branch"),
			   FUNC1("create/reset and switch to a branch")),
		FUNC2(0, "guess", &opts.dwim_new_local_branch,
			 FUNC1("second guess 'git switch <no-such-branch>'")),
		FUNC2(0, "discard-changes", &opts.discard_changes,
			 FUNC1("throw away local modifications")),
		FUNC3()
	};
	int ret;

	FUNC8(&opts, 0, sizeof(opts));
	opts.dwim_new_local_branch = 1;
	opts.accept_ref = 1;
	opts.accept_pathspec = 0;
	opts.switch_branch_doing_nothing_is_ok = 0;
	opts.only_merge_on_switching_branches = 1;
	opts.implicit_detach = 0;
	opts.can_switch_when_in_progress = 0;
	opts.orphan_from_empty_tree = 1;
	opts.overlay_mode = -1;

	options = FUNC9(switch_options);
	options = FUNC5(&opts, options);
	options = FUNC6(&opts, options);

	ret = FUNC7(argc, argv, prefix, &opts,
			    options, switch_branch_usage);
	FUNC0(options);
	return ret;
}