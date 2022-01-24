#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct scb {int flags; TYPE_1__* hscb; } ;
struct ahd_softc {int /*<<< orphan*/  timedout_scbs; } ;
struct TYPE_2__ {int task_management; int control; scalar_t__ task_attribute; scalar_t__ cdb_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*) ; 
 int /*<<< orphan*/  AHD_MODE_SCSI ; 
 int ATNO ; 
 int /*<<< orphan*/  CAM_CMD_TIMEOUT ; 
 int /*<<< orphan*/  CAM_REQUEUE_REQ ; 
 int DISCONNECTED ; 
 int HOST_MSG ; 
 int /*<<< orphan*/  LASTPHASE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct scb* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct scb*,int /*<<< orphan*/ ) ; 
 int MK_MESSAGE ; 
 int /*<<< orphan*/  MSG_OUT ; 
 int NOT_IDENTIFIED ; 
 int P_BUSFREE ; 
 int /*<<< orphan*/  ROLE_INITIATOR ; 
 int SCB_ABORT ; 
 int /*<<< orphan*/  SCB_CONTROL ; 
 int SCB_DEVICE_RESET ; 
 char FUNC4 (struct ahd_softc*,struct scb*) ; 
 int FUNC5 (struct scb*) ; 
 int FUNC6 (struct scb*) ; 
 int FUNC7 (struct ahd_softc*,struct scb*) ; 
 int SCB_LIST_NULL ; 
 int SCB_PACKETIZED ; 
 int SCB_RECOVERY_SCB ; 
 int /*<<< orphan*/  SCB_TASK_MANAGEMENT ; 
 int SCB_TIMEDOUT ; 
 int /*<<< orphan*/  SCSIPHASE ; 
 int /*<<< orphan*/  SCSISIGO ; 
 int /*<<< orphan*/  SEARCH_COMPLETE ; 
 int /*<<< orphan*/  SEARCH_COUNT ; 
 int /*<<< orphan*/  SEQ_FLAGS ; 
 int SIU_TASKMGMT_ABORT_TASK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC8 (struct ahd_softc*) ; 
 int FUNC9 (struct ahd_softc*) ; 
 int FUNC10 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct ahd_softc*) ; 
 struct scb* FUNC12 (struct ahd_softc*,int) ; 
 char* FUNC13 (struct ahd_softc*) ; 
 scalar_t__ FUNC14 (struct ahd_softc*,struct scb*,struct scb*) ; 
 int /*<<< orphan*/  FUNC15 (struct ahd_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC17 (struct ahd_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC18 (struct ahd_softc*,struct scb*) ; 
 int FUNC19 (struct ahd_softc*,char,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (struct ahd_softc*,int,char,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct ahd_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC23 (struct ahd_softc*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC25 (struct scb*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct scb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (char*,...) ; 
 int /*<<< orphan*/  timedout_links ; 

void
FUNC28(struct ahd_softc *ahd)
{
	struct	scb *scb;
	struct	scb *active_scb;
	int	found;
	int	was_paused;
	u_int	active_scbptr;
	u_int	last_phase;

	/*
	 * Pause the controller and manually flush any
	 * commands that have just completed but that our
	 * interrupt handler has yet to see.
	 */
	was_paused = FUNC11(ahd);

	FUNC27("%s: Recovery Initiated - Card was %spaused\n", FUNC13(ahd),
	       was_paused ? "" : "not ");
	FUNC0(ahd);
	FUNC8(ahd);

	FUNC16(ahd);

	if (FUNC1(&ahd->timedout_scbs) != 0) {
		/*
		 * The timedout commands have already
		 * completed.  This typically means
		 * that either the timeout value was on
		 * the hairy edge of what the device
		 * requires or - more likely - interrupts
		 * are not happening.
		 */
		FUNC27("%s: Timedout SCBs already complete. "
		       "Interrupts may not be functioning.\n", FUNC13(ahd));
		FUNC24(ahd);
		return;
	}

	/*
	 * Determine identity of SCB acting on the bus.
	 * This test only catches non-packetized transactions.
	 * Due to the fleeting nature of packetized operations,
	 * we can't easily determine that a packetized operation
	 * is on the bus.
	 */
	FUNC21(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
	last_phase = FUNC10(ahd, LASTPHASE);
	active_scbptr = FUNC9(ahd);
	active_scb = NULL;
	if (last_phase != P_BUSFREE
	 || (FUNC10(ahd, SEQ_FLAGS) & NOT_IDENTIFIED) == 0)
		active_scb = FUNC12(ahd, active_scbptr);

	while ((scb = FUNC2(&ahd->timedout_scbs)) != NULL) {
		int	target;
		int	lun;
		char	channel;

		target = FUNC7(ahd, scb);
		channel = FUNC4(ahd, scb);
		lun = FUNC5(scb);

		FUNC17(ahd, scb);
		FUNC27("SCB %d - timed out\n", FUNC6(scb));

		if (scb->flags & (SCB_DEVICE_RESET|SCB_ABORT)) {
			/*
			 * Been down this road before.
			 * Do a full bus reset.
			 */
			FUNC26(scb, CAM_CMD_TIMEOUT);
bus_reset:
			found = FUNC19(ahd, channel,
						  /*Initiate Reset*/TRUE);
			FUNC27("%s: Issued Channel %c Bus Reset. "
			       "%d SCBs aborted\n", FUNC13(ahd), channel,
			       found);
			continue;
		}

		/*
		 * Remove the command from the timedout list in
		 * preparation for requeing it.
		 */
		FUNC3(scb, timedout_links);
		scb->flags &= ~SCB_TIMEDOUT;

		if (active_scb != NULL) {

			if (active_scb != scb) {

				/*
				 * If the active SCB is not us, assume that
				 * the active SCB has a longer timeout than
				 * the timedout SCB, and wait for the active
				 * SCB to timeout.  As a safeguard, only
				 * allow this deferral to continue if some
				 * untimed-out command is outstanding.
				 */ 
				if (FUNC14(ahd, scb,
							  active_scb) == 0)
					goto bus_reset;
				continue;
			} 

			/*
			 * We're active on the bus, so assert ATN
			 * and hope that the target responds.
			 */
			FUNC22(ahd, active_scb);
                	active_scb->flags |= SCB_RECOVERY_SCB|SCB_DEVICE_RESET;
			FUNC15(ahd, MSG_OUT, HOST_MSG);
			FUNC15(ahd, SCSISIGO, last_phase|ATNO);
			FUNC17(ahd, active_scb);
			FUNC27("BDR message in message buffer\n");
			FUNC25(scb, 2 * 1000);
			break;
		} else if (last_phase != P_BUSFREE
			&& FUNC10(ahd, SCSIPHASE) == 0) {
			/*
			 * SCB is not identified, there
			 * is no pending REQ, and the sequencer
			 * has not seen a busfree.  Looks like
			 * a stuck connection waiting to
			 * go busfree.  Reset the bus.
			 */
			FUNC27("%s: Connection stuck awaiting busfree or "
			       "Identify Msg.\n", FUNC13(ahd));
			goto bus_reset;
		} else if (FUNC20(ahd, target, channel, lun,
					      FUNC6(scb),
					      ROLE_INITIATOR, /*status*/0,
					      SEARCH_COUNT) > 0) {

			/*
			 * We haven't even gone out on the bus
			 * yet, so the timeout must be due to
			 * some other command.  Reset the timer
			 * and go on.
			 */
			if (FUNC14(ahd, scb, NULL) == 0)
				goto bus_reset;
		} else {
			/*
			 * This SCB is for a disconnected transaction
			 * and we haven't found a better candidate on
			 * the bus to explain this timeout.
			 */
			FUNC22(ahd, scb);

			/*
			 * Actually re-queue this SCB in an attempt
			 * to select the device before it reconnects.
			 * In either case (selection or reselection),
			 * we will now issue a target reset to the
			 * timed-out device.
			 */
			scb->flags |= SCB_DEVICE_RESET;
			scb->hscb->cdb_len = 0;
			scb->hscb->task_attribute = 0;
			scb->hscb->task_management = SIU_TASKMGMT_ABORT_TASK;

			FUNC23(ahd, FUNC6(scb));
			if ((scb->flags & SCB_PACKETIZED) != 0) {
				/*
				 * Mark the SCB has having an outstanding
				 * task management function.  Should the command
				 * complete normally before the task management
				 * function can be sent, the host will be
				 * notified to abort our requeued SCB.
				 */
				FUNC15(ahd, SCB_TASK_MANAGEMENT,
					 scb->hscb->task_management);
			} else {
				/*
				 * If non-packetized, set the MK_MESSAGE control
				 * bit indicating that we desire to send a
				 * message.  We also set the disconnected flag
				 * since there is no guarantee that our SCB
				 * control byte matches the version on the
				 * card.  We don't want the sequencer to abort
				 * the command thinking an unsolicited
				 * reselection occurred.
				 */
				scb->hscb->control |= MK_MESSAGE|DISCONNECTED;

				/*
				 * The sequencer will never re-reference the
				 * in-core SCB.  To make sure we are notified
				 * during reslection, set the MK_MESSAGE flag in
				 * the card's copy of the SCB.
				 */
				FUNC15(ahd, SCB_CONTROL,
					 FUNC10(ahd, SCB_CONTROL)|MK_MESSAGE);
			}

			/*
			 * Clear out any entries in the QINFIFO first
			 * so we are the next SCB for this target
			 * to run.
			 */
			FUNC20(ahd, target, channel, lun,
					   SCB_LIST_NULL, ROLE_INITIATOR,
					   CAM_REQUEUE_REQ, SEARCH_COMPLETE);
			FUNC18(ahd, scb);
			FUNC23(ahd, active_scbptr);
			FUNC17(ahd, scb);
			FUNC27("Queuing a BDR SCB\n");
			FUNC25(scb, 2 * 1000);
			break;
		}
	}
	
	/*
	 * Any remaining SCBs were not the "culprit", so remove
	 * them from the timeout list.  The timer for these commands
	 * will be reset once the recovery SCB completes.
	 */
	while ((scb = FUNC2(&ahd->timedout_scbs)) != NULL) {

		FUNC3(scb, timedout_links);
		scb->flags &= ~SCB_TIMEDOUT;
	}

	FUNC24(ahd);
}