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
struct tdq {char* tdq_name; int tdq_load; int tdq_switchcnt; int tdq_oldswitchcnt; int tdq_idx; int tdq_ridx; int tdq_transferable; int tdq_lowpri; int /*<<< orphan*/  tdq_idle; int /*<<< orphan*/  tdq_timeshare; int /*<<< orphan*/  tdq_realtime; } ;

/* Variables and functions */
 struct tdq* FUNC0 (int) ; 
 int FUNC1 (struct tdq*) ; 
 int /*<<< orphan*/  FUNC2 (struct tdq*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(int cpu)
{
	struct tdq *tdq;

	tdq = FUNC0(cpu);

	FUNC3("tdq %d:\n", FUNC1(tdq));
	FUNC3("\tlock            %p\n", FUNC2(tdq));
	FUNC3("\tLock name:      %s\n", tdq->tdq_name);
	FUNC3("\tload:           %d\n", tdq->tdq_load);
	FUNC3("\tswitch cnt:     %d\n", tdq->tdq_switchcnt);
	FUNC3("\told switch cnt: %d\n", tdq->tdq_oldswitchcnt);
	FUNC3("\ttimeshare idx:  %d\n", tdq->tdq_idx);
	FUNC3("\ttimeshare ridx: %d\n", tdq->tdq_ridx);
	FUNC3("\tload transferable: %d\n", tdq->tdq_transferable);
	FUNC3("\tlowest priority:   %d\n", tdq->tdq_lowpri);
	FUNC3("\trealtime runq:\n");
	FUNC4(&tdq->tdq_realtime);
	FUNC3("\ttimeshare runq:\n");
	FUNC4(&tdq->tdq_timeshare);
	FUNC3("\tidle runq:\n");
	FUNC4(&tdq->tdq_idle);
}