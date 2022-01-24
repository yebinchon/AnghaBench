#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
struct scb {TYPE_5__* hscb; TYPE_2__* io_ctx; int /*<<< orphan*/  flags; } ;
struct ahc_tmode_tstate {int dummy; } ;
struct ahc_softc {int features; scalar_t__ msg_type; int send_msg_perror; scalar_t__* msgout_buf; int msgout_index; } ;
struct TYPE_10__ {int transport_version; scalar_t__ ppr_options; } ;
struct TYPE_9__ {int transport_version; } ;
struct ahc_initiator_tinfo {TYPE_4__ goal; TYPE_3__ curr; } ;
struct ahc_devinfo {int /*<<< orphan*/  target; int /*<<< orphan*/  our_scsiid; int /*<<< orphan*/  channel; } ;
struct TYPE_12__ {size_t phase; size_t mesg_out; char* phasemsg; } ;
struct TYPE_11__ {size_t tag; int control; } ;
struct TYPE_7__ {scalar_t__ func_code; } ;
struct TYPE_8__ {TYPE_1__ ccb_h; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHCMSG_1B ; 
 int /*<<< orphan*/  AHCMSG_EXT ; 
 int AHC_DT ; 
 int AHC_SHOW_SELTO ; 
 int AHC_TRANS_CUR ; 
 int AHC_TRANS_GOAL ; 
 int AHC_TWIN ; 
 int AHC_ULTRA2 ; 
 size_t BUSFREE ; 
 int /*<<< orphan*/  CAM_BDR_SENT ; 
 size_t CAM_LUN_WILDCARD ; 
 int /*<<< orphan*/  CAM_REQ_ABORTED ; 
 int /*<<< orphan*/  CAM_REQ_CMP ; 
 int /*<<< orphan*/  CAM_SEL_TIMEOUT ; 
 int /*<<< orphan*/  CAM_UNEXP_BUSFREE ; 
 int CLRBUSFREE ; 
 int /*<<< orphan*/  CLRINT ; 
 int CLRIOERR ; 
 int CLRSCSIINT ; 
 int CLRSCSIPERR ; 
 int CLRSELINGO ; 
 int CLRSELTIMEO ; 
 int /*<<< orphan*/  CLRSINT0 ; 
 int /*<<< orphan*/  CLRSINT1 ; 
 size_t CRCENDERR ; 
 size_t CRCREQERR ; 
 size_t CRCVALERR ; 
 size_t DUAL_EDGE_ERR ; 
 int ENAB40 ; 
 int ENAUTOATNP ; 
 int ENBUSFREE ; 
 int ENRSELI ; 
 int ENSELI ; 
 int FALSE ; 
 size_t IOERR ; 
 int /*<<< orphan*/  LASTPHASE ; 
 scalar_t__ MSG_ABORT ; 
 scalar_t__ MSG_ABORT_TAG ; 
 scalar_t__ MSG_BUS_DEV_RESET ; 
 scalar_t__ MSG_EXT_PPR ; 
 scalar_t__ MSG_EXT_SDTR ; 
 scalar_t__ MSG_EXT_WDTR ; 
 int /*<<< orphan*/  MSG_EXT_WDTR_BUS_8_BIT ; 
 size_t MSG_INITIATOR_DET_ERR ; 
 size_t MSG_NOOP ; 
 int /*<<< orphan*/  MSG_OUT ; 
 scalar_t__ MSG_TYPE_NONE ; 
 int NOT_IDENTIFIED ; 
 int PHASE_MASK ; 
 size_t P_BUSFREE ; 
 size_t P_DATAIN ; 
 size_t P_DATAIN_DT ; 
 size_t P_MESGOUT ; 
 int /*<<< orphan*/  ROLE_INITIATOR ; 
 int /*<<< orphan*/  SAVED_LUN ; 
 int /*<<< orphan*/  SAVED_SCSIID ; 
 int /*<<< orphan*/  SBLKCTL ; 
 int /*<<< orphan*/  SCBPTR ; 
 size_t FUNC0 (struct scb*) ; 
 scalar_t__ FUNC1 (struct scb*) ; 
 size_t SCB_LIST_NULL ; 
 int /*<<< orphan*/  SCB_TAG ; 
 int /*<<< orphan*/  SCB_TRANSMISSION_ERROR ; 
 char FUNC2 (struct ahc_softc*,size_t) ; 
 size_t FUNC3 (size_t) ; 
 int FUNC4 (struct ahc_softc*,size_t) ; 
 size_t SCSIPERR ; 
 int /*<<< orphan*/  SCSIRATE ; 
 size_t SCSIRSTI ; 
 int /*<<< orphan*/  SCSISEQ ; 
 int /*<<< orphan*/  SCSISIGI ; 
 int SELBUSB ; 
 size_t SELTO ; 
 int /*<<< orphan*/  SEQADDR0 ; 
 int /*<<< orphan*/  SEQADDR1 ; 
 int /*<<< orphan*/  SEQ_FLAGS ; 
 int /*<<< orphan*/  SIMODE1 ; 
 size_t SINGLE_EDGE ; 
 int /*<<< orphan*/  SSTAT0 ; 
 int /*<<< orphan*/  SSTAT1 ; 
 int /*<<< orphan*/  SSTAT2 ; 
 int TAG_ENB ; 
 int TRUE ; 
 int /*<<< orphan*/  WAITING_SCBH ; 
 scalar_t__ XPT_RESET_DEV ; 
 int /*<<< orphan*/  FUNC5 (struct ahc_softc*,size_t,char,size_t,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct ahc_devinfo*,size_t,size_t,size_t,char,int /*<<< orphan*/ ) ; 
 int ahc_debug ; 
 int /*<<< orphan*/  FUNC9 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct ahc_softc*,struct ahc_devinfo*) ; 
 struct ahc_initiator_tinfo* FUNC11 (struct ahc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ahc_tmode_tstate**) ; 
 int /*<<< orphan*/  FUNC12 (struct ahc_softc*,struct ahc_devinfo*) ; 
 int /*<<< orphan*/  FUNC13 (struct ahc_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC14 (struct ahc_softc*,struct ahc_devinfo*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC15 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 struct scb* FUNC17 (struct ahc_softc*,size_t) ; 
 scalar_t__ FUNC18 (struct ahc_softc*,struct scb*,size_t,char,size_t,size_t,int /*<<< orphan*/ ) ; 
 char* FUNC19 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC20 (struct ahc_softc*,int /*<<< orphan*/ ,int) ; 
 TYPE_6__* ahc_phase_table ; 
 int /*<<< orphan*/  FUNC21 (struct ahc_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC22 (struct ahc_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC23 (struct ahc_softc*,char,int) ; 
 int /*<<< orphan*/  FUNC24 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC25 (struct ahc_softc*,struct ahc_devinfo*,struct scb*) ; 
 scalar_t__ FUNC26 (struct ahc_softc*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC27 (struct ahc_softc*,struct ahc_devinfo*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC28 (struct ahc_softc*,struct ahc_devinfo*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC29 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC30 (struct scb*,int /*<<< orphan*/ ) ; 
 size_t num_phases ; 
 int /*<<< orphan*/  FUNC31 (char*,...) ; 

void
FUNC32(struct ahc_softc *ahc, u_int intstat)
{
	u_int	scb_index;
	u_int	status0;
	u_int	status;
	struct	scb *scb;
	char	cur_channel;
	char	intr_channel;

	if ((ahc->features & AHC_TWIN) != 0
	 && ((FUNC15(ahc, SBLKCTL) & SELBUSB) != 0))
		cur_channel = 'B';
	else
		cur_channel = 'A';
	intr_channel = cur_channel;

	if ((ahc->features & AHC_ULTRA2) != 0)
		status0 = FUNC15(ahc, SSTAT0) & IOERR;
	else
		status0 = 0;
	status = FUNC15(ahc, SSTAT1) & (SELTO|SCSIRSTI|BUSFREE|SCSIPERR);
	if (status == 0 && status0 == 0) {
		if ((ahc->features & AHC_TWIN) != 0) {
			/* Try the other channel */
		 	FUNC20(ahc, SBLKCTL, FUNC15(ahc, SBLKCTL) ^ SELBUSB);
			status = FUNC15(ahc, SSTAT1)
			       & (SELTO|SCSIRSTI|BUSFREE|SCSIPERR);
			intr_channel = (cur_channel == 'A') ? 'B' : 'A';
		}
		if (status == 0) {
			FUNC31("%s: Spurious SCSI interrupt\n", FUNC19(ahc));
			FUNC20(ahc, CLRINT, CLRSCSIINT);
			FUNC29(ahc);
			return;
		}
	}

	/* Make sure the sequencer is in a safe location. */
	FUNC6(ahc);

	scb_index = FUNC15(ahc, SCB_TAG);
	scb = FUNC17(ahc, scb_index);
	if (scb != NULL
	 && (FUNC15(ahc, SEQ_FLAGS) & NOT_IDENTIFIED) != 0)
		scb = NULL;

	if ((ahc->features & AHC_ULTRA2) != 0
	 && (status0 & IOERR) != 0) {
		int now_lvd;

		now_lvd = FUNC15(ahc, SBLKCTL) & ENAB40;
		FUNC31("%s: Transceiver State Has Changed to %s mode\n",
		       FUNC19(ahc), now_lvd ? "LVD" : "SE");
		FUNC20(ahc, CLRSINT0, CLRIOERR);
		/*
		 * When transitioning to SE mode, the reset line
		 * glitches, triggering an arbitration bug in some
		 * Ultra2 controllers.  This bug is cleared when we
		 * assert the reset line.  Since a reset glitch has
		 * already occurred with this transition and a
		 * transceiver state change is handled just like
		 * a bus reset anyway, asserting the reset line
		 * ourselves is safe.
		 */
		FUNC23(ahc, intr_channel,
				 /*Initiate Reset*/now_lvd == 0);
	} else if ((status & SCSIRSTI) != 0) {
		FUNC31("%s: Someone reset channel %c\n",
			FUNC19(ahc), intr_channel);
		if (intr_channel != cur_channel)
		 	FUNC20(ahc, SBLKCTL, FUNC15(ahc, SBLKCTL) ^ SELBUSB);
		FUNC23(ahc, intr_channel, /*Initiate Reset*/FALSE);
	} else if ((status & SCSIPERR) != 0) {
		/*
		 * Determine the bus phase and queue an appropriate message.
		 * SCSIPERR is latched true as soon as a parity error
		 * occurs.  If the sequencer acked the transfer that
		 * caused the parity error and the currently presented
		 * transfer on the bus has correct parity, SCSIPERR will
		 * be cleared by CLRSCSIPERR.  Use this to determine if
		 * we should look at the last phase the sequencer recorded,
		 * or the current phase presented on the bus.
		 */
		struct	ahc_devinfo devinfo;
		u_int	mesg_out;
		u_int	curphase;
		u_int	errorphase;
		u_int	lastphase;
		u_int	scsirate;
		u_int	i;
		u_int	sstat2;
		int	silent;

		lastphase = FUNC15(ahc, LASTPHASE);
		curphase = FUNC15(ahc, SCSISIGI) & PHASE_MASK;
		sstat2 = FUNC15(ahc, SSTAT2);
		FUNC20(ahc, CLRSINT1, CLRSCSIPERR);
		/*
		 * For all phases save DATA, the sequencer won't
		 * automatically ack a byte that has a parity error
		 * in it.  So the only way that the current phase
		 * could be 'data-in' is if the parity error is for
		 * an already acked byte in the data phase.  During
		 * synchronous data-in transfers, we may actually
		 * ack bytes before latching the current phase in
		 * LASTPHASE, leading to the discrepancy between
		 * curphase and lastphase.
		 */
		if ((FUNC15(ahc, SSTAT1) & SCSIPERR) != 0
		 || curphase == P_DATAIN || curphase == P_DATAIN_DT)
			errorphase = curphase;
		else
			errorphase = lastphase;

		for (i = 0; i < num_phases; i++) {
			if (errorphase == ahc_phase_table[i].phase)
				break;
		}
		mesg_out = ahc_phase_table[i].mesg_out;
		silent = FALSE;
		if (scb != NULL) {
			if (FUNC1(scb))
				silent = TRUE;
			else
				FUNC21(ahc, scb);
			scb->flags |= SCB_TRANSMISSION_ERROR;
		} else
			FUNC31("%s:%c:%d: ", FUNC19(ahc), intr_channel,
			       FUNC4(ahc, FUNC15(ahc, SAVED_SCSIID)));
		scsirate = FUNC15(ahc, SCSIRATE);
		if (silent == FALSE) {
			FUNC31("parity error detected %s. "
			       "SEQADDR(0x%x) SCSIRATE(0x%x)\n",
			       ahc_phase_table[i].phasemsg,
			       FUNC16(ahc, SEQADDR0),
			       scsirate);
			if ((ahc->features & AHC_DT) != 0) {
				if ((sstat2 & CRCVALERR) != 0)
					FUNC31("\tCRC Value Mismatch\n");
				if ((sstat2 & CRCENDERR) != 0)
					FUNC31("\tNo terminal CRC packet "
					       "recevied\n");
				if ((sstat2 & CRCREQERR) != 0)
					FUNC31("\tIllegal CRC packet "
					       "request\n");
				if ((sstat2 & DUAL_EDGE_ERR) != 0)
					FUNC31("\tUnexpected %sDT Data Phase\n",
					       (scsirate & SINGLE_EDGE)
					     ? "" : "non-");
			}
		}

		if ((ahc->features & AHC_DT) != 0
		 && (sstat2 & DUAL_EDGE_ERR) != 0) {
			/*
			 * This error applies regardless of
			 * data direction, so ignore the value
			 * in the phase table.
			 */
			mesg_out = MSG_INITIATOR_DET_ERR;
		}

		/*
		 * We've set the hardware to assert ATN if we   
		 * get a parity error on "in" phases, so all we  
		 * need to do is stuff the message buffer with
		 * the appropriate message.  "In" phases have set
		 * mesg_out to something other than MSG_NOP.
		 */
		if (mesg_out != MSG_NOOP) {
			if (ahc->msg_type != MSG_TYPE_NONE)
				ahc->send_msg_perror = TRUE;
			else
				FUNC20(ahc, MSG_OUT, mesg_out);
		}
		/*
		 * Force a renegotiation with this target just in
		 * case we are out of sync for some external reason
		 * unknown (or unreported) by the target.
		 */
		FUNC10(ahc, &devinfo);
		FUNC12(ahc, &devinfo);

		FUNC20(ahc, CLRINT, CLRSCSIINT);
		FUNC29(ahc);
	} else if ((status & SELTO) != 0) {
		u_int	scbptr;

		/* Stop the selection */
		FUNC20(ahc, SCSISEQ, 0);

		/* No more pending messages */
		FUNC7(ahc);

		/* Clear interrupt state */
		FUNC20(ahc, SIMODE1, FUNC15(ahc, SIMODE1) & ~ENBUSFREE);
		FUNC20(ahc, CLRSINT1, CLRSELTIMEO|CLRBUSFREE|CLRSCSIPERR);

		/*
		 * Although the driver does not care about the
		 * 'Selection in Progress' status bit, the busy
		 * LED does.  SELINGO is only cleared by a successful
		 * selection, so we must manually clear it to insure
		 * the LED turns off just incase no future successful
		 * selections occur (e.g. no devices on the bus).
		 */
		FUNC20(ahc, CLRSINT0, CLRSELINGO);

		scbptr = FUNC15(ahc, WAITING_SCBH);
		FUNC20(ahc, SCBPTR, scbptr);
		scb_index = FUNC15(ahc, SCB_TAG);

		scb = FUNC17(ahc, scb_index);
		if (scb == NULL) {
			FUNC31("%s: ahc_intr - referenced scb not "
			       "valid during SELTO scb(%d, %d)\n",
			       FUNC19(ahc), scbptr, scb_index);
			FUNC9(ahc);
		} else {
			struct ahc_devinfo devinfo;
#ifdef AHC_DEBUG
			if ((ahc_debug & AHC_SHOW_SELTO) != 0) {
				ahc_print_path(ahc, scb);
				printf("Saw Selection Timeout for SCB 0x%x\n",
				       scb_index);
			}
#endif
			FUNC25(ahc, &devinfo, scb);
			FUNC30(scb, CAM_SEL_TIMEOUT);
			FUNC13(ahc, scb);

			/*
			 * Cancel any pending transactions on the device
			 * now that it seems to be missing.  This will
			 * also revert us to async/narrow transfers until
			 * we can renegotiate with the device.
			 */
			FUNC14(ahc, &devinfo,
					    CAM_SEL_TIMEOUT,
					    "Selection Timeout",
					    /*verbose_level*/1);
		}
		FUNC20(ahc, CLRINT, CLRSCSIINT);
		FUNC24(ahc);
	} else if ((status & BUSFREE) != 0
		&& (FUNC15(ahc, SIMODE1) & ENBUSFREE) != 0) {
		struct	ahc_devinfo devinfo;
		u_int	lastphase;
		u_int	saved_scsiid;
		u_int	saved_lun;
		u_int	target;
		u_int	initiator_role_id;
		char	channel;
		int	printerror;

		/*
		 * Clear our selection hardware as soon as possible.
		 * We may have an entry in the waiting Q for this target,
		 * that is affected by this busfree and we don't want to
		 * go about selecting the target while we handle the event.
		 */
		FUNC20(ahc, SCSISEQ,
			 FUNC15(ahc, SCSISEQ) & (ENSELI|ENRSELI|ENAUTOATNP));

		/*
		 * Disable busfree interrupts and clear the busfree
		 * interrupt status.  We do this here so that several
		 * bus transactions occur prior to clearing the SCSIINT
		 * latch.  It can take a bit for the clearing to take effect.
		 */
		FUNC20(ahc, SIMODE1, FUNC15(ahc, SIMODE1) & ~ENBUSFREE);
		FUNC20(ahc, CLRSINT1, CLRBUSFREE|CLRSCSIPERR);

		/*
		 * Look at what phase we were last in.
		 * If its message out, chances are pretty good
		 * that the busfree was in response to one of
		 * our abort requests.
		 */
		lastphase = FUNC15(ahc, LASTPHASE);
		saved_scsiid = FUNC15(ahc, SAVED_SCSIID);
		saved_lun = FUNC15(ahc, SAVED_LUN);
		target = FUNC4(ahc, saved_scsiid);
		initiator_role_id = FUNC3(saved_scsiid);
		channel = FUNC2(ahc, saved_scsiid);
		FUNC8(&devinfo, initiator_role_id,
				    target, saved_lun, channel, ROLE_INITIATOR);
		printerror = 1;

		if (lastphase == P_MESGOUT) {
			u_int tag;

			tag = SCB_LIST_NULL;
			if (FUNC26(ahc, AHCMSG_1B, MSG_ABORT_TAG, TRUE)
			 || FUNC26(ahc, AHCMSG_1B, MSG_ABORT, TRUE)) {
				if (ahc->msgout_buf[ahc->msgout_index - 1]
				 == MSG_ABORT_TAG)
					tag = scb->hscb->tag;
				FUNC21(ahc, scb);
				FUNC31("SCB %d - Abort%s Completed.\n",
				       scb->hscb->tag, tag == SCB_LIST_NULL ?
				       "" : " Tag");
				FUNC5(ahc, target, channel,
					       saved_lun, tag,
					       ROLE_INITIATOR,
					       CAM_REQ_ABORTED);
				printerror = 0;
			} else if (FUNC26(ahc, AHCMSG_1B,
						MSG_BUS_DEV_RESET, TRUE)) {
#ifdef __FreeBSD__
				/*
				 * Don't mark the user's request for this BDR
				 * as completing with CAM_BDR_SENT.  CAM3
				 * specifies CAM_REQ_CMP.
				 */
				if (scb != NULL
				 && scb->io_ctx->ccb_h.func_code== XPT_RESET_DEV
				 && ahc_match_scb(ahc, scb, target, channel,
						  CAM_LUN_WILDCARD,
						  SCB_LIST_NULL,
						  ROLE_INITIATOR)) {
					aic_set_transaction_status(scb, CAM_REQ_CMP);
				}
#endif
				FUNC8(&devinfo,
						    initiator_role_id,
						    target,
						    CAM_LUN_WILDCARD,
						    channel,
						    ROLE_INITIATOR);
				FUNC14(ahc, &devinfo,
						    CAM_BDR_SENT,
						    "Bus Device Reset",
						    /*verbose_level*/0);
				printerror = 0;
			} else if (FUNC26(ahc, AHCMSG_EXT,
						MSG_EXT_PPR, FALSE)) {
				struct ahc_initiator_tinfo *tinfo;
				struct ahc_tmode_tstate *tstate;

				/*
				 * PPR Rejected.  Try non-ppr negotiation
				 * and retry command.
				 */
				tinfo = FUNC11(ahc,
							    devinfo.channel,
							    devinfo.our_scsiid,
							    devinfo.target,
							    &tstate);
				tinfo->curr.transport_version = 2;
				tinfo->goal.transport_version = 2;
				tinfo->goal.ppr_options = 0;
				FUNC22(ahc, scb);
				printerror = 0;
			} else if (FUNC26(ahc, AHCMSG_EXT,
						MSG_EXT_WDTR, FALSE)) {
				/*
				 * Negotiation Rejected.  Go-narrow and
				 * retry command.
				 */
				FUNC28(ahc, &devinfo,
					      MSG_EXT_WDTR_BUS_8_BIT,
					      AHC_TRANS_CUR|AHC_TRANS_GOAL,
					      /*paused*/TRUE);
				FUNC22(ahc, scb);
				printerror = 0;
			} else if (FUNC26(ahc, AHCMSG_EXT,
						MSG_EXT_SDTR, FALSE)) {
				/*
				 * Negotiation Rejected.  Go-async and
				 * retry command.
				 */
				FUNC27(ahc, &devinfo,
						/*syncrate*/NULL,
						/*period*/0, /*offset*/0,
						/*ppr_options*/0,
						AHC_TRANS_CUR|AHC_TRANS_GOAL,
						/*paused*/TRUE);
				FUNC22(ahc, scb);
				printerror = 0;
			}
		}
		if (printerror != 0) {
			u_int i;

			if (scb != NULL) {
				u_int tag;

				if ((scb->hscb->control & TAG_ENB) != 0)
					tag = scb->hscb->tag;
				else
					tag = SCB_LIST_NULL;
				FUNC21(ahc, scb);
				FUNC5(ahc, target, channel,
					       FUNC0(scb), tag,
					       ROLE_INITIATOR,
					       CAM_UNEXP_BUSFREE);
			} else {
				/*
				 * We had not fully identified this connection,
				 * so we cannot abort anything.
				 */
				FUNC31("%s: ", FUNC19(ahc));
			}
			for (i = 0; i < num_phases; i++) {
				if (lastphase == ahc_phase_table[i].phase)
					break;
			}
			if (lastphase != P_BUSFREE) {
				/*
				 * Renegotiate with this device at the
				 * next opportunity just in case this busfree
				 * is due to a negotiation mismatch with the
				 * device.
				 */
				FUNC12(ahc, &devinfo);
			}
			FUNC31("Unexpected busfree %s\n"
			       "SEQADDR == 0x%x\n",
			       ahc_phase_table[i].phasemsg,
			       FUNC15(ahc, SEQADDR0)
				| (FUNC15(ahc, SEQADDR1) << 8));
		}
		FUNC20(ahc, CLRINT, CLRSCSIINT);
		FUNC24(ahc);
	} else {
		FUNC31("%s: Missing case in ahc_handle_scsiint. status = %x\n",
		       FUNC19(ahc), status);
		FUNC20(ahc, CLRINT, CLRSCSIINT);
	}
}