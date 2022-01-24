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
struct timespec {int /*<<< orphan*/  tv_nsec; scalar_t__ tv_sec; } ;
struct bintime {int dummy; } ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bintime*,struct bintime*) ; 
 int /*<<< orphan*/  FUNC2 (struct bintime*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct timespec*) ; 
 int /*<<< orphan*/  rtc_generation ; 
 int /*<<< orphan*/  sleeping_on_old_rtc ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tc_setclock_mtx ; 
 int /*<<< orphan*/  FUNC9 (struct bintime*) ; 
 int /*<<< orphan*/  FUNC10 (struct timespec*,struct bintime*) ; 
 scalar_t__ timestepwarnings ; 

void
FUNC11(struct timespec *ts)
{
	struct timespec tbef, taft;
	struct bintime bt, bt2;

	FUNC10(ts, &bt);
	FUNC7(&tbef);
	FUNC5(&tc_setclock_mtx);
	FUNC3(1);
	FUNC2(&bt2);
	FUNC1(&bt, &bt2);

	/* XXX fiddle all the little crinkly bits around the fiords... */
	FUNC9(&bt);
	FUNC6(&tc_setclock_mtx);

	/* Avoid rtc_generation == 0, since td_rtcgen == 0 is special. */
	FUNC0(&rtc_generation, 2);
	FUNC8(sleeping_on_old_rtc);
	if (timestepwarnings) {
		FUNC7(&taft);
		FUNC4(LOG_INFO,
		    "Time stepped from %jd.%09ld to %jd.%09ld (%jd.%09ld)\n",
		    (intmax_t)tbef.tv_sec, tbef.tv_nsec,
		    (intmax_t)taft.tv_sec, taft.tv_nsec,
		    (intmax_t)ts->tv_sec, ts->tv_nsec);
	}
}