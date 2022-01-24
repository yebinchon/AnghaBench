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
typedef  scalar_t__ time_t ;
struct tm {long tm_gmtoff; } ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  login_cap_t ;
struct TYPE_5__ {int /*<<< orphan*/  pw_uid; int /*<<< orphan*/  pw_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  CODESET ; 
 int /*<<< orphan*/ * DEBUG ; 
 int /*<<< orphan*/  EPERM ; 
 int EastLongitude ; 
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  LOGIN_SETALL ; 
 int LONGITUDE_NOTSET ; 
 scalar_t__ FUNC0 (void*) ; 
 long SECSPERHOUR ; 
 long SECSPERMINUTE ; 
 int UTCOFFSET_NOTSET ; 
 int UTCOffset ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* calendarFile ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int debug ; 
 int doall ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ f_time ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct tm*,struct tm*) ; 
 int FUNC11 (int,char**,char*) ; 
 TYPE_1__* FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__*,struct tm*) ; 
 int /*<<< orphan*/ * FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 void* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/ * outputEncoding ; 
 TYPE_1__* pw ; 
 scalar_t__ FUNC17 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,int,int,int,struct tm*,struct tm*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int FUNC23 (void*,int /*<<< orphan*/ *) ; 
 int FUNC24 (void*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 () ; 

int
FUNC28(int argc, char *argv[])
{
	int	f_dayAfter = 0;		/* days after current date */
	int	f_dayBefore = 0;	/* days before current date */
	int	Friday = 5;		/* day before weekend */

	int ch;
	struct tm tp1, tp2;

	(void)FUNC18(LC_ALL, "");

	while ((ch = FUNC11(argc, argv, "-A:aB:D:dF:f:l:t:U:W:?")) != -1)
		switch (ch) {
		case '-':		/* backward contemptible */
		case 'a':
			if (FUNC13()) {
				errno = EPERM;
				FUNC6(1, NULL);
			}
			doall = 1;
			break;

		case 'W': /* we don't need no steenking Fridays */
			Friday = -1;
			/* FALLTHROUGH */

		case 'A': /* days after current date */
			f_dayAfter = FUNC1(optarg);
			if (f_dayAfter < 0)
				FUNC7(1, "number of days must be positive");
			break;

		case 'B': /* days before current date */
			f_dayBefore = FUNC1(optarg);
			if (f_dayBefore < 0)
				FUNC7(1, "number of days must be positive");
			break;

		case 'D': /* debug output of sun and moon info */
			DEBUG = optarg;
			break;

		case 'd': /* debug output of current date */
			debug = 1;
			break;

		case 'F': /* Change the time: When does weekend start? */
			Friday = FUNC1(optarg);
			break;

		case 'f': /* other calendar file */
			calendarFile = optarg;
			break;

		case 'l': /* Change longitudal position */
			EastLongitude = FUNC24(optarg, NULL, 10);
			break;

		case 't': /* other date, for tests */
			f_time = FUNC0(optarg);
			break;

		case 'U': /* Change UTC offset */
			UTCOffset = FUNC23(optarg, NULL);
			break;

		case '?':
		default:
			FUNC27();
		}

	argc -= optind;
	argv += optind;

	if (argc)
		FUNC27();

	/* use current time */
	if (f_time <= 0)
		(void)FUNC25(&f_time);

	/* if not set, determine where I could be */
	{
		if (UTCOffset == UTCOFFSET_NOTSET &&
		    EastLongitude == LONGITUDE_NOTSET) {
			/* Calculate on difference between here and UTC */
			time_t t;
			struct tm tm;
			long utcoffset, hh, mm, ss;
			double uo;

			FUNC25(&t);
			FUNC14(&t, &tm);
			utcoffset = tm.tm_gmtoff;
			/* seconds -> hh:mm:ss */
			hh = utcoffset / SECSPERHOUR;
			utcoffset %= SECSPERHOUR;
			mm = utcoffset / SECSPERMINUTE;
			utcoffset %= SECSPERMINUTE;
			ss = utcoffset;

			/* hh:mm:ss -> hh.mmss */
			uo = mm + (100.0 * (ss / 60.0));
			uo /=  60.0 / 100.0;
			uo = hh + uo / 100;

			UTCOffset = uo;
			EastLongitude = UTCOffset * 15;
		} else if (UTCOffset == UTCOFFSET_NOTSET) {
			/* Base on information given */
			UTCOffset = EastLongitude / 15;
		} else if (EastLongitude == LONGITUDE_NOTSET) {
			/* Base on information given */
			EastLongitude = UTCOffset * 15;
		}
	}

	FUNC19(f_time, f_dayBefore, f_dayAfter, Friday, &tp1, &tp2);
	FUNC10(&tp1, &tp2);

	/*
	 * FROM now on, we are working in UTC.
	 * This will only affect moon and sun related events anyway.
	 */
	if (FUNC17("TZ", "UTC", 1) != 0)
		FUNC7(1, "setenv: %s", FUNC22(errno));
	FUNC26();

	if (debug)
		FUNC5();

	if (DEBUG != NULL) {
		FUNC4(DEBUG);
		FUNC8(0);
	}

	if (doall)
		while ((pw = FUNC12()) != NULL) {
			pid_t pid;

			if (FUNC3(pw->pw_dir) == -1)
				continue;
			pid = FUNC9();
			if (pid < 0)
				FUNC6(1, "fork");
			if (pid == 0) {
				login_cap_t *lc;

				lc = FUNC15(pw);
				if (FUNC20(lc, pw, pw->pw_uid,
				    LOGIN_SETALL) != 0)
					FUNC7(1, "setusercontext");
				FUNC2();
				FUNC8(0);
			}
		}
	else {
#ifdef WITH_ICONV
		/* Save the information about the encoding used in the terminal. */
		outputEncoding = strdup(nl_langinfo(CODESET));
		if (outputEncoding == NULL)
			errx(1, "cannot allocate memory");
#endif
		FUNC2();
	}
	FUNC8(0);
}