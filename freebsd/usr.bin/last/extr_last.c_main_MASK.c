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
 int /*<<< orphan*/  CODESET ; 
 int /*<<< orphan*/  D_MD_ORDER ; 
 int /*<<< orphan*/  HOST_TYPE ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 int /*<<< orphan*/  LC_TIME ; 
 int /*<<< orphan*/  REBOOT_TYPE ; 
 int /*<<< orphan*/  TTY_TYPE ; 
 int /*<<< orphan*/  USER_TYPE ; 
 int /*<<< orphan*/  UTXDB_LOG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int d_first ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 char* file ; 
 int FUNC9 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int maxrec ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 int noctfix ; 
 char* optarg ; 
 size_t optind ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ sflag ; 
 scalar_t__ snaptime ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC15 (char*,int) ; 
 scalar_t__ FUNC16 (char*,char*) ; 
 int FUNC17 (char*,char**,int) ; 
 char* FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int width ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC22 (int,char*,char*) ; 
 int /*<<< orphan*/  xo_finish_atexit ; 
 int FUNC23 (int,char**) ; 
 int /*<<< orphan*/  yflag ; 

int
FUNC24(int argc, char *argv[])
{
	int ch;
	char *p;

	(void) FUNC13(LC_TIME, "");
	d_first = (*FUNC11(D_MD_ORDER) == 'd');

	(void) FUNC13(LC_CTYPE, "");
	p = FUNC11(CODESET);
	if (FUNC16(p, "UTF-8") == 0 || FUNC16(p, "US-ASCII") == 0)
		noctfix = 1;

	argc = FUNC23(argc, argv);
	if (argc < 0)
		FUNC8(1);
	FUNC1(xo_finish_atexit);

	maxrec = -1;
	snaptime = 0;
	while ((ch = FUNC9(argc, argv, "0123456789d:f:h:n:st:wy")) != -1)
		switch (ch) {
		case '0': case '1': case '2': case '3': case '4':
		case '5': case '6': case '7': case '8': case '9':
			/*
			 * kludge: last was originally designed to take
			 * a number after a dash.
			 */
			if (maxrec == -1) {
				p = FUNC15(argv[optind - 1], ch);
				if (p == NULL)
					p = FUNC15(argv[optind], ch);
				maxrec = FUNC2(p);
				if (!maxrec)
					FUNC8(0);
			}
			break;
		case 'd':
			snaptime = FUNC7(optarg);
			break;
		case 'f':
			file = optarg;
			break;
		case 'h':
			FUNC10(optarg);
			FUNC0(HOST_TYPE, optarg);
			break;
		case 'n':
			errno = 0;
			maxrec = FUNC17(optarg, &p, 10);
			if (p == optarg || *p != '\0' || errno != 0 ||
			    maxrec <= 0)
				FUNC22(1, "%s: bad line count", optarg);
			break;
		case 's':
			sflag++;	/* Show delta as seconds */
			break;
		case 't':
			FUNC0(TTY_TYPE, FUNC18(optarg));
			break;
		case 'w':
			width = 8;
			break;
		case 'y':
			yflag++;
			break;
		case '?':
		default:
			FUNC19();
		}

	if (FUNC6() < 0)
		FUNC21(1, "can't limit stdio rights");

	FUNC3();
	FUNC4();

	/* Cache UTX database. */
	if (FUNC14(UTXDB_LOG, file) != 0)
		FUNC21(1, "%s", file != NULL ? file : "(default utx db)");

	if (FUNC5() < 0)
		FUNC21(1, "cap_enter");

	if (sflag && width == 8) FUNC19();

	if (argc) {
		FUNC12(stdout);
		for (argv += optind; *argv; ++argv) {
			if (FUNC16(*argv, "reboot") == 0)
				FUNC0(REBOOT_TYPE, *argv);
#define	COMPATIBILITY
#ifdef	COMPATIBILITY
			/* code to allow "last p5" to work */
			FUNC0(TTY_TYPE, FUNC18(*argv));
#endif
			FUNC0(USER_TYPE, *argv);
		}
	}
	FUNC20();
	FUNC8(0);
}