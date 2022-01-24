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
typedef  scalar_t__ time_t ;
struct timespec {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;

/* Variables and functions */
#define  EINVAL 129 
#define  ENXIO 128 
 int /*<<< orphan*/  FUNC0 (struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (struct timespec*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct timespec*) ; 

void
FUNC4(time_t base)
{
	struct timespec ts;
	int error;

	error = FUNC2(&ts, false);

	/*
	 * Do not report errors from each clock; it is expected that some clocks
	 * cannot provide results in some situations.  Only report problems when
	 * no clocks could provide the time.
	 */
	if (error != 0) {
		switch (error) {
		case ENXIO:
			FUNC1("Warning: no time-of-day clock registered, ");
			break;
		case EINVAL:
			FUNC1("Warning: bad time from time-of-day clock, ");
			break;
		default:
			FUNC1("Error reading time-of-day clock (%d), ", error);
			break;
		}
		FUNC1("system time will not be set accurately\n");
		ts.tv_sec  = (base > 0) ? base : -1;
		ts.tv_nsec = 0;
	}

	if (ts.tv_sec >= 0) {
		FUNC3(&ts);
#ifdef FFCLOCK
		ffclock_reset_clock(&ts);
#endif
	}
}