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
struct thread {int td_slptick; int /*<<< orphan*/  td_flags; } ;
struct td_sched {int ts_slptime; scalar_t__ ts_slice; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int SCHED_TICK_SHIFT ; 
 int /*<<< orphan*/  SRQ_BORING ; 
 int /*<<< orphan*/  TDF_CANSWAP ; 
 int /*<<< orphan*/  FUNC0 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (struct td_sched*,int /*<<< orphan*/ ) ; 
 struct td_sched* FUNC4 (struct thread*) ; 
 int ticks ; 

void
FUNC5(struct thread *td)
{
	struct td_sched *ts;
	int slptick;

	FUNC0(td, MA_OWNED);
	ts = FUNC4(td);
	td->td_flags &= ~TDF_CANSWAP;
	/*
	 * If we slept for more than a tick update our interactivity and
	 * priority.
	 */
	slptick = td->td_slptick;
	td->td_slptick = 0;
	if (slptick && slptick != ticks) {
		ts->ts_slptime += (ticks - slptick) << SCHED_TICK_SHIFT;
		FUNC2(td);
		FUNC3(ts, 0);
	}
	/*
	 * Reset the slice value since we slept and advanced the round-robin.
	 */
	ts->ts_slice = 0;
	FUNC1(td, SRQ_BORING);
}