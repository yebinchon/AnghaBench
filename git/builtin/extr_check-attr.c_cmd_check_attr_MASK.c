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
struct git_attr {int dummy; } ;
struct attr_check {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ATTR_INDEX ; 
 int /*<<< orphan*/  PARSE_OPT_KEEP_DASHDASH ; 
 scalar_t__ all_attrs ; 
 struct attr_check* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct attr_check*,struct git_attr const*) ; 
 int /*<<< orphan*/  FUNC2 (struct attr_check*) ; 
 scalar_t__ cached_attrs ; 
 int /*<<< orphan*/  FUNC3 (char const*,struct attr_check*,scalar_t__,char const*) ; 
 int /*<<< orphan*/  check_attr_options ; 
 int /*<<< orphan*/  FUNC4 (char const*,struct attr_check*,scalar_t__) ; 
 int /*<<< orphan*/  check_attr_usage ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 struct git_attr* FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_default_config ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int FUNC13 (int,char const**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 scalar_t__ stdin_paths ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC16 (char const*,char*) ; 

int FUNC17(int argc, const char **argv, const char *prefix)
{
	struct attr_check *check;
	int cnt, i, doubledash, filei;

	if (!FUNC11())
		FUNC15();

	FUNC10(git_default_config, NULL);

	argc = FUNC13(argc, argv, prefix, check_attr_options,
			     check_attr_usage, PARSE_OPT_KEEP_DASHDASH);

	if (FUNC14() < 0) {
		FUNC5("invalid cache");
	}

	if (cached_attrs)
		FUNC9(GIT_ATTR_INDEX);

	doubledash = -1;
	for (i = 0; doubledash < 0 && i < argc; i++) {
		if (!FUNC16(argv[i], "--"))
			doubledash = i;
	}

	/* Process --all and/or attribute arguments: */
	if (all_attrs) {
		if (doubledash >= 1)
			FUNC7("Attributes and --all both specified");

		cnt = 0;
		filei = doubledash + 1;
	} else if (doubledash == 0) {
		FUNC7("No attribute specified");
	} else if (doubledash < 0) {
		if (!argc)
			FUNC7("No attribute specified");

		if (stdin_paths) {
			/* Treat all arguments as attribute names. */
			cnt = argc;
			filei = argc;
		} else {
			/* Treat exactly one argument as an attribute name. */
			cnt = 1;
			filei = 1;
		}
	} else {
		cnt = doubledash;
		filei = doubledash + 1;
	}

	/* Check file argument(s): */
	if (stdin_paths) {
		if (filei < argc)
			FUNC7("Can't specify files with --stdin");
	} else {
		if (filei >= argc)
			FUNC7("No file specified");
	}

	check = FUNC0();
	if (!all_attrs) {
		for (i = 0; i < cnt; i++) {
			const struct git_attr *a = FUNC8(argv[i]);

			if (!a)
				return FUNC6("%s: not a valid attribute name",
					     argv[i]);
			FUNC1(check, a);
		}
	}

	if (stdin_paths)
		FUNC4(prefix, check, all_attrs);
	else {
		for (i = filei; i < argc; i++)
			FUNC3(prefix, check, all_attrs, argv[i]);
		FUNC12(stdout, "attribute to stdout");
	}

	FUNC2(check);
	return 0;
}