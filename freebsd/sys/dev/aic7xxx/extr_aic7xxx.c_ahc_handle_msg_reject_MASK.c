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
typedef  int u_int ;
struct scb_tailq {int dummy; } ;
struct scb {TYPE_3__* hscb; int /*<<< orphan*/  flags; } ;
struct ahc_tmode_tstate {int dummy; } ;
struct ahc_softc {int flags; struct scb_tailq* untagged_queues; scalar_t__ msgout_index; scalar_t__ msgout_len; } ;
struct TYPE_6__ {int transport_version; scalar_t__ offset; } ;
struct TYPE_5__ {int transport_version; scalar_t__ offset; scalar_t__ ppr_options; } ;
struct ahc_initiator_tinfo {TYPE_2__ curr; TYPE_1__ goal; } ;
struct ahc_devinfo {int channel; int target; int lun; size_t target_offset; int /*<<< orphan*/  our_scsiid; } ;
struct TYPE_8__ {int /*<<< orphan*/  tqe; } ;
struct TYPE_7__ {int control; int /*<<< orphan*/  tag; int /*<<< orphan*/  scsiid; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHCMSG_EXT ; 
 int /*<<< orphan*/  AHC_QUEUE_BASIC ; 
 int /*<<< orphan*/  AHC_QUEUE_NONE ; 
 int AHC_SCB_BTT ; 
 int AHC_TRANS_ACTIVE ; 
 int AHC_TRANS_GOAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  CAM_REQUEUE_REQ ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LAST_MSG ; 
 int /*<<< orphan*/  MSG_EXT_PPR ; 
 int /*<<< orphan*/  MSG_EXT_SDTR ; 
 int /*<<< orphan*/  MSG_EXT_WDTR ; 
 int /*<<< orphan*/  MSG_EXT_WDTR_BUS_8_BIT ; 
 int MSG_IDENTIFYFLAG ; 
 int MSG_ORDERED_TASK ; 
 int /*<<< orphan*/  MSG_OUT ; 
 int MSG_SIMPLE_TASK ; 
 int /*<<< orphan*/  ROLE_INITIATOR ; 
 int /*<<< orphan*/  SCB_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (struct ahc_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC2 (struct scb*) ; 
 int /*<<< orphan*/  FUNC3 (struct ahc_softc*,struct scb*) ; 
 int /*<<< orphan*/  SCB_LIST_NULL ; 
 int /*<<< orphan*/  SCB_TAG ; 
 int /*<<< orphan*/  SCB_UNTAGGEDQ ; 
 int /*<<< orphan*/  SEARCH_COMPLETE ; 
 int /*<<< orphan*/  FUNC4 (struct scb_tailq*,struct scb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ahc_softc*,struct ahc_devinfo*) ; 
 int /*<<< orphan*/  FUNC7 (struct ahc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ahc_initiator_tinfo* FUNC8 (struct ahc_softc*,int,int /*<<< orphan*/ ,int,struct ahc_tmode_tstate**) ; 
 int FUNC9 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 struct scb* FUNC10 (struct ahc_softc*,int) ; 
 char* FUNC11 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct ahc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ahc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct ahc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct ahc_softc*,struct ahc_devinfo*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ahc_softc*,struct ahc_devinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct ahc_softc*,struct ahc_devinfo*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct scb*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ bootverbose ; 
 TYPE_4__ links ; 
 int /*<<< orphan*/  FUNC19 (char*,char*,int,int,int,...) ; 

__attribute__((used)) static int
FUNC20(struct ahc_softc *ahc, struct ahc_devinfo *devinfo)
{
	/*
	 * What we care about here is if we had an
	 * outstanding SDTR or WDTR message for this
	 * target.  If we did, this is a signal that
	 * the target is refusing negotiation.
	 */
	struct scb *scb;
	struct ahc_initiator_tinfo *tinfo;
	struct ahc_tmode_tstate *tstate;
	u_int scb_index;
	u_int last_msg;
	int   response = 0;

	scb_index = FUNC9(ahc, SCB_TAG);
	scb = FUNC10(ahc, scb_index);
	tinfo = FUNC8(ahc, devinfo->channel,
				    devinfo->our_scsiid,
				    devinfo->target, &tstate);
	/* Might be necessary */
	last_msg = FUNC9(ahc, LAST_MSG);

	if (FUNC14(ahc, AHCMSG_EXT, MSG_EXT_PPR, /*full*/FALSE)) {
		/*
		 * Target does not support the PPR message.
		 * Attempt to negotiate SPI-2 style.
		 */
		if (bootverbose) {
			FUNC19("(%s:%c:%d:%d): PPR Rejected. "
			       "Trying WDTR/SDTR\n",
			       FUNC11(ahc), devinfo->channel,
			       devinfo->target, devinfo->lun);
		}
		tinfo->goal.ppr_options = 0;
		tinfo->curr.transport_version = 2;
		tinfo->goal.transport_version = 2;
		ahc->msgout_index = 0;
		ahc->msgout_len = 0;
		FUNC6(ahc, devinfo);
		ahc->msgout_index = 0;
		response = 1;
	} else if (FUNC14(ahc, AHCMSG_EXT, MSG_EXT_WDTR, /*full*/FALSE)) {

		/* note 8bit xfers */
		FUNC19("(%s:%c:%d:%d): refuses WIDE negotiation.  Using "
		       "8bit transfers\n", FUNC11(ahc),
		       devinfo->channel, devinfo->target, devinfo->lun);
		FUNC17(ahc, devinfo, MSG_EXT_WDTR_BUS_8_BIT,
			      AHC_TRANS_ACTIVE|AHC_TRANS_GOAL,
			      /*paused*/TRUE);
		/*
		 * No need to clear the sync rate.  If the target
		 * did not accept the command, our syncrate is
		 * unaffected.  If the target started the negotiation,
		 * but rejected our response, we already cleared the
		 * sync rate before sending our WDTR.
		 */
		if (tinfo->goal.offset != tinfo->curr.offset) {

			/* Start the sync negotiation */
			ahc->msgout_index = 0;
			ahc->msgout_len = 0;
			FUNC6(ahc, devinfo);
			ahc->msgout_index = 0;
			response = 1;
		}
	} else if (FUNC14(ahc, AHCMSG_EXT, MSG_EXT_SDTR, /*full*/FALSE)) {
		/* note asynch xfers and clear flag */
		FUNC15(ahc, devinfo, /*syncrate*/NULL, /*period*/0,
				 /*offset*/0, /*ppr_options*/0,
				 AHC_TRANS_ACTIVE|AHC_TRANS_GOAL,
				 /*paused*/TRUE);
		FUNC19("(%s:%c:%d:%d): refuses synchronous negotiation. "
		       "Using asynchronous transfers\n",
		       FUNC11(ahc), devinfo->channel,
		       devinfo->target, devinfo->lun);
	} else if ((scb->hscb->control & MSG_SIMPLE_TASK) != 0) {
		int tag_type;
		int mask;

		tag_type = (scb->hscb->control & MSG_SIMPLE_TASK);

		if (tag_type == MSG_SIMPLE_TASK) {
			FUNC19("(%s:%c:%d:%d): refuses tagged commands.  "
			       "Performing non-tagged I/O\n", FUNC11(ahc),
			       devinfo->channel, devinfo->target, devinfo->lun);
			FUNC16(ahc, devinfo, AHC_QUEUE_NONE);
			mask = ~0x23;
		} else {
			FUNC19("(%s:%c:%d:%d): refuses %s tagged commands.  "
			       "Performing simple queue tagged I/O only\n",
			       FUNC11(ahc), devinfo->channel, devinfo->target,
			       devinfo->lun, tag_type == MSG_ORDERED_TASK
			       ? "ordered" : "head of queue");
			FUNC16(ahc, devinfo, AHC_QUEUE_BASIC);
			mask = ~0x03;
		}

		/*
		 * Resend the identify for this CCB as the target
		 * may believe that the selection is invalid otherwise.
		 */
		FUNC12(ahc, SCB_CONTROL,
			 FUNC9(ahc, SCB_CONTROL) & mask);
	 	scb->hscb->control &= mask;
		FUNC18(scb, /*enabled*/FALSE,
					/*type*/MSG_SIMPLE_TASK);
		FUNC12(ahc, MSG_OUT, MSG_IDENTIFYFLAG);
		FUNC5(ahc);

		/*
		 * This transaction is now at the head of
		 * the untagged queue for this target.
		 */
		if ((ahc->flags & AHC_SCB_BTT) == 0) {
			struct scb_tailq *untagged_q;

			untagged_q =
			    &(ahc->untagged_queues[devinfo->target_offset]);
			FUNC4(untagged_q, scb, links.tqe);
			scb->flags |= SCB_UNTAGGEDQ;
		}
		FUNC7(ahc, FUNC0(scb->hscb->scsiid, devinfo->lun),
			     scb->hscb->tag);

		/*
		 * Requeue all tagged commands for this target
		 * currently in our possession so they can be
		 * converted to untagged commands.
		 */
		FUNC13(ahc, FUNC3(ahc, scb),
				   FUNC1(ahc, scb),
				   FUNC2(scb), /*tag*/SCB_LIST_NULL,
				   ROLE_INITIATOR, CAM_REQUEUE_REQ,
				   SEARCH_COMPLETE);
	} else {
		/*
		 * Otherwise, we ignore it.
		 */
		FUNC19("%s:%c:%d: Message reject for %x -- ignored\n",
		       FUNC11(ahc), devinfo->channel, devinfo->target,
		       last_msg);
	}
	return (response);
}