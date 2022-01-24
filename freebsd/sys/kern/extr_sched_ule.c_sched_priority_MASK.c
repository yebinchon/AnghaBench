#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct thread {TYPE_1__* td_proc; int /*<<< orphan*/  td_pri_class; } ;
struct TYPE_5__ {int /*<<< orphan*/  ts_ltick; int /*<<< orphan*/  ts_ftick; scalar_t__ ts_ticks; } ;
struct TYPE_4__ {scalar_t__ p_nice; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int PRI_MAX_BATCH ; 
 int PRI_MAX_INTERACT ; 
 int PRI_MIN_BATCH ; 
 int PRI_MIN_INTERACT ; 
 scalar_t__ PRI_TIMESHARE ; 
 int SCHED_PRI_MIN ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ SCHED_PRI_RANGE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int sched_interact ; 
 scalar_t__ FUNC6 (struct thread*) ; 
 int /*<<< orphan*/  FUNC7 (struct thread*,int) ; 
 TYPE_2__* FUNC8 (struct thread*) ; 

__attribute__((used)) static void
FUNC9(struct thread *td)
{
	int score;
	int pri;

	if (FUNC1(td->td_pri_class) != PRI_TIMESHARE)
		return;
	/*
	 * If the score is interactive we place the thread in the realtime
	 * queue with a priority that is less than kernel and interrupt
	 * priorities.  These threads are not subject to nice restrictions.
	 *
	 * Scores greater than this are placed on the normal timeshare queue
	 * where the priority is partially decided by the most recent cpu
	 * utilization and the rest is decided by nice value.
	 *
	 * The nice value of the process has a linear effect on the calculated
	 * score.  Negative nice values make it easier for a thread to be
	 * considered interactive.
	 */
	score = FUNC4(0, FUNC6(td) + td->td_proc->p_nice);
	if (score < sched_interact) {
		pri = PRI_MIN_INTERACT;
		pri += ((PRI_MAX_INTERACT - PRI_MIN_INTERACT + 1) /
		    sched_interact) * score;
		FUNC0(pri >= PRI_MIN_INTERACT && pri <= PRI_MAX_INTERACT,
		    ("sched_priority: invalid interactive priority %d score %d",
		    pri, score));
	} else {
		pri = SCHED_PRI_MIN;
		if (FUNC8(td)->ts_ticks)
			pri += FUNC5(FUNC3(FUNC8(td)),
			    SCHED_PRI_RANGE - 1);
		pri += FUNC2(td->td_proc->p_nice);
		FUNC0(pri >= PRI_MIN_BATCH && pri <= PRI_MAX_BATCH,
		    ("sched_priority: invalid priority %d: nice %d, " 
		    "ticks %d ftick %d ltick %d tick pri %d",
		    pri, td->td_proc->p_nice, FUNC8(td)->ts_ticks,
		    FUNC8(td)->ts_ftick, FUNC8(td)->ts_ltick,
		    FUNC3(FUNC8(td))));
	}
	FUNC7(td, pri);

	return;
}