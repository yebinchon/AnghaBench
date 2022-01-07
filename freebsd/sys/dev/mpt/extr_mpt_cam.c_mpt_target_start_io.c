
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {int status; int flags; TYPE_3__* ccb_req_ptr; } ;
struct TYPE_16__ {int target_lun; int flags; } ;
struct ccb_scsiio {scalar_t__ dxfer_len; scalar_t__ resid; scalar_t__ scsi_status; int sense_len; int sense_data; int tag_id; TYPE_1__ ccb_h; } ;
union ccb {TYPE_2__ ccb_h; struct ccb_scsiio csio; } ;
struct mpt_softc {int outofbeer; int scsi_tgt_handler_id; int sim; int buffer_dmat; scalar_t__ is_spi; scalar_t__ is_sas; } ;
struct TYPE_18__ {int index; int dmap; int serno; TYPE_5__* req_vbuf; union ccb* ccb; } ;
typedef TYPE_3__ request_t ;
struct TYPE_19__ {int state; int reply_desc; scalar_t__ resid; int bytes_xfered; TYPE_3__* req; union ccb* ccb; } ;
typedef TYPE_4__ mpt_tgt_state_t ;
typedef int bus_dmamap_callback_t ;
typedef int bus_addr_t ;
struct TYPE_20__ {scalar_t__ DataLength; int TargetAssistFlags; int RelativeOffset; int LUN; void* ReplyWord; void* MsgContext; int Function; int Tag; int QueueTag; int InitiatorTag; } ;
typedef TYPE_5__* PTR_MSG_TARGET_ASSIST_REQUEST ;
typedef TYPE_5__* PTR_MPI_TARGET_SSP_CMD_BUFFER ;
typedef TYPE_5__* PTR_MPI_TARGET_SCSI_SPI_CMD_BUFFER ;


 int CAM_DIR_IN ;
 int CAM_DIR_MASK ;
 int CAM_DIR_NONE ;
 int CAM_EXTLUN_BYTE_SWIZZLE (int ) ;
 int CAM_RELEASE_SIMQ ;
 int CAM_REQUEUE_REQ ;
 int CAM_REQ_CMP ;
 int CAM_REQ_CMP_ERR ;
 int CAM_REQ_INPROG ;
 int CAM_SEND_SENSE ;
 int CAM_SEND_STATUS ;
 int CAM_SIM_QUEUED ;
 int EINPROGRESS ;
 int FALSE ;
 int KASSERT (int,char*) ;
 int MPI_FUNCTION_TARGET_ASSIST ;
 int MPT_PRT_DEBUG ;
 int MPT_RQSL (struct mpt_softc*) ;
 TYPE_3__* MPT_TAG_2_REQ (struct mpt_softc*,int ) ;
 TYPE_4__* MPT_TGT_STATE (struct mpt_softc*,TYPE_3__*) ;
 scalar_t__ SCSI_STATUS_OK ;
 int TARGET_ASSIST_FLAGS_AUTO_STATUS ;
 int TARGET_ASSIST_FLAGS_DATA_DIRECTION ;


 int TGT_STATE_SETTING_UP_FOR_DATA ;
 int be64enc (int ,int ) ;
 int bus_dmamap_load_ccb (int ,int ,union ccb*,int *,TYPE_3__*,int ) ;
 void* htole32 (int) ;
 int memset (TYPE_5__*,int ,int ) ;
 int * mpt_execute_req ;
 int * mpt_execute_req_a64 ;
 TYPE_3__* mpt_get_request (struct mpt_softc*,int ) ;
 int mpt_lprt (struct mpt_softc*,int ,char*,...) ;
 int mpt_prt (struct mpt_softc*,char*,union ccb*,int ,int ) ;
 int mpt_scsi_tgt_status (struct mpt_softc*,union ccb*,TYPE_3__*,scalar_t__,void*,int ) ;
 int mpt_set_ccb_status (union ccb*,int ) ;
 int mpt_tgt_dump_req_state (struct mpt_softc*,TYPE_3__*) ;
 int xpt_done (union ccb*) ;
 int xpt_freeze_simq (int ,int) ;

__attribute__((used)) static void
mpt_target_start_io(struct mpt_softc *mpt, union ccb *ccb)
{
 struct ccb_scsiio *csio = &ccb->csio;
 request_t *cmd_req = MPT_TAG_2_REQ(mpt, csio->tag_id);
 mpt_tgt_state_t *tgt = MPT_TGT_STATE(mpt, cmd_req);

 switch (tgt->state) {
 case 129:
  break;
 case 128:
  mpt_set_ccb_status(ccb, CAM_REQUEUE_REQ);
  xpt_freeze_simq(mpt->sim, 1);
  ccb->ccb_h.status &= ~CAM_SIM_QUEUED;
  tgt->ccb->ccb_h.status |= CAM_RELEASE_SIMQ;
  xpt_done(ccb);
  return;
 default:
  mpt_prt(mpt, "ccb %p flags 0x%x tag 0x%08x had bad request "
      "starting I/O\n", ccb, csio->ccb_h.flags, csio->tag_id);
  mpt_tgt_dump_req_state(mpt, cmd_req);
  mpt_set_ccb_status(ccb, CAM_REQ_CMP_ERR);
  xpt_done(ccb);
  return;
 }

 if (csio->dxfer_len) {
  bus_dmamap_callback_t *cb;
  PTR_MSG_TARGET_ASSIST_REQUEST ta;
  request_t *req;
  int error;

  KASSERT((ccb->ccb_h.flags & CAM_DIR_MASK) != CAM_DIR_NONE,
      ("dxfer_len %u but direction is NONE", csio->dxfer_len));

  if ((req = mpt_get_request(mpt, FALSE)) == ((void*)0)) {
   if (mpt->outofbeer == 0) {
    mpt->outofbeer = 1;
    xpt_freeze_simq(mpt->sim, 1);
    mpt_lprt(mpt, MPT_PRT_DEBUG, "FREEZEQ\n");
   }
   ccb->ccb_h.status &= ~CAM_SIM_QUEUED;
   mpt_set_ccb_status(ccb, CAM_REQUEUE_REQ);
   xpt_done(ccb);
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





  tgt->ccb = ccb;
  tgt->req = req;

  memset(req->req_vbuf, 0, MPT_RQSL(mpt));
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
  ta->MsgContext = htole32(req->index | mpt->scsi_tgt_handler_id);
  ta->ReplyWord = htole32(tgt->reply_desc);
  be64enc(ta->LUN, CAM_EXTLUN_BYTE_SWIZZLE(csio->ccb_h.target_lun));

  ta->RelativeOffset = tgt->bytes_xfered;
  ta->DataLength = ccb->csio.dxfer_len;
  if (ta->DataLength > tgt->resid) {
   ta->DataLength = tgt->resid;
  }




  csio->resid = csio->dxfer_len - ta->DataLength;
  tgt->resid -= csio->dxfer_len;
  tgt->bytes_xfered += csio->dxfer_len;

  if ((ccb->ccb_h.flags & CAM_DIR_MASK) == CAM_DIR_IN) {
   ta->TargetAssistFlags |=
       TARGET_ASSIST_FLAGS_DATA_DIRECTION;
  }
  tgt->state = TGT_STATE_SETTING_UP_FOR_DATA;

  mpt_lprt(mpt, MPT_PRT_DEBUG,
      "DATA_CCB %p tag %x %u bytes %u resid flg %x req %p:%u "
      "nxtstate=%d\n", csio, csio->tag_id, csio->dxfer_len,
      tgt->resid, ccb->ccb_h.flags, req, req->serno, tgt->state);

  error = bus_dmamap_load_ccb(mpt->buffer_dmat, req->dmap, ccb,
      cb, req, 0);
  if (error == EINPROGRESS) {
   xpt_freeze_simq(mpt->sim, 1);
   ccb->ccb_h.status |= CAM_RELEASE_SIMQ;
  }
 } else {






  if ((ccb->ccb_h.flags & CAM_SEND_STATUS) == 0) {
   mpt_lprt(mpt, MPT_PRT_DEBUG,
       "Meaningless STATUS CCB (%p): flags %x status %x "
       "resid %d bytes_xfered %u\n", ccb, ccb->ccb_h.flags,
       ccb->ccb_h.status, tgt->resid, tgt->bytes_xfered);
   mpt_set_ccb_status(ccb, CAM_REQ_CMP);
   ccb->ccb_h.status &= ~CAM_SIM_QUEUED;
   xpt_done(ccb);
   return;
  }
  mpt_scsi_tgt_status(mpt, ccb, cmd_req, csio->scsi_status,
      (void *)&csio->sense_data,
      (ccb->ccb_h.flags & CAM_SEND_SENSE) ?
       csio->sense_len : 0);
 }
}
