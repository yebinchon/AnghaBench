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
typedef  scalar_t__ iconv_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__,int,int) ; 
 int /*<<< orphan*/  do_list ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int FUNC7 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  long_options ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/ * stdin ; 
 scalar_t__ FUNC14 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

int
FUNC17(int argc, char **argv)
{
	iconv_t cd;
	FILE *fp;
	const char *opt_f, *opt_t;
	int ch, i, res;
	bool opt_c = false, opt_s = false;

	opt_f = opt_t = "";

	FUNC12(LC_ALL, "");
	FUNC13(argv[0]);

	while ((ch = FUNC7(argc, argv, "csLlf:t:",
	    long_options, NULL)) != -1) {
		switch (ch) {
		case 'c':
			opt_c = true;
			break;
		case 's':
			opt_s = true;
			break;
		case 'l':
			/* list */
			if (opt_s || opt_c || FUNC14(opt_f, "") != 0 ||
			    FUNC14(opt_t, "") != 0) {
				FUNC16("-l is not allowed with other flags.");
				FUNC15();
			}
			FUNC11(do_list, NULL);
			return (EXIT_SUCCESS);
		case 'f':
			/* from */
			if (optarg != NULL)
				opt_f = optarg;
			break;
		case 't':
			/* to */
			if (optarg != NULL)
				opt_t = optarg;
			break;
		default:
			FUNC15();
		}
	}
	argc -= optind;
	argv += optind;
	if ((FUNC14(opt_f, "") == 0) && (FUNC14(opt_t, "") == 0))
		FUNC15();

	if (FUNC2() < 0)
		FUNC4(EXIT_FAILURE, "capsicum");

	/*
	 * Cache NLS data, for strerror, for err(3), before entering capability
	 * mode.
	 */
	FUNC0();

	/*
	 * Cache iconv conversion handle before entering sandbox.
	 */
	cd = FUNC10(opt_t, opt_f);
	if (cd == (iconv_t)-1)
		FUNC4(EXIT_FAILURE, "iconv_open(%s, %s)", opt_t, opt_f);

	if (argc == 0) {
		if (FUNC1() < 0)
			FUNC4(EXIT_FAILURE, "unable to enter capability mode");
		res = FUNC3(stdin, cd, opt_s, opt_c);
	} else {
		res = 0;
		for (i = 0; i < argc; i++) {
			fp = (FUNC14(argv[i], "-") != 0) ?
			    FUNC6(argv[i], "r") : stdin;
			if (fp == NULL)
				FUNC4(EXIT_FAILURE, "Cannot open `%s'",
				    argv[i]);
			/* Enter Capsicum sandbox for final input file. */
			if (i + 1 == argc && FUNC1() < 0)
				FUNC4(EXIT_FAILURE,
				    "unable to enter capability mode");
			res |= FUNC3(fp, cd, opt_s, opt_c);
			(void)FUNC5(fp);

			/* Reset iconv descriptor state. */
			(void)FUNC8(cd, NULL, NULL, NULL, NULL);
		}
	}
	FUNC9(cd);
	return (res == 0 ? EXIT_SUCCESS : EXIT_FAILURE);
}