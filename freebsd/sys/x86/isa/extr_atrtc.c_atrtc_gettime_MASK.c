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
struct timespec {int dummy; } ;
struct bcd_clocktime {int sec; int min; int hour; int day; int mon; int year; scalar_t__ nsec; scalar_t__ dow; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_DBG_READ ; 
 int EINVAL ; 
 int RTCSA_TUP ; 
 int RTCSD_PWR ; 
 int /*<<< orphan*/  RTC_CENTURY ; 
 int /*<<< orphan*/  RTC_DAY ; 
 int /*<<< orphan*/  RTC_HRS ; 
 int /*<<< orphan*/  RTC_MIN ; 
 int /*<<< orphan*/  RTC_MONTH ; 
 int /*<<< orphan*/  RTC_SEC ; 
 int /*<<< orphan*/  RTC_STATUSA ; 
 int /*<<< orphan*/  RTC_STATUSD ; 
 int /*<<< orphan*/  RTC_YEAR ; 
 int /*<<< orphan*/  atrtc_lock ; 
 int /*<<< orphan*/  atrtc_time_lock ; 
 int FUNC0 (struct bcd_clocktime*,struct timespec*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bcd_clocktime*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev, struct timespec *ts)
{
	struct bcd_clocktime bct;

	/* Look if we have a RTC present and the time is valid */
	if (!(FUNC7(RTC_STATUSD) & RTCSD_PWR)) {
		FUNC2(dev, "WARNING: Battery failure indication\n");
		return (EINVAL);
	}

	/*
	 * wait for time update to complete
	 * If RTCSA_TUP is zero, we have at least 244us before next update.
	 * This is fast enough on most hardware, but a refinement would be
	 * to make sure that no more than 240us pass after we start reading,
	 * and try again if so.
	 */
	FUNC3(&atrtc_time_lock);
	while (FUNC7(RTC_STATUSA) & RTCSA_TUP)
		continue;
	FUNC4(&atrtc_lock);
	bct.sec  = FUNC8(RTC_SEC);
	bct.min  = FUNC8(RTC_MIN);
	bct.hour = FUNC8(RTC_HRS);
	bct.day  = FUNC8(RTC_DAY);
	bct.mon  = FUNC8(RTC_MONTH);
	bct.year = FUNC8(RTC_YEAR);
#ifdef USE_RTC_CENTURY
	bct.year |= rtcin_locked(RTC_CENTURY) << 8;
#endif
	FUNC6(&atrtc_lock);
	FUNC5(&atrtc_time_lock);
	/* dow is unused in timespec conversion and we have no nsec info. */
	bct.dow  = 0;
	bct.nsec = 0;
	FUNC1(dev, CLOCK_DBG_READ, &bct);
	return (FUNC0(&bct, ts, false));
}