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
typedef  int /*<<< orphan*/  cap_rights_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_FSTAT ; 
 int /*<<< orphan*/  CAP_READ ; 
 int /*<<< orphan*/  FA_OPEN ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SIGINFO ; 
 int /*<<< orphan*/  XO_STYLE_TEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (char*) ; 
 scalar_t__ dochar ; 
 scalar_t__ doline ; 
 scalar_t__ dolongline ; 
 scalar_t__ domulti ; 
 scalar_t__ doword ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/ * fa ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int,char**,char*) ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  siginfo_handler ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stderr_handle ; 
 int /*<<< orphan*/  tcharct ; 
 int /*<<< orphan*/  tlinect ; 
 int /*<<< orphan*/  tlongline ; 
 int /*<<< orphan*/  twordct ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int FUNC21 (int,char**) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 

int
FUNC23(int argc, char *argv[])
{
	int ch, errors, total;
	cap_rights_t rights;

	(void) FUNC9(LC_CTYPE, "");

	argc = FUNC21(argc, argv);
	if (argc < 0)
		return (argc);

	while ((ch = FUNC8(argc, argv, "clmwL")) != -1)
		switch((char)ch) {
		case 'l':
			doline = 1;
			break;
		case 'w':
			doword = 1;
			break;
		case 'c':
			dochar = 1;
			domulti = 0;
			break;
		case 'L':
			dolongline = 1;
			break;
		case 'm':
			domulti = 1;
			dochar = 0;
			break;
		case '?':
		default:
			FUNC12();
		}
	argv += optind;
	argc -= optind;

	(void)FUNC11(SIGINFO, siginfo_handler);

	fa = FUNC7(argc, argv, O_RDONLY, 0,
	    FUNC0(&rights, CAP_READ, CAP_FSTAT), FA_OPEN);
	if (fa == NULL) {
		FUNC22("Unable to init casper");
		FUNC5(1);
	}

	FUNC1();
	if (FUNC3() < 0) {
		FUNC22("Unable to limit stdio");
		FUNC6(fa);
		FUNC5(1);
	}

	if (FUNC2() < 0) {
		FUNC22("Unable to enter capability mode");
		FUNC6(fa);
		FUNC5(1);
	}

	/* Wc's flags are on by default. */
	if (doline + doword + dochar + domulti + dolongline == 0)
		doline = doword = dochar = 1;

	stderr_handle = FUNC16(stderr, XO_STYLE_TEXT, 0);
	FUNC18("wc");
	FUNC20("file");

	errors = 0;
	total = 0;
	if (!*argv) {
	 	FUNC19("file");
		if (FUNC4((char *)NULL) != 0)
			++errors;
	 	FUNC14("file");
	} else {
		do {
	 		FUNC19("file");
			if (FUNC4(*argv) != 0)
				++errors;
	 		FUNC14("file");
			++total;
		} while(*++argv);
	}

	FUNC15("file");

	if (total > 1) {
		FUNC18("total");
		FUNC10("total", tlinect, twordct, tcharct, tlongline);
		FUNC13("total");
	}

	FUNC6(fa);
	FUNC13("wc");
	FUNC17();
	FUNC5(errors == 0 ? 0 : 1);
}