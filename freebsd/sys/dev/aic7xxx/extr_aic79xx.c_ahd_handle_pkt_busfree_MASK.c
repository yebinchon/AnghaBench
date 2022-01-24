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
typedef  scalar_t__ u_int ;
struct scb {scalar_t__ crc_retry_count; } ;
struct ahd_softc {int bugs; scalar_t__ src_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*,int,int) ; 
 int AHD_CLRLQO_AUTOCLR_BUG ; 
 int /*<<< orphan*/  FUNC1 (struct ahd_softc*) ; 
 scalar_t__ AHD_MAX_LQ_CRC_ERRORS ; 
 int AHD_MODE_CFG_MSK ; 
 scalar_t__ AHD_MODE_SCSI ; 
 int AHD_MODE_UNKNOWN_MSK ; 
 int AHD_SHOW_MASKED_ERRORS ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*) ; 
 int /*<<< orphan*/  CAM_UNCOR_PARITY ; 
 int /*<<< orphan*/  CAM_UNEXP_BUSFREE ; 
 scalar_t__ CLRBUSFREE ; 
 scalar_t__ CLRLQOBUSFREE ; 
 int /*<<< orphan*/  CLRLQOINT1 ; 
 scalar_t__ CLRSCSIPERR ; 
 scalar_t__ CLRSELDO ; 
 int /*<<< orphan*/  CLRSINT0 ; 
 int /*<<< orphan*/  CLRSINT1 ; 
 int /*<<< orphan*/  CURRSCB ; 
 scalar_t__ ENSELO ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  LQCTL2 ; 
 scalar_t__ LQOBUSFREE ; 
 int /*<<< orphan*/  LQOSTAT1 ; 
 scalar_t__ LQOTOIDLE ; 
 scalar_t__ PARITYERR ; 
 int /*<<< orphan*/  PERRDIAG ; 
 int /*<<< orphan*/  ROLE_INITIATOR ; 
 int /*<<< orphan*/  FUNC3 (struct scb*) ; 
 int /*<<< orphan*/  FUNC4 (struct scb*) ; 
 int /*<<< orphan*/  FUNC5 (struct ahd_softc*,struct scb*) ; 
 scalar_t__ FUNC6 (struct scb*) ; 
 scalar_t__ SCB_LIST_NULL ; 
 int /*<<< orphan*/  SCB_NEXT2 ; 
 int /*<<< orphan*/  SCSISEQ0 ; 
 int /*<<< orphan*/  WAITING_TID_HEAD ; 
 int /*<<< orphan*/  WAITING_TID_TAIL ; 
 int /*<<< orphan*/  FUNC7 (struct ahd_softc*,int /*<<< orphan*/ ,char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ahd_debug ; 
 int /*<<< orphan*/  FUNC8 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct ahd_softc*,struct scb*) ; 
 scalar_t__ FUNC11 (struct ahd_softc*) ; 
 scalar_t__ FUNC12 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 struct scb* FUNC15 (struct ahd_softc*,scalar_t__) ; 
 char* FUNC16 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC17 (struct ahd_softc*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct ahd_softc*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (struct ahd_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC20 (struct ahd_softc*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (struct ahd_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (struct scb*) ; 
 int /*<<< orphan*/  FUNC23 (struct scb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (char*,...) ; 

__attribute__((used)) static int
FUNC26(struct ahd_softc *ahd, u_int busfreetime)
{
	u_int lqostat1;

	FUNC0(ahd, ~(AHD_MODE_UNKNOWN_MSK|AHD_MODE_CFG_MSK),
			 ~(AHD_MODE_UNKNOWN_MSK|AHD_MODE_CFG_MSK));
	lqostat1 = FUNC12(ahd, LQOSTAT1);
	if ((lqostat1 & LQOBUSFREE) != 0) {
		struct scb *scb;
		u_int scbid;
		u_int saved_scbptr;
		u_int waiting_h;
		u_int waiting_t;
		u_int next;

		/*
		 * The LQO manager detected an unexpected busfree
		 * either:
		 *
		 * 1) During an outgoing LQ.
		 * 2) After an outgoing LQ but before the first
		 *    REQ of the command packet.
		 * 3) During an outgoing command packet.
		 *
		 * In all cases, CURRSCB is pointing to the
		 * SCB that encountered the failure.  Clean
		 * up the queue, clear SELDO and LQOBUSFREE,
		 * and allow the sequencer to restart the select
		 * out at its lesure.
		 */
		FUNC20(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
		scbid = FUNC13(ahd, CURRSCB);
		scb = FUNC15(ahd, scbid);
		if (scb == NULL)
		       FUNC24("SCB not valid during LQOBUSFREE");
		/*
		 * Clear the status.
		 */
		FUNC17(ahd, CLRLQOINT1, CLRLQOBUSFREE);
		if ((ahd->bugs & AHD_CLRLQO_AUTOCLR_BUG) != 0)
			FUNC17(ahd, CLRLQOINT1, 0);
		FUNC17(ahd, SCSISEQ0, FUNC12(ahd, SCSISEQ0) & ~ENSELO);
		FUNC9(ahd);
		FUNC17(ahd, CLRSINT0, CLRSELDO);

		/*
		 * Return the LQO manager to its idle loop.  It will
		 * not do this automatically if the busfree occurs
		 * after the first REQ of either the LQ or command
		 * packet or between the LQ and command packet.
		 */
		FUNC17(ahd, LQCTL2, FUNC12(ahd, LQCTL2) | LQOTOIDLE);

		/*
		 * Update the waiting for selection queue so
		 * we restart on the correct SCB.
		 */
		waiting_h = FUNC13(ahd, WAITING_TID_HEAD);
		saved_scbptr = FUNC11(ahd);
		if (waiting_h != scbid) {

			FUNC18(ahd, WAITING_TID_HEAD, scbid);
			waiting_t = FUNC13(ahd, WAITING_TID_TAIL);
			if (waiting_t == waiting_h) {
				FUNC18(ahd, WAITING_TID_TAIL, scbid);
				next = SCB_LIST_NULL;
			} else {
				FUNC21(ahd, waiting_h);
				next = FUNC14(ahd, SCB_NEXT2);
			}
			FUNC21(ahd, scbid);
			FUNC18(ahd, SCB_NEXT2, next);
		}
		FUNC21(ahd, saved_scbptr);
		if (scb->crc_retry_count < AHD_MAX_LQ_CRC_ERRORS) {
			if (FUNC6(scb) == FALSE) {
				FUNC19(ahd, scb);
				FUNC25("Probable outgoing LQ CRC error.  "
				       "Retrying command\n");
				FUNC1(ahd);
			}
			scb->crc_retry_count++;
		} else {
			FUNC23(scb, CAM_UNCOR_PARITY);
			FUNC22(scb);
			FUNC10(ahd, scb);
		}
		/* Return unpausing the sequencer. */
		return (0);
	} else if ((FUNC12(ahd, PERRDIAG) & PARITYERR) != 0) {
		/*
		 * Ignore what are really parity errors that
		 * occur on the last REQ of a free running
		 * clock prior to going busfree.  Some drives
		 * do not properly active negate just before
		 * going busfree resulting in a parity glitch.
		 */
		FUNC17(ahd, CLRSINT1, CLRSCSIPERR|CLRBUSFREE);
#ifdef AHD_DEBUG
		if ((ahd_debug & AHD_SHOW_MASKED_ERRORS) != 0)
			printf("%s: Parity on last REQ detected "
			       "during busfree phase.\n",
			       ahd_name(ahd));
#endif
		/* Return unpausing the sequencer. */
		return (0);
	}
	if (ahd->src_mode != AHD_MODE_SCSI) {
		u_int	scbid;
		struct	scb *scb;

		scbid = FUNC11(ahd);
		scb = FUNC15(ahd, scbid);
		FUNC19(ahd, scb);
		FUNC25("Unexpected PKT busfree condition\n");
		FUNC2(ahd);
		FUNC8(ahd);
		FUNC7(ahd, FUNC5(ahd, scb), 'A',
			       FUNC3(scb), FUNC4(scb),
			       ROLE_INITIATOR, CAM_UNEXP_BUSFREE);

		/* Return restarting the sequencer. */
		return (1);
	}
	FUNC25("%s: Unexpected PKT busfree condition\n", FUNC16(ahd));
	FUNC2(ahd);
	FUNC8(ahd);
	/* Restart the sequencer. */
	return (1);
}