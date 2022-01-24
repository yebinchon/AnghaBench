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

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  EXIT_CANCELED ; 
 int /*<<< orphan*/  EXIT_CANNOT_INVOKE ; 
 int /*<<< orphan*/  EXIT_ENOENT ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int env_verbosity ; 
 char** environ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (int,char**,char*) ; 
 char* optarg ; 
 int /*<<< orphan*/  optind ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char) ; 
 int /*<<< orphan*/  FUNC7 (char*,char**) ; 
 int FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ *,int*,char***) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC11 (char*,char) ; 
 char* FUNC12 (char*) ; 
 int FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 () ; 

int
FUNC15(int argc, char **argv)
{
	char *altpath, **ep, *p, **parg, term;
	char *cleanenv[1];
	int ch, want_clear;
	int rtrn;

	altpath = NULL;
	want_clear = 0;
	term = '\n';
	while ((ch = FUNC5(argc, argv, "-0iP:S:u:v")) != -1)
		switch(ch) {
		case '-':
		case 'i':
			want_clear = 1;
			break;
		case '0':
			term = '\0';
			break;
		case 'P':
			altpath = FUNC12(optarg);
			break;
		case 'S':
			/*
			 * The -S option, for "split string on spaces, with
			 * support for some simple substitutions"...
			 */
			FUNC10(optarg, &optind, &argc, &argv);
			break;
		case 'u':
			if (env_verbosity)
				FUNC4(stderr, "#env unset:\t%s\n", optarg);
			rtrn = FUNC13(optarg);
			if (rtrn == -1)
				FUNC0(EXIT_FAILURE, "unsetenv %s", optarg);
			break;
		case 'v':
			env_verbosity++;
			if (env_verbosity > 1)
				FUNC4(stderr, "#env verbosity now at %d\n",
				    env_verbosity);
			break;
		case '?':
		default:
			FUNC14();
		}
	if (want_clear) {
		environ = cleanenv;
		cleanenv[0] = NULL;
		if (env_verbosity)
			FUNC4(stderr, "#env clearing environ\n");
	}
	for (argv += optind; *argv && (p = FUNC11(*argv, '=')); ++argv) {
		if (env_verbosity)
			FUNC4(stderr, "#env setenv:\t%s\n", *argv);
		*p = '\0';
		rtrn = FUNC8(*argv, p + 1, 1);
		*p = '=';
		if (rtrn == -1)
			FUNC0(EXIT_FAILURE, "setenv %s", *argv);
	}
	if (*argv) {
		if (term == '\0')
			FUNC1(EXIT_CANCELED, "cannot specify command with -0");
		if (altpath)
			FUNC7(altpath, argv);
		if (env_verbosity) {
			FUNC4(stderr, "#env executing:\t%s\n", *argv);
			for (parg = argv, argc = 0; *parg; parg++, argc++)
				FUNC4(stderr, "#env    arg[%d]=\t'%s'\n",
				    argc, *parg);
			if (env_verbosity > 1)
				FUNC9(1);
		}
		FUNC2(*argv, argv);
		FUNC0(errno == ENOENT ? EXIT_ENOENT : EXIT_CANNOT_INVOKE,
		    "%s", *argv);
	}
	for (ep = environ; *ep; ep++)
		(void)FUNC6("%s%c", *ep, term);
	FUNC3(0);
}