#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int output_format; int /*<<< orphan*/  pathspec; } ;
struct TYPE_3__ {scalar_t__ nr; } ;
struct rev_info {int max_count; int min_age; int max_age; int combine_merges; int dense_combined_merges; TYPE_2__ diffopt; TYPE_1__ pending; scalar_t__ abbrev; } ;

/* Variables and functions */
 int DIFF_FORMAT_PATCH ; 
 int DIFF_FORMAT_RAW ; 
 unsigned int DIFF_SILENT_ON_REMOVED ; 
 int /*<<< orphan*/  diff_files_usage ; 
 int FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_diff_basic_config ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char const**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct rev_info*,char const*) ; 
 int FUNC6 (struct rev_info*,unsigned int) ; 
 int FUNC7 (int,char const**,struct rev_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(int argc, const char **argv, const char *prefix)
{
	struct rev_info rev;
	int result;
	unsigned options = 0;

	if (argc == 2 && !FUNC8(argv[1], "-h"))
		FUNC9(diff_files_usage);

	FUNC1(git_diff_basic_config, NULL); /* no "diff" UI options */
	FUNC5(the_repository, &rev, prefix);
	rev.abbrev = 0;
	FUNC3(argc, argv);

	argc = FUNC7(argc, argv, &rev, NULL);
	while (1 < argc && argv[1][0] == '-') {
		if (!FUNC8(argv[1], "--base"))
			rev.max_count = 1;
		else if (!FUNC8(argv[1], "--ours"))
			rev.max_count = 2;
		else if (!FUNC8(argv[1], "--theirs"))
			rev.max_count = 3;
		else if (!FUNC8(argv[1], "-q"))
			options |= DIFF_SILENT_ON_REMOVED;
		else
			FUNC9(diff_files_usage);
		argv++; argc--;
	}
	if (!rev.diffopt.output_format)
		rev.diffopt.output_format = DIFF_FORMAT_RAW;

	/*
	 * Make sure there are NO revision (i.e. pending object) parameter,
	 * rev.max_count is reasonable (0 <= n <= 3), and
	 * there is no other revision filtering parameters.
	 */
	if (rev.pending.nr ||
	    rev.min_age != -1 || rev.max_age != -1 ||
	    3 < rev.max_count)
		FUNC9(diff_files_usage);

	/*
	 * "diff-files --base -p" should not combine merges because it
	 * was not asked to.  "diff-files -c -p" should not densify
	 * (the user should ask with "diff-files --cc" explicitly).
	 */
	if (rev.max_count == -1 && !rev.combine_merges &&
	    (rev.diffopt.output_format & DIFF_FORMAT_PATCH))
		rev.combine_merges = rev.dense_combined_merges = 1;

	if (FUNC4(&rev.diffopt.pathspec) < 0) {
		FUNC2("read_cache_preload");
		return -1;
	}
	result = FUNC6(&rev, options);
	return FUNC0(&rev.diffopt, result);
}