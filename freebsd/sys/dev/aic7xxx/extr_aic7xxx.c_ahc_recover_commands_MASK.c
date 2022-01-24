#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct scb {int sg_count; int flags; TYPE_3__* hscb; TYPE_1__* sg_list; } ;
struct ahc_softc {int flags; int /*<<< orphan*/  timedout_scbs; TYPE_2__* scb_data; } ;
struct TYPE_6__ {int tag; scalar_t__ control; } ;
struct TYPE_5__ {scalar_t__ numscbs; } ;
struct TYPE_4__ {int addr; int len; } ;

/* Variables and functions */
 int AHC_PAGESCBS ; 
 int AHC_SG_LEN_MASK ; 
 scalar_t__ ATNO ; 
 int /*<<< orphan*/  CAM_CMD_TIMEOUT ; 
 int /*<<< orphan*/  CAM_REQUEUE_REQ ; 
 scalar_t__ DISCONNECTED ; 
 int FALSE ; 
 scalar_t__ HOST_MSG ; 
 int /*<<< orphan*/  LASTPHASE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct scb* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct scb*,int /*<<< orphan*/ ) ; 
 scalar_t__ MK_MESSAGE ; 
 int /*<<< orphan*/  MSG_OUT ; 
 scalar_t__ NOT_IDENTIFIED ; 
 scalar_t__ P_BUSFREE ; 
 scalar_t__ REQINIT ; 
 int /*<<< orphan*/  ROLE_INITIATOR ; 
 int /*<<< orphan*/  ROLE_TARGET ; 
 int /*<<< orphan*/  SCBPTR ; 
 int SCB_ABORT ; 
 int /*<<< orphan*/  SCB_CONTROL ; 
 int SCB_DEVICE_RESET ; 
 char FUNC3 (struct ahc_softc*,struct scb*) ; 
 int FUNC4 (struct scb*) ; 
 int FUNC5 (struct ahc_softc*,struct scb*) ; 
 int SCB_LIST_NULL ; 
 int /*<<< orphan*/  SCB_TAG ; 
 int SCB_TARGET_SCB ; 
 int SCB_TIMEDOUT ; 
 int /*<<< orphan*/  SCSISIGO ; 
 int /*<<< orphan*/  SEARCH_COMPLETE ; 
 int /*<<< orphan*/  SEARCH_COUNT ; 
 int /*<<< orphan*/  SEQ_FLAGS ; 
 int /*<<< orphan*/  SSTAT0 ; 
 int /*<<< orphan*/  SSTAT1 ; 
 scalar_t__ TARGET ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC6 (struct ahc_softc*,int,char,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ahc_softc*) ; 
 scalar_t__ FUNC8 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 struct scb* FUNC9 (struct ahc_softc*,scalar_t__) ; 
 char* FUNC10 (struct ahc_softc*) ; 
 scalar_t__ FUNC11 (struct ahc_softc*,struct scb*,struct scb*) ; 
 int /*<<< orphan*/  FUNC12 (struct ahc_softc*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC14 (struct ahc_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC15 (struct ahc_softc*,struct scb*) ; 
 int FUNC16 (struct ahc_softc*,char,int) ; 
 int /*<<< orphan*/  FUNC17 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC18 (struct ahc_softc*,int,char,int,int,int,int,int) ; 
 scalar_t__ FUNC19 (struct ahc_softc*,int,char,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct ahc_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC21 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC22 (struct scb*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct scb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (char*,...) ; 
 int /*<<< orphan*/  timedout_links ; 

void
FUNC26(struct ahc_softc *ahc)
{
	struct	scb *scb;
	int	found;
	int	restart_needed;
	u_int	last_phase;

	/*
	 * Pause the controller and manually flush any
	 * commands that have just completed but that our
	 * interrupt handler has yet to see.
	 */
	FUNC13(ahc);

	if (FUNC0(&ahc->timedout_scbs) != 0) {
		/*
		 * The timedout commands have already
		 * completed.  This typically means
		 * that either the timeout value was on
		 * the hairy edge of what the device
		 * requires or - more likely - interrupts
		 * are not happening.
		 */
		FUNC25("%s: Timedout SCBs already complete. "
		       "Interrupts may not be functioning.\n", FUNC10(ahc));
		FUNC21(ahc);
		return;
	}

	restart_needed = 0;
	FUNC25("%s: Recovery Initiated\n", FUNC10(ahc));
	FUNC7(ahc);

	last_phase = FUNC8(ahc, LASTPHASE);
	while ((scb = FUNC1(&ahc->timedout_scbs)) != NULL) {
		u_int	active_scb_index;
		u_int	saved_scbptr;
		int	target;
		int	lun;
		int	i;
		char	channel;

		target = FUNC5(ahc, scb);
		channel = FUNC3(ahc, scb);
		lun = FUNC4(scb);

		FUNC14(ahc, scb);
		FUNC25("SCB 0x%x - timed out\n", scb->hscb->tag);
		if (scb->sg_count > 0) {
			for (i = 0; i < scb->sg_count; i++) {
				FUNC25("sg[%d] - Addr 0x%x : Length %d\n",
				       i,
				       scb->sg_list[i].addr,
				       scb->sg_list[i].len & AHC_SG_LEN_MASK);
			}
		}
		if (scb->flags & (SCB_DEVICE_RESET|SCB_ABORT)) {
			/*
			 * Been down this road before.
			 * Do a full bus reset.
			 */
			FUNC23(scb, CAM_CMD_TIMEOUT);
bus_reset:
			found = FUNC16(ahc, channel,
						  /*Initiate Reset*/TRUE);
			FUNC25("%s: Issued Channel %c Bus Reset. "
			       "%d SCBs aborted\n", FUNC10(ahc), channel,
			       found);
			continue;
		}

		/*
		 * Remove the command from the timedout list in
		 * preparation for requeing it.
		 */
		FUNC2(scb, timedout_links);
		scb->flags &= ~SCB_TIMEDOUT;

		/*
		 * If we are a target, transition to bus free and report
		 * the timeout.
		 * 
		 * The target/initiator that is holding up the bus may not
		 * be the same as the one that triggered this timeout
		 * (different commands have different timeout lengths).
		 * If the bus is idle and we are actiing as the initiator
		 * for this request, queue a BDR message to the timed out
		 * target.  Otherwise, if the timed out transaction is
		 * active:
		 *   Initiator transaction:
		 *	Stuff the message buffer with a BDR message and assert
		 *	ATN in the hopes that the target will let go of the bus
		 *	and go to the mesgout phase.  If this fails, we'll
		 *	get another timeout 2 seconds later which will attempt
		 *	a bus reset.
		 *
		 *   Target transaction:
		 *	Transition to BUS FREE and report the error.
		 *	It's good to be the target!
		 */
		saved_scbptr = FUNC8(ahc, SCBPTR);
		active_scb_index = FUNC8(ahc, SCB_TAG);

		if ((FUNC8(ahc, SEQ_FLAGS) & NOT_IDENTIFIED) == 0
		  && (active_scb_index < ahc->scb_data->numscbs)) {
			struct scb *active_scb;

			/*
			 * If the active SCB is not us, assume that
			 * the active SCB has a longer timeout than
			 * the timedout SCB, and wait for the active
			 * SCB to timeout.
			 */ 
			active_scb = FUNC9(ahc, active_scb_index);
			if (active_scb != scb) {
				if (FUNC11(ahc, scb,
							  active_scb) == 0)
					goto bus_reset;
				continue;
			} 

			/* It's us */
			if ((scb->flags & SCB_TARGET_SCB) != 0) {

				/*
				 * Send back any queued up transactions
				 * and properly record the error condition.
				 */
				FUNC6(ahc, FUNC5(ahc, scb),
					       FUNC3(ahc, scb),
					       FUNC4(scb),
					       scb->hscb->tag,
					       ROLE_TARGET,
					       CAM_CMD_TIMEOUT);

				/* Will clear us from the bus */
				restart_needed = 1;
				break;
			}

			FUNC20(ahc, active_scb);
			FUNC12(ahc, MSG_OUT, HOST_MSG);
			FUNC12(ahc, SCSISIGO, last_phase|ATNO);
			FUNC14(ahc, active_scb);
			FUNC25("BDR message in message buffer\n");
			active_scb->flags |= SCB_DEVICE_RESET;
			FUNC22(scb, 2 * 1000);
		} else if (last_phase != P_BUSFREE
			&& (FUNC8(ahc, SSTAT1) & REQINIT) == 0) {
			/*
			 * SCB is not identified, there
			 * is no pending REQ, and the sequencer
			 * has not seen a busfree.  Looks like
			 * a stuck connection waiting to
			 * go busfree.  Reset the bus.
			 */
			FUNC25("%s: Connection stuck awaiting busfree or "
			       "Identify Msg.\n", FUNC10(ahc));
			goto bus_reset;
		} else {
			int	 disconnected;

			if (last_phase != P_BUSFREE
			 && (FUNC8(ahc, SSTAT0) & TARGET) != 0) {
				/* Hung target selection.  Goto busfree */
				FUNC25("%s: Hung target selection\n",
				       FUNC10(ahc));
				restart_needed = 1;
				break;
			}

			/* XXX Shouldn't panic.  Just punt instead? */
			if ((scb->flags & SCB_TARGET_SCB) != 0)
				FUNC24("Timed-out target SCB but bus idle");

			if (FUNC19(ahc, target, channel, lun,
					       scb->hscb->tag, ROLE_INITIATOR,
					       /*status*/0, SEARCH_COUNT) > 0) {
				disconnected = FALSE;
			} else {
				disconnected = TRUE;
			}

			if (disconnected) {

				FUNC20(ahc, scb);
				/*
				 * Actually re-queue this SCB in an attempt
				 * to select the device before it reconnects.
				 * In either case (selection or reselection),
				 * we will now issue a target reset to the
				 * timed-out device.
				 *
				 * Set the MK_MESSAGE control bit indicating
				 * that we desire to send a message.  We
				 * also set the disconnected flag since
				 * in the paging case there is no guarantee
				 * that our SCB control byte matches the
				 * version on the card.  We don't want the
				 * sequencer to abort the command thinking
				 * an unsolicited reselection occurred.
				 */
				scb->hscb->control |= MK_MESSAGE|DISCONNECTED;
				scb->flags |= SCB_DEVICE_RESET;

				/*
				 * Remove any cached copy of this SCB in the
				 * disconnected list in preparation for the
				 * queuing of our abort SCB.  We use the
				 * same element in the SCB, SCB_NEXT, for
				 * both the qinfifo and the disconnected list.
				 */
				FUNC18(ahc, target, channel,
						     lun, scb->hscb->tag,
						     /*stop_on_first*/TRUE,
						     /*remove*/TRUE,
						     /*save_state*/FALSE);

				/*
				 * In the non-paging case, the sequencer will
				 * never re-reference the in-core SCB.
				 * To make sure we are notified during
				 * reslection, set the MK_MESSAGE flag in
				 * the card's copy of the SCB.
				 */
				if ((ahc->flags & AHC_PAGESCBS) == 0) {
					FUNC12(ahc, SCBPTR, scb->hscb->tag);
					FUNC12(ahc, SCB_CONTROL,
						 FUNC8(ahc, SCB_CONTROL)
						| MK_MESSAGE);
				}

				/*
				 * Clear out any entries in the QINFIFO first
				 * so we are the next SCB for this target
				 * to run.
				 */
				FUNC19(ahc,
						   FUNC5(ahc, scb),
						   channel, FUNC4(scb),
						   SCB_LIST_NULL,
						   ROLE_INITIATOR,
						   CAM_REQUEUE_REQ,
						   SEARCH_COMPLETE);
				FUNC14(ahc, scb);
				FUNC25("Queuing a BDR SCB\n");
				FUNC15(ahc, scb);
				FUNC12(ahc, SCBPTR, saved_scbptr);
				FUNC22(scb, 2 * 1000);
			} else {
				/* Go "immediately" to the bus reset */
				/* This shouldn't happen */
				FUNC20(ahc, scb);
				FUNC14(ahc, scb);
				FUNC25("SCB %d: Immediate reset.  "
					"Flags = 0x%x\n", scb->hscb->tag,
					scb->flags);
				goto bus_reset;
			}
		}
		break;
	}
	
	/*
	 * Any remaining SCBs were not the "culprit", so remove
	 * them from the timeout list.  The timer for these commands
	 * will be reset once the recovery SCB completes.
	 */
	while ((scb = FUNC1(&ahc->timedout_scbs)) != NULL) {

		FUNC2(scb, timedout_links);
		scb->flags &= ~SCB_TIMEDOUT;
	}

	if (restart_needed)
		FUNC17(ahc);
	else
		FUNC21(ahc);
}