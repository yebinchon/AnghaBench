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
struct thread {scalar_t__ td_slptick; int /*<<< orphan*/  td_flags; } ;
struct td_sched {int ts_slptime; int /*<<< orphan*/  ts_slice; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  SRQ_BORING ; 
 int /*<<< orphan*/  TDF_CANSWAP ; 
 int /*<<< orphan*/  FUNC0 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct thread*) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sched_slice ; 
 struct td_sched* FUNC3 (struct thread*) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*) ; 

void
FUNC5(struct thread *td)
{
	struct td_sched *ts;

	FUNC0(td, MA_OWNED);
	ts = FUNC3(td);
	td->td_flags &= ~TDF_CANSWAP;
	if (ts->ts_slptime > 1) {
		FUNC4(td);
		FUNC1(td);
	}
	td->td_slptick = 0;
	ts->ts_slptime = 0;
	ts->ts_slice = sched_slice;
	FUNC2(td, SRQ_BORING);
}