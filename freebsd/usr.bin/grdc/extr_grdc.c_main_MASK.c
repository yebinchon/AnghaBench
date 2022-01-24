#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct timespec {scalar_t__ tv_nsec; int tv_sec; } ;
struct TYPE_6__ {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_5__ {int tm_sec; int tm_min; int tm_hour; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACS_HLINE ; 
 int /*<<< orphan*/  ACS_LLCORNER ; 
 int /*<<< orphan*/  ACS_LRCORNER ; 
 int /*<<< orphan*/  ACS_ULCORNER ; 
 int /*<<< orphan*/  ACS_URCORNER ; 
 int /*<<< orphan*/  ACS_VLINE ; 
 int /*<<< orphan*/  CLOCK_REALTIME_FAST ; 
 int /*<<< orphan*/  COLOR_BLACK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  COLOR_RED ; 
 int /*<<< orphan*/  COLOR_WHITE ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int XBASE ; 
 int XLENGTH ; 
 int YBASE ; 
 int YDEPTH ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int,char*,int) ; 
 int FUNC10 (int,char**,char*) ; 
 scalar_t__ FUNC11 () ; 
 scalar_t__ hascolor ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 TYPE_1__* FUNC15 (scalar_t__*) ; 
 long mask ; 
 int /*<<< orphan*/  FUNC16 (int,int) ; 
 int /*<<< orphan*/  FUNC17 (int,int) ; 
 int /*<<< orphan*/  FUNC18 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC20 (struct timespec*,int /*<<< orphan*/ *) ; 
 long* new ; 
 long* next ; 
 int /*<<< orphan*/  FUNC21 () ; 
 TYPE_2__ now ; 
 long* old ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int,int) ; 
 int /*<<< orphan*/  sighndl ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ sigtermed ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (int) ; 
 int /*<<< orphan*/  FUNC27 () ; 
 TYPE_1__* tm ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC30 (char*) ; 

int
FUNC31(int argc, char *argv[])
{
	struct timespec delay;
	time_t prev_sec;
	long t, a;
	int i, j, s, k;
	int n;
	int ch;
	int scrol;
	int t12;

	t12 = scrol = 0;

	while ((ch = FUNC10(argc, argv, "ts")) != -1)
	switch (ch) {
	case 's':
		scrol = 1;
		break;
	case 't':
		t12 = 1;
		break;
	case '?':
	default:
		FUNC28();
		/* NOTREACHED */
	}
	argc -= optind;
	argv += optind;

	if (argc > 1) {
		FUNC28();
		/* NOTREACHED */
	}

	if (argc > 0) {
		n = FUNC2(*argv) + 1;
		if (n < 1) {
			FUNC30("number of seconds is out of range");
			FUNC28();
			/* NOTREACHED */
		}
	} else
		n = 0;

	FUNC14();

	FUNC24(SIGINT,sighndl);
	FUNC24(SIGTERM,sighndl);
	FUNC24(SIGHUP,sighndl);

	FUNC4();
	FUNC21();
	FUNC7(0);

	hascolor = FUNC11();

	if(hascolor) {
		FUNC27();
		FUNC13(1, COLOR_BLACK, COLOR_RED);
		FUNC13(2, COLOR_RED, COLOR_BLACK);
		FUNC13(3, COLOR_WHITE, COLOR_BLACK);
		FUNC3(FUNC0(2));
	}

	FUNC5();
	FUNC22();

	if(hascolor) {
		FUNC3(FUNC0(3));

		FUNC18(YBASE - 2,  XBASE - 3, ACS_ULCORNER);
		FUNC12(ACS_HLINE, XLENGTH);
		FUNC18(YBASE - 2,  XBASE - 2 + XLENGTH, ACS_URCORNER);

		FUNC18(YBASE + YDEPTH - 1,  XBASE - 3, ACS_LLCORNER);
		FUNC12(ACS_HLINE, XLENGTH);
		FUNC18(YBASE + YDEPTH - 1,  XBASE - 2 + XLENGTH, ACS_LRCORNER);

		FUNC16(YBASE - 1,  XBASE - 3);
		FUNC29(ACS_VLINE, YDEPTH);

		FUNC16(YBASE - 1,  XBASE - 2 + XLENGTH);
		FUNC29(ACS_VLINE, YDEPTH);

		FUNC3(FUNC0(2));
	}
	FUNC6(CLOCK_REALTIME_FAST, &now);
	prev_sec = now.tv_sec;
	do {
		mask = 0;
		tm = FUNC15(&now.tv_sec);
		FUNC23(tm->tm_sec%10, 0);
		FUNC23(tm->tm_sec/10, 4);
		FUNC23(tm->tm_min%10, 10);
		FUNC23(tm->tm_min/10, 14);

		if (t12) {
			if (tm->tm_hour < 12) {
				if (tm->tm_hour == 0)
					tm->tm_hour = 12;
				FUNC19(YBASE + 5, XBASE + 52, "AM");
			} else {
				if (tm->tm_hour > 12)
					tm->tm_hour -= 12;
				FUNC19(YBASE + 5, XBASE + 52, "PM");
			}
		}

		FUNC23(tm->tm_hour%10, 20);
		FUNC23(tm->tm_hour/10, 24);
		FUNC23(10, 7);
		FUNC23(10, 17);
		for(k=0; k<6; k++) {
			if(scrol) {
				for(i=0; i<5; i++)
					new[i] = (new[i]&~mask) | (new[i+1]&mask);
				new[5] = (new[5]&~mask) | (next[k]&mask);
			} else
				new[k] = (new[k]&~mask) | (next[k]&mask);
			next[k] = 0;
			for(s=1; s>=0; s--) {
				FUNC26(s);
				for(i=0; i<6; i++) {
					if((a = (new[i]^old[i])&(s ? new : old)[i]) != 0) {
						for(j=0,t=1<<26; t; t>>=1,j++) {
							if(a&t) {
								if(!(a&(t<<1))) {
									FUNC17(YBASE + i, XBASE + 2*j);
								}
								FUNC1("  ");
							}
						}
					}
					if(!s) {
						old[i] = new[i];
					}
				}
				if(!s) {
					FUNC22();
				}
			}
		}
		FUNC17(6, 0);
		FUNC22();
		FUNC6(CLOCK_REALTIME_FAST, &now);
		if (now.tv_sec == prev_sec) {
			if (delay.tv_nsec > 0) {
				delay.tv_sec = 0;
				delay.tv_nsec = 1000000000 - now.tv_nsec;
			} else {
				delay.tv_sec = 1;
				delay.tv_nsec = 0;
			}
			FUNC20(&delay, NULL);
			FUNC6(CLOCK_REALTIME_FAST, &now);
		}
		n -= now.tv_sec - prev_sec;
		prev_sec = now.tv_sec;
		if (sigtermed) {
			FUNC25();
			FUNC5();
			FUNC22();
			FUNC8();
			FUNC9(1, "terminated by signal %d", (int)sigtermed);
		}
	} while (n);
	FUNC25();
	FUNC5();
	FUNC22();
	FUNC8();
	return(0);
}