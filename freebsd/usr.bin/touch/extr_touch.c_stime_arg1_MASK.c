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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int tm_year; int tm_isdst; void* tm_min; void* tm_hour; void* tm_mday; void* tm_mon; void* tm_sec; } ;
struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;

/* Variables and functions */
 void* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 struct tm* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct tm*) ; 
 char* FUNC5 (char const*,char) ; 
 int FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(const char *arg, struct timespec *tvp)
{
	time_t now;
	struct tm *t;
	int yearset;
	char *p;

	now = FUNC7(NULL);
	if ((t = FUNC3(&now)) == NULL)
		FUNC1(1, "localtime");
					/* [[CC]YY]MMDDhhmm[.SS] */
	if ((p = FUNC5(arg, '.')) == NULL)
		t->tm_sec = 0;		/* Seconds defaults to 0. */
	else {
		if (FUNC6(p + 1) != 2)
			goto terr;
		*p++ = '\0';
		t->tm_sec = FUNC0(p);
	}

	yearset = 0;
	switch(FUNC6(arg)) {
	case 12:			/* CCYYMMDDhhmm */
		t->tm_year = FUNC0(arg);
		t->tm_year *= 100;
		yearset = 1;
		/* FALLTHROUGH */
	case 10:			/* YYMMDDhhmm */
		if (yearset) {
			yearset = FUNC0(arg);
			t->tm_year += yearset;
		} else {
			yearset = FUNC0(arg);
			if (yearset < 69)
				t->tm_year = yearset + 2000;
			else
				t->tm_year = yearset + 1900;
		}
		t->tm_year -= 1900;	/* Convert to UNIX time. */
		/* FALLTHROUGH */
	case 8:				/* MMDDhhmm */
		t->tm_mon = FUNC0(arg);
		--t->tm_mon;		/* Convert from 01-12 to 00-11 */
		t->tm_mday = FUNC0(arg);
		t->tm_hour = FUNC0(arg);
		t->tm_min = FUNC0(arg);
		break;
	default:
		goto terr;
	}

	t->tm_isdst = -1;		/* Figure out DST. */
	tvp[0].tv_sec = tvp[1].tv_sec = FUNC4(t);
	if (tvp[0].tv_sec == -1)
		goto terr;

	tvp[0].tv_nsec = tvp[1].tv_nsec = 0;
	return;

terr:
	FUNC2(1, "out of range or illegal time specification: [[CC]YY]MMDDhhmm[.SS]");
}