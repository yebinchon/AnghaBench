#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int status; int flags; TYPE_3__* ccb_req_ptr; } ;
struct TYPE_16__ {int /*<<< orphan*/  target_lun; int /*<<< orphan*/  flags; } ;
struct ccb_scsiio {scalar_t__ dxfer_len; scalar_t__ resid; scalar_t__ scsi_status; int /*<<< orphan*/  sense_len; int /*<<< orphan*/  sense_data; int /*<<< orphan*/  tag_id; TYPE_1__ ccb_h; } ;
union ccb {TYPE_2__ ccb_h; struct ccb_scsiio csio; } ;
struct mpt_softc {int outofbeer; int scsi_tgt_handler_id; int /*<<< orphan*/  sim; int /*<<< orphan*/  buffer_dmat; scalar_t__ is_spi; scalar_t__ is_sas; } ;
struct TYPE_18__ {int index; int /*<<< orphan*/  dmap; int /*<<< orphan*/  serno; TYPE_5__* req_vbuf; union ccb* ccb; } ;
typedef  TYPE_3__ request_t ;
struct TYPE_19__ {int state; int reply_desc; scalar_t__ resid; int /*<<< orphan*/  bytes_xfered; TYPE_3__* req; union ccb* ccb; } ;
typedef  TYPE_4__ mpt_tgt_state_t ;
typedef  int /*<<< orphan*/  bus_dmamap_callback_t ;
typedef  int /*<<< orphan*/  bus_addr_t ;
struct TYPE_20__ {scalar_t__ DataLength; int /*<<< orphan*/  TargetAssistFlags; int /*<<< orphan*/  RelativeOffset; int /*<<< orphan*/  LUN; void* ReplyWord; void* MsgContext; int /*<<< orphan*/  Function; int /*<<< orphan*/  Tag; int /*<<< orphan*/  QueueTag; int /*<<< orphan*/  InitiatorTag; } ;
typedef  TYPE_5__* PTR_MSG_TARGET_ASSIST_REQUEST ;
typedef  TYPE_5__* PTR_MPI_TARGET_SSP_CMD_BUFFER ;
typedef  TYPE_5__* PTR_MPI_TARGET_SCSI_SPI_CMD_BUFFER ;

/* Variables and functions */
 int CAM_DIR_IN ; 
 int CAM_DIR_MASK ; 
 int CAM_DIR_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CAM_RELEASE_SIMQ ; 
 int /*<<< orphan*/  CAM_REQUEUE_REQ ; 
 int /*<<< orphan*/  CAM_REQ_CMP ; 
 int /*<<< orphan*/  CAM_REQ_CMP_ERR ; 
 int CAM_REQ_INPROG ; 
 int CAM_SEND_SENSE ; 
 int CAM_SEND_STATUS ; 
 int CAM_SIM_QUEUED ; 
 int EINPROGRESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  MPI_FUNCTION_TARGET_ASSIST ; 
 int /*<<< orphan*/  MPT_PRT_DEBUG ; 
 int /*<<< orphan*/  FUNC2 (struct mpt_softc*) ; 
 TYPE_3__* FUNC3 (struct mpt_softc*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC4 (struct mpt_softc*,TYPE_3__*) ; 
 scalar_t__ SCSI_STATUS_OK ; 
 int /*<<< orphan*/  TARGET_ASSIST_FLAGS_AUTO_STATUS ; 
 int /*<<< orphan*/  TARGET_ASSIST_FLAGS_DATA_DIRECTION ; 
#define  TGT_STATE_IN_CAM 129 
#define  TGT_STATE_MOVING_DATA 128 
 int TGT_STATE_SETTING_UP_FOR_DATA ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union ccb*,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * mpt_execute_req ; 
 int /*<<< orphan*/ * mpt_execute_req_a64 ; 
 TYPE_3__* FUNC9 (struct mpt_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mpt_softc*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (struct mpt_softc*,char*,union ccb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mpt_softc*,union ccb*,TYPE_3__*,scalar_t__,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (union ccb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct mpt_softc*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (union ccb*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC17(struct mpt_softc *mpt, union ccb *ccb)
{
	struct ccb_scsiio *csio = &ccb->csio;
	request_t *cmd_req = FUNC3(mpt, csio->tag_id);
	mpt_tgt_state_t *tgt = FUNC4(mpt, cmd_req);

	switch (tgt->state) {
	case TGT_STATE_IN_CAM:
		break;
	case TGT_STATE_MOVING_DATA:
		FUNC13(ccb, CAM_REQUEUE_REQ);
		FUNC16(mpt->sim, 1);
		ccb->ccb_h.status &= ~CAM_SIM_QUEUED;
		tgt->ccb->ccb_h.status |= CAM_RELEASE_SIMQ;
		FUNC15(ccb);
		return;
	default:
		FUNC11(mpt, "ccb %p flags 0x%x tag 0x%08x had bad request "
		    "starting I/O\n", ccb, csio->ccb_h.flags, csio->tag_id);
		FUNC14(mpt, cmd_req);
		FUNC13(ccb, CAM_REQ_CMP_ERR);
		FUNC15(ccb);
		return;
	}

	if (csio->dxfer_len) {
		bus_dmamap_callback_t *cb;
		PTR_MSG_TARGET_ASSIST_REQUEST ta;
		request_t *req;
		int error;

		FUNC1((ccb->ccb_h.flags & CAM_DIR_MASK) != CAM_DIR_NONE,
		    ("dxfer_len %u but direction is NONE", csio->dxfer_len));

		if ((req = FUNC9(mpt, FALSE)) == NULL) {
			if (mpt->outofbeer == 0) {
				mpt->outofbeer = 1;
				FUNC16(mpt->sim, 1);
				FUNC10(mpt, MPT_PRT_DEBUG, "FREEZEQ\n");
			}
			ccb->ccb_h.status &= ~CAM_SIM_QUEUED;
			FUNC13(ccb, CAM_REQUEUE_REQ);
			FUNC15(ccb);
			return;
		}
		ccb->ccb_h.status = CAM_SIM_QUEUED | CAM_REQ_INPROG;
		if (sizeof (bus_addr_t) > 4) {
			cb = mpt_execute_req_a64;
		} else {
			cb = mpt_execute_req;
		}

		req->ccb = ccb;
		ccb->ccb_h.ccb_req_ptr = req;

		/*
		 * Record the currently active ccb and the
		 * request for it in our target state area.
		 */
		tgt->ccb = ccb;
		tgt->req = req;

		FUNC8(req->req_vbuf, 0, FUNC2(mpt));
		ta = req->req_vbuf;

		if (mpt->is_sas) {
			PTR_MPI_TARGET_SSP_CMD_BUFFER ssp =
			     cmd_req->req_vbuf;
			ta->QueueTag = ssp->InitiatorTag;
		} else if (mpt->is_spi) {
			PTR_MPI_TARGET_SCSI_SPI_CMD_BUFFER sp =
			     cmd_req->req_vbuf;
			ta->QueueTag = sp->Tag;
		}
		ta->Function = MPI_FUNCTION_TARGET_ASSIST;
		ta->MsgContext = FUNC7(req->index | mpt->scsi_tgt_handler_id);
		ta->ReplyWord = FUNC7(tgt->reply_desc);
		FUNC5(ta->LUN, FUNC0(csio->ccb_h.target_lun));

		ta->RelativeOffset = tgt->bytes_xfered;
		ta->DataLength = ccb->csio.dxfer_len;
		if (ta->DataLength > tgt->resid) {
			ta->DataLength = tgt->resid;
		}

		/*
		 * XXX Should be done after data transfer completes?
		 */
		csio->resid = csio->dxfer_len - ta->DataLength;
		tgt->resid -= csio->dxfer_len;
		tgt->bytes_xfered += csio->dxfer_len;

		if ((ccb->ccb_h.flags & CAM_DIR_MASK) == CAM_DIR_IN) {
			ta->TargetAssistFlags |=
			    TARGET_ASSIST_FLAGS_DATA_DIRECTION;
		}

#ifdef	WE_TRUST_AUTO_GOOD_STATUS
		if ((ccb->ccb_h.flags & CAM_SEND_STATUS) &&
		    csio->scsi_status == SCSI_STATUS_OK && tgt->resid == 0) {
			ta->TargetAssistFlags |=
			    TARGET_ASSIST_FLAGS_AUTO_STATUS;
		}
#endif
		tgt->state = TGT_STATE_SETTING_UP_FOR_DATA;

		FUNC10(mpt, MPT_PRT_DEBUG, 
		    "DATA_CCB %p tag %x %u bytes %u resid flg %x req %p:%u "
		    "nxtstate=%d\n", csio, csio->tag_id, csio->dxfer_len,
		    tgt->resid, ccb->ccb_h.flags, req, req->serno, tgt->state);

		error = FUNC6(mpt->buffer_dmat, req->dmap, ccb,
		    cb, req, 0);
		if (error == EINPROGRESS) {
			FUNC16(mpt->sim, 1);
			ccb->ccb_h.status |= CAM_RELEASE_SIMQ;
		}
	} else {
		/*
		 * XXX: I don't know why this seems to happen, but
		 * XXX: completing the CCB seems to make things happy.
		 * XXX: This seems to happen if the initiator requests
		 * XXX: enough data that we have to do multiple CTIOs.
		 */
		if ((ccb->ccb_h.flags & CAM_SEND_STATUS) == 0) {
			FUNC10(mpt, MPT_PRT_DEBUG,
			    "Meaningless STATUS CCB (%p): flags %x status %x "
			    "resid %d bytes_xfered %u\n", ccb, ccb->ccb_h.flags,
			    ccb->ccb_h.status, tgt->resid, tgt->bytes_xfered);
			FUNC13(ccb, CAM_REQ_CMP);
			ccb->ccb_h.status &= ~CAM_SIM_QUEUED;
			FUNC15(ccb);
			return;
		}
		FUNC12(mpt, ccb, cmd_req, csio->scsi_status,
		    (void *)&csio->sense_data,
		    (ccb->ccb_h.flags & CAM_SEND_SENSE) ?
		     csio->sense_len : 0);
	}
}