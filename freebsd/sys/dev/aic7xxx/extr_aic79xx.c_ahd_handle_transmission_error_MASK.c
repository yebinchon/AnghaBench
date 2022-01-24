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
struct scb {int /*<<< orphan*/  flags; } ;
struct ahd_softc {int bugs; int send_msg_perror; } ;
struct TYPE_2__ {char* phasemsg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*) ; 
 int /*<<< orphan*/  AHD_MODE_CFG ; 
 int /*<<< orphan*/  AHD_MODE_SCSI ; 
 int AHD_NLQICRC_DELAYED_BUG ; 
 int AHD_SHOW_RECOVERY ; 
 int /*<<< orphan*/  FUNC1 (struct ahd_softc*) ; 
 int /*<<< orphan*/  CLRINT ; 
 int /*<<< orphan*/  CLRLQIINT1 ; 
 int CLRSCSIINT ; 
 int CLRSCSIPERR ; 
 int /*<<< orphan*/  CLRSINT1 ; 
 int FALSE ; 
 int HOST_MSG ; 
 int /*<<< orphan*/  LASTPHASE ; 
 int /*<<< orphan*/  LQCTL2 ; 
 int LQIBADLQI ; 
 int LQICRCI_LQ ; 
 int LQICRCI_NLQ ; 
 int LQIOVERI_LQ ; 
 int LQIOVERI_NLQ ; 
 int LQIPHASE_LQ ; 
 int LQIPHASE_NLQ ; 
 int LQIRETRY ; 
 int /*<<< orphan*/  LQISTAT1 ; 
 int /*<<< orphan*/  LQISTAT2 ; 
 int /*<<< orphan*/  LQISTATE ; 
 int MSG_INITIATOR_DET_ERR ; 
 int /*<<< orphan*/  MSG_OUT ; 
 int MSG_PARITY_ERROR ; 
 int PARITYERR ; 
 int /*<<< orphan*/  PERRDIAG ; 
 int PHASE_MASK ; 
 int PREVPHASE ; 
 int P_DATAIN_DT ; 
 int P_MESGIN ; 
 scalar_t__ FUNC2 (struct scb*) ; 
 int /*<<< orphan*/  SCB_TRANSMISSION_ERROR ; 
 int /*<<< orphan*/  SCSIDAT ; 
 int /*<<< orphan*/  SCSISIGI ; 
 int TRUE ; 
 int ahd_debug ; 
 int /*<<< orphan*/  FUNC3 (struct ahd_softc*) ; 
 int FUNC4 (struct ahd_softc*) ; 
 int FUNC5 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int*,int) ; 
 TYPE_1__* FUNC7 (int) ; 
 struct scb* FUNC8 (struct ahd_softc*,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int*,int) ; 
 char* FUNC10 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct ahd_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ahd_softc*,char,int) ; 
 int /*<<< orphan*/  FUNC14 (int,int*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC16 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC18 (char*,...) ; 

__attribute__((used)) static void
FUNC19(struct ahd_softc *ahd)
{
	struct	scb *scb;
	u_int	scbid;
	u_int	lqistat1;
	u_int	msg_out;
	u_int	curphase;
	u_int	lastphase;
	u_int	perrdiag;
	u_int	cur_col;
	int	silent;

	scb = NULL;
	FUNC16(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
	lqistat1 = FUNC5(ahd, LQISTAT1) & ~(LQIPHASE_LQ|LQIPHASE_NLQ);
	FUNC5(ahd, LQISTAT2);
	if ((lqistat1 & (LQICRCI_NLQ|LQICRCI_LQ)) == 0
	 && (ahd->bugs & AHD_NLQICRC_DELAYED_BUG) != 0) {
		u_int lqistate;

		FUNC16(ahd, AHD_MODE_CFG, AHD_MODE_CFG);
		lqistate = FUNC5(ahd, LQISTATE);
		if ((lqistate >= 0x1E && lqistate <= 0x24)
		 || (lqistate == 0x29)) {
#ifdef AHD_DEBUG
			if ((ahd_debug & AHD_SHOW_RECOVERY) != 0) {
				printf("%s: NLQCRC found via LQISTATE\n",
				       ahd_name(ahd));
			}
#endif
			lqistat1 |= LQICRCI_NLQ;
		}
		FUNC16(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
	}

	FUNC11(ahd, CLRLQIINT1, lqistat1);
	lastphase = FUNC5(ahd, LASTPHASE);
	curphase = FUNC5(ahd, SCSISIGI) & PHASE_MASK;
	perrdiag = FUNC5(ahd, PERRDIAG);
	msg_out = MSG_INITIATOR_DET_ERR;
	FUNC11(ahd, CLRSINT1, CLRSCSIPERR);
	
	/*
	 * Try to find the SCB associated with this error.
	 */
	silent = FALSE;
	if (lqistat1 == 0
	 || (lqistat1 & LQICRCI_NLQ) != 0) {
	 	if ((lqistat1 & (LQICRCI_NLQ|LQIOVERI_NLQ)) != 0)
			FUNC15(ahd);
		scbid = FUNC4(ahd);
		scb = FUNC8(ahd, scbid);
		if (scb != NULL && FUNC2(scb))
			silent = TRUE;
	}

	cur_col = 0;
	if (silent == FALSE) {
		FUNC18("%s: Transmission error detected\n", FUNC10(ahd));
		FUNC9(lqistat1, &cur_col, 50);
		FUNC6(lastphase, &cur_col, 50);
		FUNC14(curphase, &cur_col, 50);
		FUNC12(perrdiag, &cur_col, 50);
		FUNC18("\n");
		FUNC0(ahd);
		FUNC3(ahd);
	}

	if ((lqistat1 & (LQIOVERI_LQ|LQIOVERI_NLQ)) != 0) {
		if (silent == FALSE) {
			FUNC18("%s: Gross protocol error during incoming "
			       "packet.  lqistat1 == 0x%x.  Resetting bus.\n",
			       FUNC10(ahd), lqistat1);
			FUNC1(ahd);
		}
		FUNC13(ahd, 'A', /*Initiate Reset*/TRUE);
		return;
	} else if ((lqistat1 & LQICRCI_LQ) != 0) {
		/*
		 * A CRC error has been detected on an incoming LQ.
		 * The bus is currently hung on the last ACK.
		 * Hit LQIRETRY to release the last ack, and
		 * wait for the sequencer to determine that ATNO
		 * is asserted while in message out to take us
		 * to our host message loop.  No NONPACKREQ or
		 * LQIPHASE type errors will occur in this
		 * scenario.  After this first LQIRETRY, the LQI
		 * manager will be in ISELO where it will
		 * happily sit until another packet phase begins.
		 * Unexpected bus free detection is enabled
		 * through any phases that occur after we release
		 * this last ack until the LQI manager sees a
		 * packet phase.  This implies we may have to
		 * ignore a perfectly valid "unexected busfree"
		 * after our "initiator detected error" message is
		 * sent.  A busfree is the expected response after
		 * we tell the target that it's L_Q was corrupted.
		 * (SPI4R09 10.7.3.3.3)
		 */
		FUNC11(ahd, LQCTL2, LQIRETRY);
		FUNC18("LQIRetry for LQICRCI_LQ to release ACK\n");
		FUNC0(ahd);
	} else if ((lqistat1 & LQICRCI_NLQ) != 0) {
		/*
		 * We detected a CRC error in a NON-LQ packet.
		 * The hardware has varying behavior in this situation
		 * depending on whether this packet was part of a
		 * stream or not.
		 *
		 * PKT by PKT mode:
		 * The hardware has already acked the complete packet.
		 * If the target honors our outstanding ATN condition,
		 * we should be (or soon will be) in MSGOUT phase.
		 * This will trigger the LQIPHASE_LQ status bit as the
		 * hardware was expecting another LQ.  Unexpected
		 * busfree detection is enabled.  Once LQIPHASE_LQ is
		 * true (first entry into host message loop is much
		 * the same), we must clear LQIPHASE_LQ and hit
		 * LQIRETRY so the hardware is ready to handle
		 * a future LQ.  NONPACKREQ will not be asserted again
		 * once we hit LQIRETRY until another packet is
		 * processed.  The target may either go busfree
		 * or start another packet in response to our message.
		 *
		 * Read Streaming P0 asserted:
		 * If we raise ATN and the target completes the entire
		 * stream (P0 asserted during the last packet), the
		 * hardware will ack all data and return to the ISTART
		 * state.  When the target reponds to our ATN condition,
		 * LQIPHASE_LQ will be asserted.  We should respond to
		 * this with an LQIRETRY to prepare for any future
		 * packets.  NONPACKREQ will not be asserted again
		 * once we hit LQIRETRY until another packet is
		 * processed.  The target may either go busfree or
		 * start another packet in response to our message.
		 * Busfree detection is enabled.
		 *
		 * Read Streaming P0 not asserted:
		 * If we raise ATN and the target transitions to
		 * MSGOUT in or after a packet where P0 is not
		 * asserted, the hardware will assert LQIPHASE_NLQ.
		 * We should respond to the LQIPHASE_NLQ with an
		 * LQIRETRY.  Should the target stay in a non-pkt
		 * phase after we send our message, the hardware
		 * will assert LQIPHASE_LQ.  Recovery is then just as
		 * listed above for the read streaming with P0 asserted.
		 * Busfree detection is enabled.
		 */
		if (silent == FALSE)
			FUNC18("LQICRC_NLQ\n");
		if (scb == NULL) {
			FUNC18("%s: No SCB valid for LQICRC_NLQ.  "
			       "Resetting bus\n", FUNC10(ahd));
			FUNC1(ahd);
			FUNC13(ahd, 'A', /*Initiate Reset*/TRUE);
			return;
		}
	} else if ((lqistat1 & LQIBADLQI) != 0) {
		FUNC18("Need to handle BADLQI!\n");
		FUNC13(ahd, 'A', /*Initiate Reset*/TRUE);
		return;
	} else if ((perrdiag & (PARITYERR|PREVPHASE)) == PARITYERR) {
		if ((curphase & ~P_DATAIN_DT) != 0) {
			/* Ack the byte.  So we can continue. */
			if (silent == FALSE)
				FUNC18("Acking %s to clear perror\n",
				    FUNC7(curphase)->phasemsg);
			FUNC5(ahd, SCSIDAT);
		}
	
		if (curphase == P_MESGIN)
			msg_out = MSG_PARITY_ERROR;
	}

	/*
	 * We've set the hardware to assert ATN if we 
	 * get a parity error on "in" phases, so all we
	 * need to do is stuff the message buffer with
	 * the appropriate message.  "In" phases have set
	 * mesg_out to something other than MSG_NOP.
	 */
	ahd->send_msg_perror = msg_out;
	if (scb != NULL && msg_out == MSG_INITIATOR_DET_ERR)
		scb->flags |= SCB_TRANSMISSION_ERROR;
	FUNC11(ahd, MSG_OUT, HOST_MSG);
	FUNC11(ahd, CLRINT, CLRSCSIINT);
	FUNC17(ahd);
}