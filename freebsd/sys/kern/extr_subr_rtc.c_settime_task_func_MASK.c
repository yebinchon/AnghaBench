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
struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct rtc_instance {int flags; int /*<<< orphan*/  clockdev; int /*<<< orphan*/  resadj; } ;

/* Variables and functions */
 int CLOCKF_SETTIME_NO_ADJ ; 
 int CLOCKF_SETTIME_NO_TS ; 
 int FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct timespec*) ; 
 int /*<<< orphan*/  FUNC3 (struct timespec*,int /*<<< orphan*/ *,struct timespec*) ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static void
FUNC5(void *arg, int pending)
{
	struct timespec ts;
	struct rtc_instance *rtc;
	int error;

	rtc = arg;
	if (!(rtc->flags & CLOCKF_SETTIME_NO_TS)) {
		FUNC2(&ts);
		if (!(rtc->flags & CLOCKF_SETTIME_NO_ADJ)) {
			ts.tv_sec -= FUNC4();
			FUNC3(&ts, &rtc->resadj, &ts);
		}
	} else {
		ts.tv_sec  = 0;
		ts.tv_nsec = 0;
	}
	error = FUNC0(rtc->clockdev, &ts);
	if (error != 0 && bootverbose)
		FUNC1(rtc->clockdev, "CLOCK_SETTIME error %d\n", error);
}