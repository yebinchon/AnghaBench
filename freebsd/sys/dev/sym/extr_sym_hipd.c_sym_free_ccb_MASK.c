#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* tcb_p ;
typedef  TYPE_3__* lcb_p ;
typedef  TYPE_4__* hcb_p ;
typedef  TYPE_5__* ccb_p ;
struct TYPE_17__ {size_t target; int tag; int /*<<< orphan*/  link_ccbq; int /*<<< orphan*/  host_status; int /*<<< orphan*/ * cam_ccb; scalar_t__ dmamapped; int /*<<< orphan*/  dmamap; int /*<<< orphan*/  lun; } ;
struct TYPE_16__ {int /*<<< orphan*/  free_ccbq; int /*<<< orphan*/  data_dmat; TYPE_5__* last_cp; int /*<<< orphan*/  bad_itl_ba; int /*<<< orphan*/  bad_itlq_ba; TYPE_2__* target; } ;
struct TYPE_13__ {void* resel_sa; void* itl_task_sa; } ;
struct TYPE_15__ {int* cb_tags; size_t if_tag; scalar_t__ busy_itlq; scalar_t__ busy_itl; TYPE_1__ head; void** itlq_tbl; } ;
struct TYPE_14__ {TYPE_5__* nego_cp; int /*<<< orphan*/  busy0_map; } ;

/* Variables and functions */
 int DEBUG_FLAGS ; 
 int DEBUG_TAGS ; 
 int /*<<< orphan*/  HS_IDLE ; 
 int NO_TAG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 size_t SYM_CONF_MAX_TASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  resel_bad_lun ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(hcb_p np, ccb_p cp)
{
	tcb_p tp = &np->target[cp->target];
	lcb_p lp = FUNC7(tp, cp->lun);

	if (DEBUG_FLAGS & DEBUG_TAGS) {
		FUNC0(np, cp->target, cp->lun);
		FUNC4 ("ccb @%p freeing tag %d.\n", cp, cp->tag);
	}

	/*
	 *  If LCB available,
	 */
	if (lp) {
		/*
		 *  If tagged, release the tag, set the relect path
		 */
		if (cp->tag != NO_TAG) {
			/*
			 *  Free the tag value.
			 */
			lp->cb_tags[lp->if_tag] = cp->tag;
			if (++lp->if_tag == SYM_CONF_MAX_TASK)
				lp->if_tag = 0;
			/*
			 *  Make the reselect path invalid,
			 *  and uncount this CCB.
			 */
			lp->itlq_tbl[cp->tag] = FUNC3(np->bad_itlq_ba);
			--lp->busy_itlq;
		} else {	/* Untagged */
			/*
			 *  Make the reselect path invalid,
			 *  and uncount this CCB.
			 */
			lp->head.itl_task_sa = FUNC3(np->bad_itl_ba);
			--lp->busy_itl;
		}
		/*
		 *  If no JOB active, make the LUN reselect path invalid.
		 */
		if (lp->busy_itlq == 0 && lp->busy_itl == 0)
			lp->head.resel_sa =
				FUNC3(FUNC1 (np, resel_bad_lun));
	}
	/*
	 *  Otherwise, we only accept 1 IO per LUN.
	 *  Clear the bit that keeps track of this IO.
	 */
	else
		FUNC5(tp->busy0_map, cp->lun);

	/*
	 *  We donnot queue more than 1 ccb per target
	 *  with negotiation at any time. If this ccb was
	 *  used for negotiation, clear this info in the tcb.
	 */
	if (cp == tp->nego_cp)
		tp->nego_cp = NULL;

#ifdef SYM_CONF_IARB_SUPPORT
	/*
	 *  If we just complete the last queued CCB,
	 *  clear this info that is no longer relevant.
	 */
	if (cp == np->last_cp)
		np->last_cp = NULL;
#endif

	/*
	 *  Unmap user data from DMA map if needed.
	 */
	if (cp->dmamapped) {
		FUNC2(np->data_dmat, cp->dmamap);
		cp->dmamapped = 0;
	}

	/*
	 *  Make this CCB available.
	 */
	cp->cam_ccb = NULL;
	cp->host_status = HS_IDLE;
	FUNC8(&cp->link_ccbq);
	FUNC6(&cp->link_ccbq, &np->free_ccbq);
}