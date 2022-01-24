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
struct checkout_opts {int checkout_index; int checkout_worktree; int ignore_unmerged; int overlay_mode; int accept_pathspec; char* ignore_unmerged_opt; scalar_t__ empty_pathspec_ok; scalar_t__ accept_ref; int /*<<< orphan*/  from_treeish; } ;
typedef  int /*<<< orphan*/  opts ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct option*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct option FUNC2 (char,char*,int*,int /*<<< orphan*/ ) ; 
 struct option FUNC3 () ; 
 struct option FUNC4 (char,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct option* FUNC5 (struct checkout_opts*,struct option*) ; 
 struct option* FUNC6 (struct checkout_opts*,struct option*) ; 
 int FUNC7 (int,char const**,char const*,struct checkout_opts*,struct option*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct checkout_opts*,int /*<<< orphan*/ ,int) ; 
 struct option* FUNC9 (struct option*) ; 
 int /*<<< orphan*/  restore_usage ; 

int FUNC10(int argc, const char **argv, const char *prefix)
{
	struct checkout_opts opts;
	struct option *options;
	struct option restore_options[] = {
		FUNC4('s', "source", &opts.from_treeish, "<tree-ish>",
			   FUNC1("which tree-ish to checkout from")),
		FUNC2('S', "staged", &opts.checkout_index,
			   FUNC1("restore the index")),
		FUNC2('W', "worktree", &opts.checkout_worktree,
			   FUNC1("restore the working tree (default)")),
		FUNC2(0, "ignore-unmerged", &opts.ignore_unmerged,
			 FUNC1("ignore unmerged entries")),
		FUNC2(0, "overlay", &opts.overlay_mode, FUNC1("use overlay mode")),
		FUNC3()
	};
	int ret;

	FUNC8(&opts, 0, sizeof(opts));
	opts.accept_ref = 0;
	opts.accept_pathspec = 1;
	opts.empty_pathspec_ok = 0;
	opts.overlay_mode = 0;
	opts.checkout_index = -1;    /* default off */
	opts.checkout_worktree = -2; /* default on */
	opts.ignore_unmerged_opt = "--ignore-unmerged";

	options = FUNC9(restore_options);
	options = FUNC6(&opts, options);
	options = FUNC5(&opts, options);

	ret = FUNC7(argc, argv, prefix, &opts,
			    options, restore_usage);
	FUNC0(options);
	return ret;
}