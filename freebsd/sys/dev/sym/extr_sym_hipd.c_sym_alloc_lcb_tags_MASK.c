#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_char ;
typedef  int /*<<< orphan*/ * tcb_p ;
typedef  TYPE_2__* lcb_p ;
typedef  TYPE_3__* hcb_p ;
struct TYPE_10__ {int /*<<< orphan*/  notask_ba; int /*<<< orphan*/ * target; } ;
struct TYPE_8__ {void* itlq_tbl_sa; } ;
struct TYPE_9__ {int* cb_tags; void** itlq_tbl; TYPE_1__ head; } ;

/* Variables and functions */
 int SYM_CONF_MAX_TASK ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (TYPE_3__*,size_t,size_t) ; 
 int* FUNC2 (int,char*) ; 
 void** FUNC3 (int,char*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (void**,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (void**) ; 

__attribute__((used)) static void FUNC7 (hcb_p np, u_char tn, u_char ln)
{
	tcb_p tp = &np->target[tn];
	lcb_p lp = FUNC4(tp, ln);
	int i;

	/*
	 *  If LCB not available, try to allocate it.
	 */
	if (!lp && !(lp = FUNC1(np, tn, ln)))
		return;

	/*
	 *  Allocate the task table and and the tag allocation
	 *  circular buffer. We want both or none.
	 */
	lp->itlq_tbl = FUNC3(SYM_CONF_MAX_TASK*4, "ITLQ_TBL");
	if (!lp->itlq_tbl)
		return;
	lp->cb_tags = FUNC2(SYM_CONF_MAX_TASK, "CB_TAGS");
	if (!lp->cb_tags) {
		FUNC5(lp->itlq_tbl, SYM_CONF_MAX_TASK*4, "ITLQ_TBL");
		lp->itlq_tbl = NULL;
		return;
	}

	/*
	 *  Initialize the task table with invalid entries.
	 */
	for (i = 0 ; i < SYM_CONF_MAX_TASK ; i++)
		lp->itlq_tbl[i] = FUNC0(np->notask_ba);

	/*
	 *  Fill up the tag buffer with tag numbers.
	 */
	for (i = 0 ; i < SYM_CONF_MAX_TASK ; i++)
		lp->cb_tags[i] = i;

	/*
	 *  Make the task table available to SCRIPTS,
	 *  And accept tagged commands now.
	 */
	lp->head.itlq_tbl_sa = FUNC0(FUNC6(lp->itlq_tbl));
}