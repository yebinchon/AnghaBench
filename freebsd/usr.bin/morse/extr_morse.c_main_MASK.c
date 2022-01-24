#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  c_cflag; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCAL ; 
 int /*<<< orphan*/  CODESET ; 
 int /*<<< orphan*/  DELIMITERS ; 
 int EOF ; 
 scalar_t__ FREQUENCY ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  GETOPTOPTS ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 int O_NONBLOCK ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGTERM ; 
 char* SPEAKER ; 
 int /*<<< orphan*/  TCSANOW ; 
 int /*<<< orphan*/  TIOCMGET ; 
 int /*<<< orphan*/  TIOCMSET ; 
 int TIOCM_RTS ; 
 char* USAGE ; 
 int /*<<< orphan*/  _IONBF ; 
 void* FUNC0 (scalar_t__) ; 
 int cdot_clock ; 
 int cpm ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ device ; 
 int dot_clock ; 
 int eflag ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ freq ; 
 int FUNC7 () ; 
 int FUNC8 (int,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hightab ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  iso8859_1tab ; 
 int /*<<< orphan*/  iso8859_7tab ; 
 int /*<<< orphan*/  koi8rtab ; 
 int lflag ; 
 int line ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_1__ ntty ; 
 int olflags ; 
 int FUNC12 (char*,int,...) ; 
 scalar_t__ optarg ; 
 scalar_t__ optind ; 
 TYPE_1__ otty ; 
 int pflag ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int rflag ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int sflag ; 
 int /*<<< orphan*/  sighandler ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int spkr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC18 (char*,char*) ; 
 char* FUNC19 (char*,int /*<<< orphan*/ ) ; 
 int FUNC20 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int wpm ; 

int
FUNC22(int argc, char *argv[])
{
	int    ch, lflags;
	char  *p, *codeset;

	while ((ch = FUNC8(argc, argv, GETOPTOPTS)) != -1)
		switch ((char) ch) {
		case 'c':
			cpm = FUNC0(optarg);
			break;
		case 'd':
			device = optarg;
			break;
		case 'e':
			eflag = 1;
			FUNC16(stdout, 0, _IONBF, 0);
			break;
		case 'f':
			freq = FUNC0(optarg);
			break;
		case 'l':
			lflag = 1;
			break;
#ifdef SPEAKER
		case 'p':
			pflag = 1;
			break;
#endif
		case 'r':
			rflag = 1;
			break;
		case 's':
			sflag = 1;
			break;
		case 'w':
			wpm = FUNC0(optarg);
			break;
		case '?':
		default:
			FUNC3(1, USAGE);
		}
	if ((sflag && lflag) || (sflag && rflag) || (lflag && rflag)) {
		FUNC3(1, "morse: only one of -l, -s, and -r allowed\n");
	}
	if ((pflag || device) && (sflag || lflag)) {
		FUNC3(1, "morse: only one of -p, -d and -l, -s allowed\n");
	}
	if (cpm == 0) {
		cpm = wpm;
	}
	if ((pflag || device) && ((wpm < 1) || (wpm > 60) || (cpm < 1) || (cpm > 60))) {
		FUNC3(1, "morse: insane speed\n");
	}
	if ((pflag || device) && (freq == 0)) {
		freq = FREQUENCY;
	}
#ifdef SPEAKER
	if (pflag) {
		if ((spkr = open(SPEAKER, O_WRONLY, 0)) == -1) {
			err(1, SPEAKER);
		}
	} else
#endif
	if (device) {
		if ((line = FUNC12(device, O_WRONLY | O_NONBLOCK)) == -1) {
			FUNC2(1, "open tty line");
		}
		if (FUNC20(line, &otty) == -1) {
			FUNC2(1, "tcgetattr() failed");
		}
		ntty = otty;
		ntty.c_cflag |= CLOCAL;
		FUNC21(line, TCSANOW, &ntty);
		lflags = FUNC5(line, F_GETFL);
		lflags &= ~O_NONBLOCK;
		FUNC5(line, F_SETFL, &lflags);
		FUNC9(line, TIOCMGET, &lflags);
		lflags &= ~TIOCM_RTS;
		olflags = lflags;
		FUNC9(line, TIOCMSET, &lflags);
		(void)FUNC17(SIGHUP, sighandler);
		(void)FUNC17(SIGINT, sighandler);
		(void)FUNC17(SIGQUIT, sighandler);
		(void)FUNC17(SIGTERM, sighandler);
	}
	if (pflag || device) {
		dot_clock = wpm / 2.4;		/* dots/sec */
		dot_clock = 1 / dot_clock;	/* duration of a dot */
		dot_clock = dot_clock / 2;	/* dot_clock runs at twice */
						/* the dot rate */
		dot_clock = dot_clock * 100;	/* scale for ioctl */

		cdot_clock = cpm / 2.4;		/* dots/sec */
		cdot_clock = 1 / cdot_clock;	/* duration of a dot */
		cdot_clock = cdot_clock / 2;	/* dot_clock runs at twice */
						/* the dot rate */
		cdot_clock = cdot_clock * 100;	/* scale for ioctl */
	}

	argc -= optind;
	argv += optind;

	if (FUNC15(LC_CTYPE, "") != NULL &&
	    *(codeset = FUNC11(CODESET)) != '\0') {
		if (FUNC18(codeset, "KOI8-R") == 0)
			hightab = koi8rtab;
		else if (FUNC18(codeset, "ISO8859-1") == 0 ||
			 FUNC18(codeset, "ISO8859-15") == 0)
			hightab = iso8859_1tab;
		else if (FUNC18(codeset, "ISO8859-7") == 0)
			hightab = iso8859_7tab;
	}

	if (lflag) {
		FUNC13("m");
	}
	if (rflag) {
		if (*argv) {
			do {
				p = FUNC19(*argv, DELIMITERS);
				if (p == NULL) {
					FUNC1(*argv);
				}
				else {
					while (p) {
						FUNC1(p);
						p = FUNC19(NULL, DELIMITERS);
					}
				}
			} while (*++argv);
			FUNC14('\n');
		} else {
			FUNC6(stdin);
		}
	}
	else if (*argv) {
		do {
			for (p = *argv; *p; ++p) {
				if (eflag)
					FUNC14(*p);
				FUNC10(*p);
			}
			if (eflag)
				FUNC14(' ');
			FUNC10(' ');
		} while (*++argv);
	} else {
		while ((ch = FUNC7()) != EOF) {
			if (eflag)
				FUNC14(ch);
			FUNC10(ch);
		}
	}
	if (device)
		FUNC21(line, TCSANOW, &otty);
	FUNC4(0);
}