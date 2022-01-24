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
struct checkout_opts {int new_branch_log; int dwim_new_local_branch; int overlay_mode; int switch_branch_doing_nothing_is_ok; int only_merge_on_switching_branches; int accept_ref; int accept_pathspec; int implicit_detach; int can_switch_when_in_progress; int empty_pathspec_ok; int checkout_index; int checkout_worktree; scalar_t__ orphan_from_empty_tree; int /*<<< orphan*/  new_branch_force; int /*<<< orphan*/  new_branch; } ;
typedef  int /*<<< orphan*/  opts ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct option*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct option FUNC2 (char,char*,int*,int /*<<< orphan*/ ) ; 
 struct option FUNC3 () ; 
 struct option FUNC4 (char,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct option* FUNC5 (struct checkout_opts*,struct option*) ; 
 struct option* FUNC6 (struct checkout_opts*,struct option*) ; 
 struct option* FUNC7 (struct checkout_opts*,struct option*) ; 
 int FUNC8 (int,char const**,char const*,struct checkout_opts*,struct option*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  checkout_usage ; 
 int /*<<< orphan*/  FUNC9 (struct checkout_opts*,int /*<<< orphan*/ ,int) ; 
 struct option* FUNC10 (struct option*) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char*) ; 

int FUNC12(int argc, const char **argv, const char *prefix)
{
	struct checkout_opts opts;
	struct option *options;
	struct option checkout_options[] = {
		FUNC4('b', NULL, &opts.new_branch, FUNC1("branch"),
			   FUNC1("create and checkout a new branch")),
		FUNC4('B', NULL, &opts.new_branch_force, FUNC1("branch"),
			   FUNC1("create/reset and checkout a branch")),
		FUNC2('l', NULL, &opts.new_branch_log, FUNC1("create reflog for new branch")),
		FUNC2(0, "guess", &opts.dwim_new_local_branch,
			 FUNC1("second guess 'git checkout <no-such-branch>' (default)")),
		FUNC2(0, "overlay", &opts.overlay_mode, FUNC1("use overlay mode (default)")),
		FUNC3()
	};
	int ret;

	FUNC9(&opts, 0, sizeof(opts));
	opts.dwim_new_local_branch = 1;
	opts.switch_branch_doing_nothing_is_ok = 1;
	opts.only_merge_on_switching_branches = 0;
	opts.accept_ref = 1;
	opts.accept_pathspec = 1;
	opts.implicit_detach = 1;
	opts.can_switch_when_in_progress = 1;
	opts.orphan_from_empty_tree = 0;
	opts.empty_pathspec_ok = 1;
	opts.overlay_mode = -1;
	opts.checkout_index = -2;    /* default on */
	opts.checkout_worktree = -2; /* default on */

	if (argc == 3 && !FUNC11(argv[1], "-b")) {
		/*
		 * User ran 'git checkout -b <branch>' and expects
		 * the same behavior as 'git switch -c <branch>'.
		 */
		opts.switch_branch_doing_nothing_is_ok = 0;
		opts.only_merge_on_switching_branches = 1;
	}

	options = FUNC10(checkout_options);
	options = FUNC6(&opts, options);
	options = FUNC7(&opts, options);
	options = FUNC5(&opts, options);

	ret = FUNC8(argc, argv, prefix, &opts,
			    options, checkout_usage);
	FUNC0(options);
	return ret;
}