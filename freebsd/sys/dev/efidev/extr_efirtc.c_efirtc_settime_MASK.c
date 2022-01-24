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
typedef  int /*<<< orphan*/  tm ;
struct timespec {int /*<<< orphan*/  tv_sec; } ;
struct efi_tm {int /*<<< orphan*/  tm_nsec; int /*<<< orphan*/  tm_year; int /*<<< orphan*/  tm_mon; int /*<<< orphan*/  tm_mday; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_sec; } ;
struct clocktime {int /*<<< orphan*/  nsec; int /*<<< orphan*/  year; int /*<<< orphan*/  mon; int /*<<< orphan*/  day; int /*<<< orphan*/  hour; int /*<<< orphan*/  min; int /*<<< orphan*/  sec; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_DBG_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct efi_tm*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct clocktime*) ; 
 int /*<<< orphan*/  FUNC2 (struct timespec*,struct clocktime*) ; 
 int FUNC3 (struct efi_tm*) ; 
 int /*<<< orphan*/  efirtc_resadj ; 
 int /*<<< orphan*/  efirtc_zeroes_subseconds ; 
 int /*<<< orphan*/  FUNC4 (struct timespec*,int /*<<< orphan*/ *,struct timespec*) ; 
 scalar_t__ FUNC5 () ; 

__attribute__((used)) static int
FUNC6(device_t dev, struct timespec *ts)
{
	struct clocktime ct;
	struct efi_tm tm;

	/*
	 * We request a timespec with no resolution-adjustment so that we can
	 * apply it ourselves based on whether or not the clock zeroes the
	 * sub-second part of the time when setting the time.
	 */
	ts->tv_sec -= FUNC5();
	if (!efirtc_zeroes_subseconds)
		FUNC4(ts, &efirtc_resadj, ts);
	
	FUNC2(ts, &ct);
	FUNC1(dev, CLOCK_DBG_WRITE, &ct);

	FUNC0(&tm, sizeof(tm));
	tm.tm_sec = ct.sec;
	tm.tm_min = ct.min;
	tm.tm_hour = ct.hour;
	tm.tm_mday = ct.day;
	tm.tm_mon = ct.mon;
	tm.tm_year = ct.year;
	tm.tm_nsec = ct.nsec;

	return (FUNC3(&tm));
}