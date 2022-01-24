#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct stash_info {int /*<<< orphan*/  w_commit; int /*<<< orphan*/  b_commit; } ;
struct TYPE_6__ {int recursive; } ;
struct TYPE_7__ {TYPE_1__ flags; int /*<<< orphan*/  output_format; } ;
struct rev_info {TYPE_2__ diffopt; } ;
struct option {int dummy; } ;
struct argv_array {int argc; int /*<<< orphan*/  argv; } ;

/* Variables and functions */
 struct argv_array ARGV_ARRAY_INIT ; 
 int /*<<< orphan*/  DIFF_FORMAT_DIFFSTAT ; 
 int /*<<< orphan*/  DIFF_FORMAT_PATCH ; 
 struct option FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct argv_array*) ; 
 int /*<<< orphan*/  FUNC2 (struct argv_array*,char const*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct stash_info*) ; 
 int FUNC7 (struct stash_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_diff_ui_config ; 
 int /*<<< orphan*/  git_stash_config ; 
 int /*<<< orphan*/  git_stash_show_usage ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct rev_info*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int FUNC13 (int,int /*<<< orphan*/ ,struct rev_info*,int /*<<< orphan*/ *) ; 
 scalar_t__ show_patch ; 
 scalar_t__ show_stat ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct option*) ; 

__attribute__((used)) static int FUNC15(int argc, const char **argv, const char *prefix)
{
	int i;
	int ret = 0;
	struct stash_info info;
	struct rev_info rev;
	struct argv_array stash_args = ARGV_ARRAY_INIT;
	struct argv_array revision_args = ARGV_ARRAY_INIT;
	struct option options[] = {
		FUNC0()
	};

	FUNC9();
	FUNC8(git_diff_ui_config, NULL);
	FUNC10(&rev, prefix);

	FUNC2(&revision_args, argv[0]);
	for (i = 1; i < argc; i++) {
		if (argv[i][0] != '-')
			FUNC2(&stash_args, argv[i]);
		else
			FUNC2(&revision_args, argv[i]);
	}

	ret = FUNC7(&info, stash_args.argc, stash_args.argv);
	FUNC1(&stash_args);
	if (ret)
		return -1;

	/*
	 * The config settings are applied only if there are not passed
	 * any options.
	 */
	if (revision_args.argc == 1) {
		FUNC8(git_stash_config, NULL);
		if (show_stat)
			rev.diffopt.output_format = DIFF_FORMAT_DIFFSTAT;

		if (show_patch)
			rev.diffopt.output_format |= DIFF_FORMAT_PATCH;

		if (!show_stat && !show_patch) {
			FUNC6(&info);
			return 0;
		}
	}

	argc = FUNC13(revision_args.argc, revision_args.argv, &rev, NULL);
	if (argc > 1) {
		FUNC6(&info);
		FUNC14(git_stash_show_usage, options);
	}
	if (!rev.diffopt.output_format) {
		rev.diffopt.output_format = DIFF_FORMAT_PATCH;
		FUNC4(&rev.diffopt);
	}

	rev.diffopt.flags.recursive = 1;
	FUNC12(&rev.diffopt);
	FUNC5(&info.b_commit, &info.w_commit, "", &rev.diffopt);
	FUNC11(&rev);

	FUNC6(&info);
	return FUNC3(&rev.diffopt, 0);
}