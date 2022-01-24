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
struct commit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct commit**,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct option FUNC2 (char,char*,int*,int /*<<< orphan*/ ) ; 
 struct option FUNC3 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ,float) ; 
 struct option FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 struct commit* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_default_config ; 
 int FUNC8 (int,char const**) ; 
 int FUNC9 (int,char const**) ; 
 int FUNC10 (int,char const**) ; 
 int FUNC11 (int,char const**,int) ; 
 int /*<<< orphan*/  merge_base_usage ; 
 int FUNC12 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct commit**,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct option*) ; 

int FUNC15(int argc, const char **argv, const char *prefix)
{
	struct commit **rev;
	int rev_nr = 0;
	int show_all = 0;
	int cmdmode = 0;

	struct option options[] = {
		FUNC2('a', "all", &show_all, FUNC1("output all common ancestors")),
		FUNC3(0, "octopus", &cmdmode,
			    FUNC1("find ancestors for a single n-way merge"), 'o'),
		FUNC3(0, "independent", &cmdmode,
			    FUNC1("list revs not reachable from others"), 'r'),
		FUNC3(0, "is-ancestor", &cmdmode,
			    FUNC1("is the first one ancestor of the other?"), 'a'),
		FUNC3(0, "fork-point", &cmdmode,
			    FUNC1("find where <commit> forked from reflog of <ref>"), 'f'),
		FUNC4()
	};

	FUNC7(git_default_config, NULL);
	argc = FUNC12(argc, argv, prefix, options, merge_base_usage, 0);

	if (cmdmode == 'a') {
		if (argc < 2)
			FUNC14(merge_base_usage, options);
		if (show_all)
			FUNC5("--is-ancestor cannot be used with --all");
		return FUNC10(argc, argv);
	}

	if (cmdmode == 'r' && show_all)
		FUNC5("--independent cannot be used with --all");

	if (cmdmode == 'o')
		return FUNC11(argc, argv, show_all);

	if (cmdmode == 'r')
		return FUNC9(argc, argv);

	if (cmdmode == 'f') {
		if (argc < 1 || 2 < argc)
			FUNC14(merge_base_usage, options);
		return FUNC8(argc, argv);
	}

	if (argc < 2)
		FUNC14(merge_base_usage, options);

	FUNC0(rev, argc);
	while (argc-- > 0)
		rev[rev_nr++] = FUNC6(*argv++);
	return FUNC13(rev, rev_nr, show_all);
}