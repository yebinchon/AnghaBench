#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int flags; scalar_t__ func_code; int /*<<< orphan*/  status; } ;
union ccb {TYPE_5__ ccb_h; } ;
typedef  int u_int ;
struct target_data {int /*<<< orphan*/  data_phase; int /*<<< orphan*/  target_phases; } ;
struct scb {int flags; TYPE_4__* hscb; int /*<<< orphan*/  dmamap; void* sg_list; scalar_t__ sg_count; struct ahd_softc* ahd_softc; union ccb* io_ctx; } ;
struct ahd_tmode_tstate {int discenable; int auto_negotiate; } ;
struct TYPE_14__ {struct scb** scbindex; } ;
struct ahd_softc {TYPE_6__ scb_data; int /*<<< orphan*/  pending_scbs; int /*<<< orphan*/  buffer_dmat; } ;
struct TYPE_11__ {scalar_t__ width; scalar_t__ period; scalar_t__ ppr_options; } ;
struct TYPE_10__ {int ppr_options; } ;
struct ahd_initiator_tinfo {TYPE_3__ goal; TYPE_2__ curr; } ;
typedef  int /*<<< orphan*/  bus_dmasync_op_t ;
struct TYPE_15__ {int /*<<< orphan*/  ds_len; int /*<<< orphan*/  ds_addr; } ;
typedef  TYPE_7__ bus_dma_segment_t ;
struct TYPE_9__ {struct target_data tdata; } ;
struct TYPE_12__ {scalar_t__ task_management; int /*<<< orphan*/  control; int /*<<< orphan*/  scsiid; TYPE_1__ shared_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int CAM_DIR_IN ; 
 int CAM_DIR_MASK ; 
 int CAM_DIR_OUT ; 
 int CAM_DIS_DISCONNECT ; 
 int CAM_NEGOTIATE ; 
 int /*<<< orphan*/  CAM_REQ_CMP_ERR ; 
 scalar_t__ CAM_REQ_INPROG ; 
 int /*<<< orphan*/  CAM_REQ_TOO_BIG ; 
 int /*<<< orphan*/  CAM_SIM_QUEUED ; 
 int /*<<< orphan*/  CONT_MSG_LOOP_TARG ; 
 int /*<<< orphan*/  DISCENB ; 
 int /*<<< orphan*/  DPHASE_PENDING ; 
 int EFBIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct scb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MK_MESSAGE ; 
 int MSG_EXT_PPR_IU_REQ ; 
 int /*<<< orphan*/  P_DATAIN ; 
 int /*<<< orphan*/  P_DATAOUT ; 
 int /*<<< orphan*/  RETURN_1 ; 
 int SCB_AUTO_NEGOTIATE ; 
 size_t FUNC1 (struct scb*) ; 
 int FUNC2 (struct ahd_softc*,struct scb*) ; 
 int SCB_NEGOTIATE ; 
 int SCB_PACKETIZED ; 
 int SCB_TARGET_IMMEDIATE ; 
 int /*<<< orphan*/  FUNC3 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ XPT_CONT_TARGET_IO ; 
 struct ahd_initiator_tinfo* FUNC6 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ahd_tmode_tstate**) ; 
 int /*<<< orphan*/  FUNC7 (struct ahd_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC8 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct ahd_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC11 (struct ahd_softc*,size_t) ; 
 void* FUNC12 (struct ahd_softc*,struct scb*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ahd_softc*) ; 
 scalar_t__ FUNC14 (struct scb*) ; 
 int /*<<< orphan*/  FUNC15 (struct scb*) ; 
 int /*<<< orphan*/  FUNC16 (struct scb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pending_links ; 
 int /*<<< orphan*/  FUNC19 (union ccb*) ; 

__attribute__((used)) static void
FUNC20(void *arg, bus_dma_segment_t *dm_segs, int nsegments,
		int error)
{
	struct	scb *scb;
	union	ccb *ccb;
	struct	ahd_softc *ahd;
	struct	ahd_initiator_tinfo *tinfo;
	struct	ahd_tmode_tstate *tstate;
	u_int	mask;

	scb = (struct scb *)arg;
	ccb = scb->io_ctx;
	ahd = scb->ahd_softc;

	if (error != 0) {
		if (error == EFBIG)
			FUNC16(scb, CAM_REQ_TOO_BIG);
		else
			FUNC16(scb, CAM_REQ_CMP_ERR);
		if (nsegments != 0)
			FUNC18(ahd->buffer_dmat, scb->dmamap);
		FUNC7(ahd, scb);
		FUNC19(ccb);
		return;
	}
	scb->sg_count = 0;
	if (nsegments != 0) {
		void *sg;
		bus_dmasync_op_t op;
		u_int i;

		/* Copy the segments into our SG list */
		for (i = nsegments, sg = scb->sg_list; i > 0; i--) {

			sg = FUNC12(ahd, scb, sg, dm_segs->ds_addr,
					  dm_segs->ds_len,
					  /*last*/i == 1);
			dm_segs++;
		}
		
		if ((ccb->ccb_h.flags & CAM_DIR_MASK) == CAM_DIR_IN)
			op = BUS_DMASYNC_PREREAD;
		else
			op = BUS_DMASYNC_PREWRITE;

		FUNC17(ahd->buffer_dmat, scb->dmamap, op);

		if (ccb->ccb_h.func_code == XPT_CONT_TARGET_IO) {
			struct target_data *tdata;

			tdata = &scb->hscb->shared_data.tdata;
			tdata->target_phases |= DPHASE_PENDING;
			if ((ccb->ccb_h.flags & CAM_DIR_MASK) == CAM_DIR_OUT)
				tdata->data_phase = P_DATAOUT;
			else
				tdata->data_phase = P_DATAIN;
		}
	}

	/*
	 * Last time we need to check if this SCB needs to
	 * be aborted.
	 */
	if (FUNC14(scb) != CAM_REQ_INPROG) {
		if (nsegments != 0)
			FUNC18(ahd->buffer_dmat,
					  scb->dmamap);
		FUNC7(ahd, scb);
		FUNC19(ccb);
		return;
	}

	tinfo = FUNC6(ahd, FUNC3(ahd, scb->hscb->scsiid),
				    FUNC4(scb->hscb->scsiid),
				    FUNC5(ahd, scb->hscb->scsiid),
				    &tstate);

	mask = FUNC2(ahd, scb);

	if ((tstate->discenable & mask) != 0
	 && (ccb->ccb_h.flags & CAM_DIS_DISCONNECT) == 0)
		scb->hscb->control |= DISCENB;

	if ((tinfo->curr.ppr_options & MSG_EXT_PPR_IU_REQ) != 0) {
		scb->flags |= SCB_PACKETIZED;
		if (scb->hscb->task_management != 0)
			scb->hscb->control &= ~MK_MESSAGE;
	}

	if ((ccb->ccb_h.flags & CAM_NEGOTIATE) != 0
	 && (tinfo->goal.width != 0
	  || tinfo->goal.period != 0
	  || tinfo->goal.ppr_options != 0)) {
		scb->flags |= SCB_NEGOTIATE;
		scb->hscb->control |= MK_MESSAGE;
	} else if ((tstate->auto_negotiate & mask) != 0) {
		scb->flags |= SCB_AUTO_NEGOTIATE;
		scb->hscb->control |= MK_MESSAGE;
	}

	FUNC0(&ahd->pending_scbs, scb, pending_links);

	ccb->ccb_h.status |= CAM_SIM_QUEUED;

	FUNC15(scb);

	if ((scb->flags & SCB_TARGET_IMMEDIATE) != 0) {
		/* Define a mapping from our tag to the SCB. */
		ahd->scb_data.scbindex[FUNC1(scb)] = scb;
		FUNC9(ahd);
		FUNC11(ahd, FUNC1(scb));
		FUNC8(ahd, RETURN_1, CONT_MSG_LOOP_TARG);
		FUNC13(ahd);
	} else {
		FUNC10(ahd, scb);
	}

}