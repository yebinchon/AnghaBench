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
typedef  int time_t ;
struct timespec {int tv_sec; int /*<<< orphan*/  tv_nsec; } ;
struct clocktime {int year; int mon; int day; int hour; int min; int sec; int /*<<< orphan*/  nsec; int /*<<< orphan*/  dow; } ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int POSIX_BASE_YEAR ; 
 int SECDAY ; 
 int /*<<< orphan*/  FUNC1 (struct clocktime*,int) ; 
 scalar_t__ ct_debug ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int recent_base_days ; 
 int recent_base_year ; 

void
FUNC6(const struct timespec *ts, struct clocktime *ct)
{
	time_t i, year, days;
	time_t rsec;	/* remainder seconds */
	time_t secs;

	secs = ts->tv_sec;
	days = secs / SECDAY;
	rsec = secs % SECDAY;

	ct->dow = FUNC2(days);

	/* Subtract out whole years. */
	if (days >= recent_base_days) {
		year = recent_base_year;
		days -= recent_base_days;
	} else {
		year = POSIX_BASE_YEAR;
	}
	for (; days >= FUNC4(year); year++)
		days -= FUNC4(year);
	ct->year = year;

	/* Subtract out whole months, counting them in i. */
	for (i = 1; days >= FUNC3(year, i); i++)
		days -= FUNC3(year, i);
	ct->mon = i;

	/* Days are what is left over (+1) from all that. */
	ct->day = days + 1;

	/* Hours, minutes, seconds are easy */
	ct->hour = rsec / 3600;
	rsec = rsec % 3600;
	ct->min  = rsec / 60;
	rsec = rsec % 60;
	ct->sec  = rsec;
	ct->nsec = ts->tv_nsec;
	if (ct_debug) {
		FUNC5("ts_to_ct(%jd.%09ld) = [",
		    (intmax_t)ts->tv_sec, ts->tv_nsec);
		FUNC1(ct, 9);
		FUNC5("]\n");
	}

	FUNC0(ct->year >= 0 && ct->year < 10000,
	    ("year %d isn't a 4 digit year", ct->year));
	FUNC0(ct->mon >= 1 && ct->mon <= 12,
	    ("month %d not in 1-12", ct->mon));
	FUNC0(ct->day >= 1 && ct->day <= 31,
	    ("day %d not in 1-31", ct->day));
	FUNC0(ct->hour >= 0 && ct->hour <= 23,
	    ("hour %d not in 0-23", ct->hour));
	FUNC0(ct->min >= 0 && ct->min <= 59,
	    ("minute %d not in 0-59", ct->min));
	/* Not sure if this interface needs to handle leapseconds or not. */
	FUNC0(ct->sec >= 0 && ct->sec <= 60,
	    ("seconds %d not in 0-60", ct->sec));
}