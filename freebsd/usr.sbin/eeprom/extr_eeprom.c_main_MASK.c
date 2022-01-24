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
 int BUFSIZ ; 
 int /*<<< orphan*/  EX_NOINPUT ; 
 int EX_OK ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,char**,char*) ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  stdin ; 
 char* FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 () ; 

int
FUNC8(int argc, char *argv[])
{
	int do_stdin, opt;
	int aflag, rv;
	char *cp;
	char line[BUFSIZ];

	aflag = do_stdin = 0;
	rv = EX_OK;
	while ((opt = FUNC5(argc, argv, "-a")) != -1) {
		switch (opt) {
		case '-':
			if (aflag)
				FUNC7();
			do_stdin = 1;
			break;
		case 'a':
			if (do_stdin)
				FUNC7();
			aflag = 1;
			break;
		case '?':
		default:
			FUNC7();
			/* NOTREACHED */
		}
	}
	argc -= optind;
	argv += optind;

	if (aflag) {
		if (argc != 0)
			FUNC7();
		FUNC1();
	} else {
		if (do_stdin) {
			while (FUNC4(line, BUFSIZ, stdin) != NULL &&
			    rv == EX_OK) {
				if (line[0] == '\n')
					continue;
				if ((cp = FUNC6(line, '\n')) != NULL)
					*cp = '\0';
				rv = FUNC0(line);
			}
			if (FUNC3(stdin))
				FUNC2(EX_NOINPUT, "stdin");
		} else {
			if (argc == 0)
				FUNC7();
			while (argc && rv == EX_OK) {
				rv = FUNC0(*argv);
				++argv;
				--argc;
			}
		}
	}
	return (rv);
}