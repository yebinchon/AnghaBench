
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int target_lun; int target_id; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef int uint8_t ;
typedef int uint16_t ;
struct mpt_softc {TYPE_4__* tmf_req; int request_pending_list; int request_timeout_list; } ;
struct TYPE_9__ {int index; int serno; union ccb* ccb; TYPE_3__* req_vbuf; } ;
typedef TYPE_2__ request_t ;
struct TYPE_11__ {int state; int ResponseCode; int IOCStatus; } ;
struct TYPE_10__ {int Function; } ;
typedef TYPE_3__ MSG_REQUEST_HEADER ;


 int CAM_CMD_TIMEOUT ;


 int MPI_IOCSTATUS_MASK ;
 int MPI_IOCSTATUS_SUCCESS ;
 int MPI_SCSITASKMGMT_RSP_TM_COMPLETE ;
 int MPI_SCSITASKMGMT_RSP_TM_SUCCEEDED ;
 int MPI_SCSITASKMGMT_TASKTYPE_ABORT_TASK ;
 int REQ_STATE_DONE ;
 int REQ_STATE_FREE ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 TYPE_2__* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_HEAD (int *,TYPE_2__*,int ) ;
 int TAILQ_REMOVE (int *,TYPE_2__*,int ) ;
 int TRUE ;
 int htole32 (int) ;
 int le16toh (int ) ;
 int links ;
 int mpt_enable_ints (struct mpt_softc*) ;
 int mpt_intr (struct mpt_softc*) ;
 int mpt_prt (struct mpt_softc*,char*,...) ;
 int mpt_reset (struct mpt_softc*,int ) ;
 int mpt_scsi_send_tmf (struct mpt_softc*,int ,int ,int ,int ,int ,int ,int ) ;
 int mpt_set_ccb_status (union ccb*,int ) ;
 int mpt_wait_req (struct mpt_softc*,TYPE_4__*,int ,int ,int ,int) ;
 int scsi_io_handler_id ;

__attribute__((used)) static void
mpt_recover_commands(struct mpt_softc *mpt)
{
 request_t *req;
 union ccb *ccb;
 int error;

 if (TAILQ_EMPTY(&mpt->request_timeout_list) != 0) {



  mpt_prt(mpt, "mpt_recover_commands: no requests.\n");
  return;
 }




 mpt_intr(mpt);

 if (TAILQ_EMPTY(&mpt->request_timeout_list) != 0) {
  mpt_prt(mpt, "Timedout requests already complete. "
      "Interrupts may not be functioning.\n");
  mpt_enable_ints(mpt);
  return;
 }
 while ((req = TAILQ_FIRST(&mpt->request_timeout_list)) != ((void*)0)) {
  uint16_t status;
  uint8_t response;
  MSG_REQUEST_HEADER *hdrp = req->req_vbuf;

  mpt_prt(mpt, "attempting to abort req %p:%u function %x\n",
      req, req->serno, hdrp->Function);
  ccb = req->ccb;
  if (ccb == ((void*)0)) {
   mpt_prt(mpt, "null ccb in timed out request. "
       "Resetting Controller.\n");
   mpt_reset(mpt, TRUE);
   continue;
  }
  mpt_set_ccb_status(ccb, CAM_CMD_TIMEOUT);





  switch (hdrp->Function) {
  case 128:
  case 129:
   break;
  default:



   mpt_prt(mpt, "just putting it back on the pend q\n");
   TAILQ_REMOVE(&mpt->request_timeout_list, req, links);
   TAILQ_INSERT_HEAD(&mpt->request_pending_list, req,
       links);
   continue;
  }

  error = mpt_scsi_send_tmf(mpt,
      MPI_SCSITASKMGMT_TASKTYPE_ABORT_TASK,
      0, 0, ccb->ccb_h.target_id, ccb->ccb_h.target_lun,
      htole32(req->index | scsi_io_handler_id), TRUE);

  if (error != 0) {





   continue;
  }

  error = mpt_wait_req(mpt, mpt->tmf_req, REQ_STATE_DONE,
      REQ_STATE_DONE, TRUE, 500);

  status = le16toh(mpt->tmf_req->IOCStatus);
  response = mpt->tmf_req->ResponseCode;
  mpt->tmf_req->state = REQ_STATE_FREE;

  if (error != 0) {



   mpt_prt(mpt, "mpt_recover_commands: abort timed-out. "
       "Resetting controller\n");
   mpt_reset(mpt, TRUE);
   continue;
  }

  if ((status & MPI_IOCSTATUS_MASK) != MPI_IOCSTATUS_SUCCESS) {
   mpt_prt(mpt, "mpt_recover_commands: IOC Status 0x%x. "
       "Resetting controller.\n", status);
   mpt_reset(mpt, TRUE);
   continue;
  }

  if (response != MPI_SCSITASKMGMT_RSP_TM_SUCCEEDED &&
      response != MPI_SCSITASKMGMT_RSP_TM_COMPLETE) {
   mpt_prt(mpt, "mpt_recover_commands: TMF Response 0x%x. "
       "Resetting controller.\n", response);
   mpt_reset(mpt, TRUE);
   continue;
  }
  mpt_prt(mpt, "abort of req %p:%u completed\n", req, req->serno);
 }
}
