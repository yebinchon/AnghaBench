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
struct TYPE_4__ {int /*<<< orphan*/  pathspec; scalar_t__ output_format; } ;
struct TYPE_3__ {int nr; } ;
struct rev_info {int max_count; int min_age; int max_age; TYPE_2__ diffopt; TYPE_1__ pending; scalar_t__ abbrev; } ;

/* Variables and functions */
 scalar_t__ DIFF_FORMAT_RAW ; 
 int /*<<< orphan*/  FUNC0 (struct rev_info) ; 
 int /*<<< orphan*/  diff_cache_usage ; 
 int FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_diff_basic_config ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char const**) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct rev_info*,char const*) ; 
 int FUNC8 (struct rev_info*,int) ; 
 int FUNC9 (int,char const**,struct rev_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char const*,char*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

int FUNC13(int argc, const char **argv, const char *prefix)
{
	struct rev_info rev;
	int cached = 0;
	int i;
	int result;

	if (argc == 2 && !FUNC11(argv[1], "-h"))
		FUNC12(diff_cache_usage);

	FUNC2(git_diff_basic_config, NULL); /* no "diff" UI options */
	FUNC7(the_repository, &rev, prefix);
	rev.abbrev = 0;
	FUNC4(argc, argv);

	argc = FUNC9(argc, argv, &rev, NULL);
	for (i = 1; i < argc; i++) {
		const char *arg = argv[i];

		if (!FUNC11(arg, "--cached"))
			cached = 1;
		else
			FUNC12(diff_cache_usage);
	}
	if (!rev.diffopt.output_format)
		rev.diffopt.output_format = DIFF_FORMAT_RAW;

	/*
	 * Make sure there is one revision (i.e. pending object),
	 * and there is no revision filtering parameters.
	 */
	if (rev.pending.nr != 1 ||
	    rev.max_count != -1 || rev.min_age != -1 || rev.max_age != -1)
		FUNC12(diff_cache_usage);
	if (!cached) {
		FUNC10();
		if (FUNC6(&rev.diffopt.pathspec) < 0) {
			FUNC3("read_cache_preload");
			return -1;
		}
	} else if (FUNC5() < 0) {
		FUNC3("read_cache");
		return -1;
	}
	result = FUNC8(&rev, cached);
	FUNC0(rev);
	return FUNC1(&rev.diffopt, result);
}