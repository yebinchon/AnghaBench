#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  size_t u_int ;
struct scb {int flags; TYPE_1__* hscb; } ;
struct ahc_softc {size_t qinfifonext; int features; size_t* qinfifo; TYPE_4__* scb_data; TYPE_3__* next_queued_scb; } ;
typedef  int /*<<< orphan*/  role_t ;
typedef  int /*<<< orphan*/  cam_status ;
typedef  int ahc_search_action ;
struct TYPE_8__ {size_t numscbs; int /*<<< orphan*/ ** scbindex; } ;
struct TYPE_7__ {TYPE_2__* hscb; } ;
struct TYPE_6__ {size_t tag; } ;
struct TYPE_5__ {size_t next; size_t tag; } ;

/* Variables and functions */
 int AHC_QUEUE_REGS ; 
 int /*<<< orphan*/  CAM_REQ_CMP ; 
 int /*<<< orphan*/  CAM_REQ_INPROG ; 
 int /*<<< orphan*/  HNSCB_QOFF ; 
 int /*<<< orphan*/  KERNEL_QINPOS ; 
 int /*<<< orphan*/  NEXT_QUEUED_SCB ; 
 int /*<<< orphan*/  QINPOS ; 
 int /*<<< orphan*/  SCBPTR ; 
 int SCB_ACTIVE ; 
 size_t SCB_LIST_NULL ; 
 int /*<<< orphan*/  SCB_NEXT ; 
 int /*<<< orphan*/  SCB_TAG ; 
#define  SEARCH_COMPLETE 130 
#define  SEARCH_COUNT 129 
#define  SEARCH_REMOVE 128 
 int /*<<< orphan*/  SNSCB_QOFF ; 
 int /*<<< orphan*/  WAITING_SCBH ; 
 int /*<<< orphan*/  FUNC0 (struct ahc_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahc_softc*) ; 
 size_t FUNC3 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 struct scb* FUNC4 (struct ahc_softc*,size_t) ; 
 scalar_t__ FUNC5 (struct ahc_softc*,struct scb*,int,char,int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ahc_softc*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct ahc_softc*,struct scb*,struct scb*) ; 
 int /*<<< orphan*/  FUNC8 (struct ahc_softc*) ; 
 size_t FUNC9 (struct ahc_softc*,size_t,size_t) ; 
 scalar_t__ FUNC10 (struct ahc_softc*,int /*<<< orphan*/ *,int,char,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ahc_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC12 (struct scb*) ; 
 int /*<<< orphan*/  FUNC13 (struct scb*) ; 
 int /*<<< orphan*/  FUNC14 (struct scb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 

int
FUNC17(struct ahc_softc *ahc, int target, char channel,
		   int lun, u_int tag, role_t role, uint32_t status,
		   ahc_search_action action)
{
	struct	scb *scb;
	struct	scb *prev_scb;
	uint8_t qinstart;
	uint8_t qinpos;
	uint8_t qintail;
	uint8_t next;
	uint8_t prev;
	uint8_t curscbptr;
	int	found;
	int	have_qregs;

	qintail = ahc->qinfifonext;
	have_qregs = (ahc->features & AHC_QUEUE_REGS) != 0;
	if (have_qregs) {
		qinstart = FUNC3(ahc, SNSCB_QOFF);
		FUNC6(ahc, SNSCB_QOFF, qinstart);
	} else
		qinstart = FUNC3(ahc, QINPOS);
	qinpos = qinstart;
	found = 0;
	prev_scb = NULL;

	if (action == SEARCH_COMPLETE) {
		/*
		 * Don't attempt to run any queued untagged transactions
		 * until we are done with the abort process.
		 */
		FUNC2(ahc);
	}

	/*
	 * Start with an empty queue.  Entries that are not chosen
	 * for removal will be re-added to the queue as we go.
	 */
	ahc->qinfifonext = qinpos;
	FUNC6(ahc, NEXT_QUEUED_SCB, ahc->next_queued_scb->hscb->tag);

	while (qinpos != qintail) {
		scb = FUNC4(ahc, ahc->qinfifo[qinpos]);
		if (scb == NULL) {
			FUNC16("qinpos = %d, SCB index = %d\n",
				qinpos, ahc->qinfifo[qinpos]);
			FUNC15("Loop 1\n");
		}

		if (FUNC5(ahc, scb, target, channel, lun, tag, role)) {
			/*
			 * We found an scb that needs to be acted on.
			 */
			found++;
			switch (action) {
			case SEARCH_COMPLETE:
			{
				cam_status ostat;
				cam_status cstat;

				ostat = FUNC13(scb);
				if (ostat == CAM_REQ_INPROG)
					FUNC14(scb, status);
				cstat = FUNC13(scb);
				if (cstat != CAM_REQ_CMP)
					FUNC12(scb);
				if ((scb->flags & SCB_ACTIVE) == 0)
					FUNC16("Inactive SCB in qinfifo\n");
				FUNC0(ahc, scb);

				/* FALLTHROUGH */
			}
			case SEARCH_REMOVE:
				break;
			case SEARCH_COUNT:
				FUNC7(ahc, prev_scb, scb);
				prev_scb = scb;
				break;
			}
		} else {
			FUNC7(ahc, prev_scb, scb);
			prev_scb = scb;
		}
		qinpos++;
	}

	if ((ahc->features & AHC_QUEUE_REGS) != 0) {
		FUNC6(ahc, HNSCB_QOFF, ahc->qinfifonext);
	} else {
		FUNC6(ahc, KERNEL_QINPOS, ahc->qinfifonext);
	}

	if (action != SEARCH_COUNT
	 && (found != 0)
	 && (qinstart != ahc->qinfifonext)) {
		/*
		 * The sequencer may be in the process of dmaing
		 * down the SCB at the beginning of the queue.
		 * This could be problematic if either the first,
		 * or the second SCB is removed from the queue
		 * (the first SCB includes a pointer to the "next"
		 * SCB to dma). If we have removed any entries, swap
		 * the first element in the queue with the next HSCB
		 * so the sequencer will notice that NEXT_QUEUED_SCB
		 * has changed during its dma attempt and will retry
		 * the DMA.
		 */
		scb = FUNC4(ahc, ahc->qinfifo[qinstart]);

		if (scb == NULL) {
			FUNC16("found = %d, qinstart = %d, qinfifionext = %d\n",
				found, qinstart, ahc->qinfifonext);
			FUNC15("First/Second Qinfifo fixup\n");
		}
		/*
		 * ahc_swap_with_next_hscb forces our next pointer to
		 * point to the reserved SCB for future commands.  Save
		 * and restore our original next pointer to maintain
		 * queue integrity.
		 */
		next = scb->hscb->next;
		ahc->scb_data->scbindex[scb->hscb->tag] = NULL;
		FUNC11(ahc, scb);
		scb->hscb->next = next;
		ahc->qinfifo[qinstart] = scb->hscb->tag;

		/* Tell the card about the new head of the qinfifo. */
		FUNC6(ahc, NEXT_QUEUED_SCB, scb->hscb->tag);

		/* Fixup the tail "next" pointer. */
		qintail = ahc->qinfifonext - 1;
		scb = FUNC4(ahc, ahc->qinfifo[qintail]);
		scb->hscb->next = ahc->next_queued_scb->hscb->tag;
	}

	/*
	 * Search waiting for selection list.
	 */
	curscbptr = FUNC3(ahc, SCBPTR);
	next = FUNC3(ahc, WAITING_SCBH);  /* Start at head of list. */
	prev = SCB_LIST_NULL;

	while (next != SCB_LIST_NULL) {
		uint8_t scb_index;

		FUNC6(ahc, SCBPTR, next);
		scb_index = FUNC3(ahc, SCB_TAG);
		if (scb_index >= ahc->scb_data->numscbs) {
			FUNC16("Waiting List inconsistency. "
			       "SCB index == %d, yet numscbs == %d.",
			       scb_index, ahc->scb_data->numscbs);
			FUNC1(ahc);
			FUNC15("for safety");
		}
		scb = FUNC4(ahc, scb_index);
		if (scb == NULL) {
			FUNC16("scb_index = %d, next = %d\n",
				scb_index, next);
			FUNC15("Waiting List traversal\n");
		}
		if (FUNC5(ahc, scb, target, channel,
				  lun, SCB_LIST_NULL, role)) {
			/*
			 * We found an scb that needs to be acted on.
			 */
			found++;
			switch (action) {
			case SEARCH_COMPLETE:
			{
				cam_status ostat;
				cam_status cstat;

				ostat = FUNC13(scb);
				if (ostat == CAM_REQ_INPROG)
					FUNC14(scb,
								   status);
				cstat = FUNC13(scb);
				if (cstat != CAM_REQ_CMP)
					FUNC12(scb);
				if ((scb->flags & SCB_ACTIVE) == 0)
					FUNC16("Inactive SCB in Wait List\n");
				FUNC0(ahc, scb);
				/* FALLTHROUGH */
			}
			case SEARCH_REMOVE:
				next = FUNC9(ahc, next, prev);
				break;
			case SEARCH_COUNT:
				prev = next;
				next = FUNC3(ahc, SCB_NEXT);
				break;
			}
		} else {
			
			prev = next;
			next = FUNC3(ahc, SCB_NEXT);
		}
	}
	FUNC6(ahc, SCBPTR, curscbptr);

	found += FUNC10(ahc, /*aic_io_ctx_t*/NULL, target,
					    channel, lun, status, action);

	if (action == SEARCH_COMPLETE)
		FUNC8(ahc);
	return (found);
}