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
struct tdq {int /*<<< orphan*/  tdq_ridx; int /*<<< orphan*/  tdq_idx; int /*<<< orphan*/  tdq_timeshare; int /*<<< orphan*/  tdq_transferable; } ;
struct td_sched {int ts_flags; int /*<<< orphan*/ * ts_runq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (struct tdq*,int /*<<< orphan*/ ) ; 
 int TSF_XFERABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct thread*,int /*<<< orphan*/ *) ; 
 struct td_sched* FUNC4 (struct thread*) ; 

__attribute__((used)) static __inline void
FUNC5(struct tdq *tdq, struct thread *td)
{
	struct td_sched *ts;

	ts = FUNC4(td);
	FUNC1(tdq, MA_OWNED);
	FUNC0(ts->ts_runq != NULL,
	    ("tdq_runq_remove: thread %p null ts_runq", td));
	if (ts->ts_flags & TSF_XFERABLE) {
		tdq->tdq_transferable--;
		ts->ts_flags &= ~TSF_XFERABLE;
	}
	if (ts->ts_runq == &tdq->tdq_timeshare) {
		if (tdq->tdq_idx != tdq->tdq_ridx)
			FUNC3(ts->ts_runq, td, &tdq->tdq_ridx);
		else
			FUNC3(ts->ts_runq, td, NULL);
	} else
		FUNC2(ts->ts_runq, td);
}