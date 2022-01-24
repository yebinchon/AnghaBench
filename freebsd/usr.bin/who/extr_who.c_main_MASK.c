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
 int Hflag ; 
 int /*<<< orphan*/  LC_TIME ; 
 int Tflag ; 
 int /*<<< orphan*/  UTXDB_ACTIVE ; 
 int aflag ; 
 int bflag ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int mflag ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int qflag ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int sflag ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 int uflag ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 

int
FUNC12(int argc, char *argv[])
{
	int ch;

	FUNC7(LC_TIME, "");

	while ((ch = FUNC3(argc, argv, "HTabmqsu")) != -1) {
		switch (ch) {
		case 'H':		/* Write column headings */
			Hflag = 1;
			break;
		case 'T':		/* Show terminal state */
			Tflag = 1;
			break;
		case 'a':		/* Same as -bdlprtTu */
			aflag = bflag = Tflag = uflag = 1;
			break;
		case 'b':		/* Show date of the last reboot */
			bflag = 1;
			break;
		case 'm':		/* Show info about current terminal */
			mflag = 1;
			break;
		case 'q':		/* "Quick" mode */
			qflag = 1;
			break;
		case 's':		/* Show name, line, time */
			sflag = 1;
			break;
		case 'u':		/* Show idle time */
			uflag = 1;
			break;
		default:
			FUNC10();
			/*NOTREACHED*/
		}
	}
	argc -= optind;
	argv += optind;

	if (argc >= 2 && FUNC9(argv[0], "am") == 0 &&
	    (FUNC9(argv[1], "i") == 0 || FUNC9(argv[1], "I") == 0)) {
		/* "who am i" or "who am I", equivalent to -m */
		mflag = 1;
		argc -= 2;
		argv += 2;
	}
	if (argc > 1)
		FUNC10();

	if (*argv != NULL) {
		if (FUNC8(UTXDB_ACTIVE, *argv) != 0)
			FUNC1(1, "%s", *argv);
	}

	if (qflag)
		FUNC6();
	else {
		if (sflag)
			Tflag = uflag = 0;
		if (Hflag)
			FUNC4();
		if (mflag)
			FUNC11();
		else
			FUNC5();
	}

	FUNC0();

	FUNC2(0);
}