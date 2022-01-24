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
typedef  int u_char ;
struct thread {int td_priority; } ;
struct tdq {int tdq_idx; int tdq_ridx; int /*<<< orphan*/  tdq_idle; int /*<<< orphan*/  tdq_timeshare; int /*<<< orphan*/  tdq_realtime; int /*<<< orphan*/  tdq_transferable; } ;
struct td_sched {int /*<<< orphan*/ * ts_runq; int /*<<< orphan*/  ts_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int PRI_BATCH_RANGE ; 
 int PRI_MAX_BATCH ; 
 int PRI_MIN_BATCH ; 
 int RQ_NQS ; 
 int SRQ_BORROWING ; 
 int SRQ_PREEMPTED ; 
 int /*<<< orphan*/  FUNC1 (struct tdq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*) ; 
 scalar_t__ FUNC3 (struct thread*) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TSF_XFERABLE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct thread*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct thread*,int,int) ; 
 struct td_sched* FUNC7 (struct thread*) ; 

__attribute__((used)) static __inline void
FUNC8(struct tdq *tdq, struct thread *td, int flags)
{
	struct td_sched *ts;
	u_char pri;

	FUNC1(tdq, MA_OWNED);
	FUNC4(td, MA_OWNED);

	pri = td->td_priority;
	ts = FUNC7(td);
	FUNC2(td);
	if (FUNC3(td)) {
		tdq->tdq_transferable++;
		ts->ts_flags |= TSF_XFERABLE;
	}
	if (pri < PRI_MIN_BATCH) {
		ts->ts_runq = &tdq->tdq_realtime;
	} else if (pri <= PRI_MAX_BATCH) {
		ts->ts_runq = &tdq->tdq_timeshare;
		FUNC0(pri <= PRI_MAX_BATCH && pri >= PRI_MIN_BATCH,
			("Invalid priority %d on timeshare runq", pri));
		/*
		 * This queue contains only priorities between MIN and MAX
		 * realtime.  Use the whole queue to represent these values.
		 */
		if ((flags & (SRQ_BORROWING|SRQ_PREEMPTED)) == 0) {
			pri = RQ_NQS * (pri - PRI_MIN_BATCH) / PRI_BATCH_RANGE;
			pri = (pri + tdq->tdq_idx) % RQ_NQS;
			/*
			 * This effectively shortens the queue by one so we
			 * can have a one slot difference between idx and
			 * ridx while we wait for threads to drain.
			 */
			if (tdq->tdq_ridx != tdq->tdq_idx &&
			    pri == tdq->tdq_ridx)
				pri = (unsigned char)(pri - 1) % RQ_NQS;
		} else
			pri = tdq->tdq_ridx;
		FUNC6(ts->ts_runq, td, pri, flags);
		return;
	} else
		ts->ts_runq = &tdq->tdq_idle;
	FUNC5(ts->ts_runq, td, flags);
}