#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct TYPE_4__ {int /*<<< orphan*/  (* tc_get_timecount ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int hz ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  tc_setclock_mtx ; 
 int tc_tick ; 
 int /*<<< orphan*/  tc_tick_bt ; 
 void* tc_tick_sbt ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tick_bt ; 
 void* tick_sbt ; 
 TYPE_1__* timecounter ; 

__attribute__((used)) static void
FUNC10(void *dummy)
{
	u_int p;
	int tick_rate;

	/*
	 * Set the initial timeout to
	 * max(1, <approx. number of hardclock ticks in a millisecond>).
	 * People should probably not use the sysctl to set the timeout
	 * to smaller than its initial value, since that value is the
	 * smallest reasonable one.  If they want better timestamps they
	 * should use the non-"get"* functions.
	 */
	if (hz > 1000)
		tc_tick = (hz + 500) / 1000;
	else
		tc_tick = 1;
	FUNC8();
	FUNC0(hz, &tick_bt);
	tick_sbt = FUNC1(tick_bt);
	tick_rate = hz / tc_tick;
	FUNC0(tick_rate, &tc_tick_bt);
	tc_tick_sbt = FUNC1(tc_tick_bt);
	p = (tc_tick * 1000000) / hz;
	FUNC5("Timecounters tick every %d.%03u msec\n", p / 1000, p % 1000);

#ifdef FFCLOCK
	ffclock_init();
#endif

	/* warm up new timecounter (again) and get rolling. */
	(void)timecounter->tc_get_timecount(timecounter);
	(void)timecounter->tc_get_timecount(timecounter);
	FUNC3(&tc_setclock_mtx);
	FUNC9(NULL);
	FUNC4(&tc_setclock_mtx);
}