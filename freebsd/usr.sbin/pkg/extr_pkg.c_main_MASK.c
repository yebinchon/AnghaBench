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
 int /*<<< orphan*/  ASSUME_ALWAYS_YES ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  R_OK ; 
 int /*<<< orphan*/  X_OK ; 
 char* _LOCALBASE ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 char* confirmation_message ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char**) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 char* non_interactive_message ; 
 scalar_t__ FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC16 (char*,char*) ; 

int
FUNC17(int argc, char *argv[])
{
	char pkgpath[MAXPATHLEN];
	const char *pkgarg;
	int i;
	bool bootstrap_only, force, yes;

	bootstrap_only = false;
	force = false;
	pkgarg = NULL;
	yes = false;

	FUNC15(pkgpath, MAXPATHLEN, "%s/sbin/pkg",
	    FUNC11("LOCALBASE") ? FUNC11("LOCALBASE") : _LOCALBASE);

	if (argc > 1 && FUNC16(argv[1], "bootstrap") == 0) {
		bootstrap_only = true;
		if (argc == 3 && FUNC16(argv[2], "-f") == 0)
			force = true;
	}

	if ((bootstrap_only && force) || FUNC0(pkgpath, X_OK) == -1) {
		/* 
		 * To allow 'pkg -N' to be used as a reliable test for whether
		 * a system is configured to use pkg, don't bootstrap pkg
		 * when that argument is given as argv[1].
		 */
		if (argv[1] != NULL && FUNC16(argv[1], "-N") == 0)
			FUNC6(EXIT_FAILURE, "pkg is not installed");

		FUNC5();

		if (argc > 1 && FUNC16(argv[1], "add") == 0) {
			if (argc > 2 && FUNC16(argv[2], "-f") == 0) {
				force = true;
				pkgarg = argv[3];
			} else
				pkgarg = argv[2];
			if (pkgarg == NULL) {
				FUNC10(stderr, "Path to pkg.txz required\n");
				FUNC8(EXIT_FAILURE);
			}
			if (FUNC0(pkgarg, R_OK) == -1) {
				FUNC10(stderr, "No such file: %s\n", pkgarg);
				FUNC8(EXIT_FAILURE);
			}
			if (FUNC2(pkgarg, force) != 0)
				FUNC8(EXIT_FAILURE);
			FUNC8(EXIT_SUCCESS);
		}
		/*
		 * Do not ask for confirmation if either of stdin or stdout is
		 * not tty. Check the environment to see if user has answer
		 * tucked in there already.
		 */
		FUNC3(ASSUME_ALWAYS_YES, &yes);
		if (!yes) {
			for (i = 1; i < argc; i++) {
				if (FUNC16(argv[i], "-y") == 0 ||
				    FUNC16(argv[i], "--yes") == 0) {
					yes = true;
					break;
				}
			}
		}
		if (!yes) {
			if (!FUNC12(FUNC9(stdin))) {
				FUNC10(stderr, "%s", non_interactive_message);
				FUNC8(EXIT_FAILURE);
			}

			FUNC14("%s", confirmation_message);
			if (FUNC13() == 0)
				FUNC8(EXIT_FAILURE);
		}
		if (FUNC1(force) != 0)
			FUNC8(EXIT_FAILURE);
		FUNC4();

		if (bootstrap_only)
			FUNC8(EXIT_SUCCESS);
	} else if (bootstrap_only) {
		FUNC14("pkg already bootstrapped at %s\n", pkgpath);
		FUNC8(EXIT_SUCCESS);
	}

	FUNC7(pkgpath, argv);

	/* NOT REACHED */
	return (EXIT_FAILURE);
}