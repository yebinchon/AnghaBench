#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u_short ;
typedef  TYPE_1__* hcb_p ;
typedef  TYPE_2__* ccb_p ;
struct TYPE_7__ {int /*<<< orphan*/  ccb_ba; int /*<<< orphan*/  host_flags; } ;
struct TYPE_6__ {scalar_t__ iarb_count; scalar_t__ iarb_max; int squeueput; int istat_sem; void** squeue; int /*<<< orphan*/  idletask_ba; TYPE_2__* last_cp; } ;

/* Variables and functions */
 int DEBUG_FLAGS ; 
 int DEBUG_QUEUE ; 
 int /*<<< orphan*/  HF_HINT_IARB ; 
 int MAX_QUEUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int SIGP ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nc_istat ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 char* FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(hcb_p np, ccb_p cp)
{
	u_short	qidx;

#ifdef SYM_CONF_IARB_SUPPORT
	/*
	 *  If the previously queued CCB is not yet done,
	 *  set the IARB hint. The SCRIPTS will go with IARB
	 *  for this job when starting the previous one.
	 *  We leave devices a chance to win arbitration by
	 *  not using more than 'iarb_max' consecutive
	 *  immediate arbitrations.
	 */
	if (np->last_cp && np->iarb_count < np->iarb_max) {
		np->last_cp->host_flags |= HF_HINT_IARB;
		++np->iarb_count;
	}
	else
		np->iarb_count = 0;
	np->last_cp = cp;
#endif

	/*
	 *  Insert first the idle task and then our job.
	 *  The MB should ensure proper ordering.
	 */
	qidx = np->squeueput + 2;
	if (qidx >= MAX_QUEUE*2) qidx = 0;

	np->squeue [qidx]	   = FUNC2(np->idletask_ba);
	FUNC0();
	np->squeue [np->squeueput] = FUNC2(cp->ccb_ba);

	np->squeueput = qidx;

	if (DEBUG_FLAGS & DEBUG_QUEUE)
		FUNC3 ("%s: queuepos=%d.\n", FUNC4 (np), np->squeueput);

	/*
	 *  Script processor may be waiting for reselect.
	 *  Wake it up.
	 */
	FUNC0();
	FUNC1 (nc_istat, SIGP|np->istat_sem);
}