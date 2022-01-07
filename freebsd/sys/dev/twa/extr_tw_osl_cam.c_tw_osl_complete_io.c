
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int status; } ;
struct TYPE_5__ {int scsi_status; int sense_len; } ;
union ccb {TYPE_3__ ccb_h; TYPE_2__ csio; } ;
struct twa_softc {int sim_lock; } ;
struct tw_osli_req_context {scalar_t__ state; scalar_t__ error_code; scalar_t__ deadline; scalar_t__ orig_req; struct twa_softc* ctlr; int req_pkt; } ;
struct tw_cl_scsi_req_packet {int scsi_status; int sense_len; } ;
struct TYPE_4__ {struct tw_cl_scsi_req_packet scsi_req; } ;
struct tw_cl_req_packet {int status; TYPE_1__ gen_req_pkt; } ;
struct tw_cl_req_handle {struct tw_osli_req_context* osl_req_ctxt; } ;
typedef int TW_VOID ;


 int CAM_AUTOSNS_VALID ;
 int CAM_DEV_NOT_THERE ;
 int CAM_REQUEUE_REQ ;
 int CAM_REQ_CMP ;
 void* CAM_REQ_CMP_ERR ;
 int CAM_REQ_TOO_BIG ;
 int CAM_SCSI_BUS_RESET ;
 int CAM_SCSI_STATUS_ERROR ;
 int CAM_SEL_TIMEOUT ;
 int CAM_SIM_QUEUED ;
 scalar_t__ EBUSY ;
 scalar_t__ EFBIG ;
 int TW_CL_ERR_REQ_AUTO_SENSE_VALID ;
 int TW_CL_ERR_REQ_BUS_RESET ;
 int TW_CL_ERR_REQ_INVALID_LUN ;
 int TW_CL_ERR_REQ_INVALID_TARGET ;
 int TW_CL_ERR_REQ_SCSI_ERROR ;
 int TW_CL_ERR_REQ_SUCCESS ;
 int TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER ;
 int TW_CL_SEVERITY_ERROR_STRING ;
 int TW_OSLI_BUSY_Q ;
 int TW_OSLI_FREE_Q ;
 scalar_t__ TW_OSLI_REQ_STATE_BUSY ;
 scalar_t__ TW_OSLI_REQ_STATE_COMPLETE ;
 int mtx_lock (int ) ;
 int mtx_unlock (int ) ;
 int tw_osli_dbg_dprintf (int,struct twa_softc*,char*) ;
 int tw_osli_printf (struct twa_softc*,char*,int ,int ,int,char*,struct tw_osli_req_context*,scalar_t__) ;
 int tw_osli_req_q_insert_tail (struct tw_osli_req_context*,int ) ;
 int tw_osli_req_q_remove_item (struct tw_osli_req_context*,int ) ;
 int tw_osli_unmap_request (struct tw_osli_req_context*) ;
 int xpt_done (union ccb*) ;

TW_VOID
tw_osl_complete_io(struct tw_cl_req_handle *req_handle)
{
 struct tw_osli_req_context *req = req_handle->osl_req_ctxt;
 struct tw_cl_req_packet *req_pkt =
  (struct tw_cl_req_packet *)(&req->req_pkt);
 struct tw_cl_scsi_req_packet *scsi_req;
 struct twa_softc *sc = req->ctlr;
 union ccb *ccb = (union ccb *)(req->orig_req);

 tw_osli_dbg_dprintf(10, sc, "entering");

 if (req->state != TW_OSLI_REQ_STATE_BUSY)
  tw_osli_printf(sc, "request = %p, status = %d",
   TW_CL_SEVERITY_ERROR_STRING,
   TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER,
   0x210A,
   "Unposted command completed!!",
   req, req->state);






 req->state = TW_OSLI_REQ_STATE_COMPLETE;
 tw_osli_req_q_remove_item(req, TW_OSLI_BUSY_Q);

 tw_osli_unmap_request(req);

 req->deadline = 0;
 if (req->error_code) {

  if (req->error_code == EBUSY) {





   ccb->ccb_h.status |= CAM_REQUEUE_REQ;
  }
  else if (req->error_code == EFBIG)
   ccb->ccb_h.status = CAM_REQ_TOO_BIG;
  else
   ccb->ccb_h.status = CAM_REQ_CMP_ERR;
 } else {
  scsi_req = &(req_pkt->gen_req_pkt.scsi_req);
  if (req_pkt->status == TW_CL_ERR_REQ_SUCCESS)
   ccb->ccb_h.status = CAM_REQ_CMP;
  else {
   if (req_pkt->status & TW_CL_ERR_REQ_INVALID_TARGET)
    ccb->ccb_h.status |= CAM_SEL_TIMEOUT;
   else if (req_pkt->status & TW_CL_ERR_REQ_INVALID_LUN)
    ccb->ccb_h.status |= CAM_DEV_NOT_THERE;
   else if (req_pkt->status & TW_CL_ERR_REQ_SCSI_ERROR)
    ccb->ccb_h.status |= CAM_SCSI_STATUS_ERROR;
   else if (req_pkt->status & TW_CL_ERR_REQ_BUS_RESET)
    ccb->ccb_h.status |= (CAM_REQUEUE_REQ | CAM_SCSI_BUS_RESET);




   if (ccb->ccb_h.status == 0)
    ccb->ccb_h.status = CAM_REQ_CMP_ERR;

   if (req_pkt->status & TW_CL_ERR_REQ_AUTO_SENSE_VALID) {
    ccb->csio.sense_len = scsi_req->sense_len;
    ccb->ccb_h.status |= CAM_AUTOSNS_VALID;
   }
  }

  ccb->csio.scsi_status = scsi_req->scsi_status;
 }

 ccb->ccb_h.status &= ~CAM_SIM_QUEUED;
 mtx_lock(sc->sim_lock);
 xpt_done(ccb);
 mtx_unlock(sc->sim_lock);
 if (! req->error_code)

  tw_osli_req_q_insert_tail(req, TW_OSLI_FREE_Q);
}
