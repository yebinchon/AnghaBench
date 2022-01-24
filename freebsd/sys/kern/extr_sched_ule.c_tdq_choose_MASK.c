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
struct thread {scalar_t__ td_priority; } ;
struct tdq {int /*<<< orphan*/  tdq_idle; int /*<<< orphan*/  tdq_ridx; int /*<<< orphan*/  tdq_timeshare; int /*<<< orphan*/  tdq_realtime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 scalar_t__ PRI_MIN_BATCH ; 
 scalar_t__ PRI_MIN_IDLE ; 
 int /*<<< orphan*/  FUNC1 (struct tdq*,int /*<<< orphan*/ ) ; 
 struct thread* FUNC2 (int /*<<< orphan*/ *) ; 
 struct thread* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct thread *
FUNC4(struct tdq *tdq)
{
	struct thread *td;

	FUNC1(tdq, MA_OWNED);
	td = FUNC2(&tdq->tdq_realtime);
	if (td != NULL)
		return (td);
	td = FUNC3(&tdq->tdq_timeshare, tdq->tdq_ridx);
	if (td != NULL) {
		FUNC0(td->td_priority >= PRI_MIN_BATCH,
		    ("tdq_choose: Invalid priority on timeshare queue %d",
		    td->td_priority));
		return (td);
	}
	td = FUNC2(&tdq->tdq_idle);
	if (td != NULL) {
		FUNC0(td->td_priority >= PRI_MIN_IDLE,
		    ("tdq_choose: Invalid priority on idle queue %d",
		    td->td_priority));
		return (td);
	}

	return (NULL);
}