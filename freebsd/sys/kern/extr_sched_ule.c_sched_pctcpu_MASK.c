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
struct thread {int dummy; } ;
struct td_sched {scalar_t__ ts_ticks; } ;
typedef  int fixpt_t ;

/* Variables and functions */
 int FSCALE ; 
 int FSHIFT ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int FUNC0 (struct td_sched*) ; 
 int SCHED_TICK_SECS ; 
 int /*<<< orphan*/  FUNC1 (struct thread*) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*,int /*<<< orphan*/ ) ; 
 int hz ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct td_sched*,int /*<<< orphan*/ ) ; 
 struct td_sched* FUNC5 (struct thread*) ; 

fixpt_t
FUNC6(struct thread *td)
{
	fixpt_t pctcpu;
	struct td_sched *ts;

	pctcpu = 0;
	ts = FUNC5(td);

	FUNC2(td, MA_OWNED);
	FUNC4(ts, FUNC1(td));
	if (ts->ts_ticks) {
		int rtick;

		/* How many rtick per second ? */
		rtick = FUNC3(FUNC0(ts) / SCHED_TICK_SECS, hz);
		pctcpu = (FSCALE * ((FSCALE * rtick)/hz)) >> FSHIFT;
	}

	return (pctcpu);
}