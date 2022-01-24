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
struct bisect_terms {int /*<<< orphan*/ * term_bad; int /*<<< orphan*/ * term_good; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct option FUNC1 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ) ; 
 struct option FUNC2 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ,int) ; 
 struct option FUNC3 () ; 
 int PARSE_OPT_KEEP_DASHDASH ; 
 int PARSE_OPT_KEEP_UNKNOWN ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC7 (struct bisect_terms*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int FUNC9 (struct bisect_terms*,int,char const**,int) ; 
 int FUNC10 (struct bisect_terms*,char const*) ; 
 int FUNC11 (char const*,char const*,struct bisect_terms*,int) ; 
 int FUNC12 (struct bisect_terms*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (char const**,int) ; 
 int FUNC14 (char*,...) ; 
 int /*<<< orphan*/  FUNC15 (struct bisect_terms*) ; 
 int /*<<< orphan*/  git_bisect_helper_usage ; 
 int FUNC16 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct bisect_terms*,char const*,char const*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,struct option*) ; 
 int FUNC19 (char const*,char const*) ; 

int FUNC20(int argc, const char **argv, const char *prefix)
{
	enum {
		NEXT_ALL = 1,
		WRITE_TERMS,
		BISECT_CLEAN_STATE,
		CHECK_EXPECTED_REVS,
		BISECT_RESET,
		BISECT_WRITE,
		CHECK_AND_SET_TERMS,
		BISECT_NEXT_CHECK,
		BISECT_TERMS,
		BISECT_START
	} cmdmode = 0;
	int no_checkout = 0, res = 0, nolog = 0;
	struct option options[] = {
		FUNC2(0, "next-all", &cmdmode,
			 FUNC0("perform 'git bisect next'"), NEXT_ALL),
		FUNC2(0, "write-terms", &cmdmode,
			 FUNC0("write the terms to .git/BISECT_TERMS"), WRITE_TERMS),
		FUNC2(0, "bisect-clean-state", &cmdmode,
			 FUNC0("cleanup the bisection state"), BISECT_CLEAN_STATE),
		FUNC2(0, "check-expected-revs", &cmdmode,
			 FUNC0("check for expected revs"), CHECK_EXPECTED_REVS),
		FUNC2(0, "bisect-reset", &cmdmode,
			 FUNC0("reset the bisection state"), BISECT_RESET),
		FUNC2(0, "bisect-write", &cmdmode,
			 FUNC0("write out the bisection state in BISECT_LOG"), BISECT_WRITE),
		FUNC2(0, "check-and-set-terms", &cmdmode,
			 FUNC0("check and set terms in a bisection state"), CHECK_AND_SET_TERMS),
		FUNC2(0, "bisect-next-check", &cmdmode,
			 FUNC0("check whether bad or good terms exist"), BISECT_NEXT_CHECK),
		FUNC2(0, "bisect-terms", &cmdmode,
			 FUNC0("print out the bisect terms"), BISECT_TERMS),
		FUNC2(0, "bisect-start", &cmdmode,
			 FUNC0("start the bisect session"), BISECT_START),
		FUNC1(0, "no-checkout", &no_checkout,
			 FUNC0("update BISECT_HEAD instead of checking out the current commit")),
		FUNC1(0, "no-log", &nolog,
			 FUNC0("no log for BISECT_WRITE")),
		FUNC3()
	};
	struct bisect_terms terms = { .term_good = NULL, .term_bad = NULL };

	argc = FUNC16(argc, argv, prefix, options,
			     git_bisect_helper_usage,
			     PARSE_OPT_KEEP_DASHDASH | PARSE_OPT_KEEP_UNKNOWN);

	if (!cmdmode)
		FUNC18(git_bisect_helper_usage, options);

	switch (cmdmode) {
	case NEXT_ALL:
		return FUNC6(the_repository, prefix, no_checkout);
	case WRITE_TERMS:
		if (argc != 2)
			return FUNC14(FUNC4("--write-terms requires two arguments"));
		return FUNC19(argv[0], argv[1]);
	case BISECT_CLEAN_STATE:
		if (argc != 0)
			return FUNC14(FUNC4("--bisect-clean-state requires no arguments"));
		return FUNC5();
	case CHECK_EXPECTED_REVS:
		FUNC13(argv, argc);
		return 0;
	case BISECT_RESET:
		if (argc > 1)
			return FUNC14(FUNC4("--bisect-reset requires either no argument or a commit"));
		return !!FUNC8(argc ? argv[0] : NULL);
	case BISECT_WRITE:
		if (argc != 4 && argc != 5)
			return FUNC14(FUNC4("--bisect-write requires either 4 or 5 arguments"));
		FUNC17(&terms, argv[3], argv[2]);
		res = FUNC11(argv[0], argv[1], &terms, nolog);
		break;
	case CHECK_AND_SET_TERMS:
		if (argc != 3)
			return FUNC14(FUNC4("--check-and-set-terms requires 3 arguments"));
		FUNC17(&terms, argv[2], argv[1]);
		res = FUNC12(&terms, argv[0]);
		break;
	case BISECT_NEXT_CHECK:
		if (argc != 2 && argc != 3)
			return FUNC14(FUNC4("--bisect-next-check requires 2 or 3 arguments"));
		FUNC17(&terms, argv[1], argv[0]);
		res = FUNC7(&terms, argc == 3 ? argv[2] : NULL);
		break;
	case BISECT_TERMS:
		if (argc > 1)
			return FUNC14(FUNC4("--bisect-terms requires 0 or 1 argument"));
		res = FUNC10(&terms, argc == 1 ? argv[0] : NULL);
		break;
	case BISECT_START:
		FUNC17(&terms, "bad", "good");
		res = FUNC9(&terms, no_checkout, argv, argc);
		break;
	default:
		return FUNC14("BUG: unknown subcommand '%d'", cmdmode);
	}
	FUNC15(&terms);
	return !!res;
}