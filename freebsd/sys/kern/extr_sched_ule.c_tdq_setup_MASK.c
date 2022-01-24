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
struct tdq {int tdq_id; int /*<<< orphan*/  tdq_loadname; int /*<<< orphan*/  tdq_name; int /*<<< orphan*/  tdq_lock; int /*<<< orphan*/  tdq_idle; int /*<<< orphan*/  tdq_timeshare; int /*<<< orphan*/  tdq_realtime; } ;

/* Variables and functions */
 int MTX_RECURSE ; 
 int MTX_SPIN ; 
 scalar_t__ FUNC0 (struct tdq*) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,int) ; 

__attribute__((used)) static void
FUNC5(struct tdq *tdq, int id)
{

	if (bootverbose)
		FUNC2("ULE: setup cpu %d\n", id);
	FUNC3(&tdq->tdq_realtime);
	FUNC3(&tdq->tdq_timeshare);
	FUNC3(&tdq->tdq_idle);
	tdq->tdq_id = id;
	FUNC4(tdq->tdq_name, sizeof(tdq->tdq_name),
	    "sched lock %d", (int)FUNC0(tdq));
	FUNC1(&tdq->tdq_lock, tdq->tdq_name, "sched lock",
	    MTX_SPIN | MTX_RECURSE);
#ifdef KTR
	snprintf(tdq->tdq_loadname, sizeof(tdq->tdq_loadname),
	    "CPU %d load", (int)TDQ_ID(tdq));
#endif
}