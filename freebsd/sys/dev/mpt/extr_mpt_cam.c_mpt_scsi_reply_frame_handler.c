
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int flags; int status; } ;
struct TYPE_9__ {scalar_t__ dxfer_len; scalar_t__ sense_len; int scsi_status; int sense_data; scalar_t__ sense_resid; scalar_t__ resid; } ;
union ccb {TYPE_2__ ccb_h; TYPE_1__ csio; } ;
typedef scalar_t__ uint32_t ;
typedef int u_int ;
struct mpt_softc {int dummy; } ;
struct TYPE_11__ {int sense_vbuf; union ccb* ccb; } ;
typedef TYPE_3__ request_t ;
struct TYPE_13__ {scalar_t__ Function; int MsgFlags; } ;
struct TYPE_12__ {int SCSIState; int SCSIStatus; int TransferCount; int SenseCount; int IOCStatus; } ;
typedef TYPE_4__ MSG_SCSI_IO_REPLY ;
typedef TYPE_5__ MSG_DEFAULT_REPLY ;


 int CAM_AUTOSENSE_FAIL ;
 int CAM_AUTOSNS_VALID ;
 int CAM_BUSY ;
 int CAM_DATA_RUN_ERR ;
 int CAM_PATH_INVALID ;
 int CAM_REQ_CMP ;
 int CAM_REQ_CMP_ERR ;
 int CAM_REQ_INPROG ;
 int CAM_REQ_TERMIO ;
 int CAM_RESRC_UNAVAIL ;
 int CAM_SCSI_BUS_RESET ;
 int CAM_SCSI_STATUS_ERROR ;
 int CAM_SEL_TIMEOUT ;
 int CAM_SENSE_PHYS ;
 int CAM_SENSE_PTR ;
 int CAM_SEQUENCE_FAIL ;
 int CAM_STATUS_MASK ;
 int CAM_TID_INVALID ;
 int CAM_UA_TERMIO ;
 int CAM_UNCOR_PARITY ;
 int CAM_UNEXP_BUSFREE ;
 int CAM_UNREC_HBA_ERROR ;
 int KASSERT (int,char*) ;
 scalar_t__ MPI_FUNCTION_RAID_SCSI_IO_PASSTHROUGH ;
 scalar_t__ MPI_FUNCTION_SCSI_IO_REQUEST ;







 int MPI_IOCSTATUS_MASK ;
 int MPI_MSGFLAGS_CONTINUATION_REPLY ;
 int MPI_SCSI_STATE_AUTOSENSE_FAILED ;
 int MPI_SCSI_STATE_AUTOSENSE_VALID ;
 int MPI_SCSI_STATE_NO_SCSI_STATUS ;
 int MPI_SCSI_STATE_QUEUE_TAG_REJECTED ;
 int MPI_SCSI_STATE_RESPONSE_INFO_VALID ;
 int MPT_DUMP_REPLY_FRAME (struct mpt_softc*,TYPE_5__*) ;
 int SCSI_STATUS_OK ;
 int TRUE ;
 int bcopy (int ,int *,int ) ;
 int bzero (int *,int) ;
 int le16toh (int ) ;
 scalar_t__ le32toh (int ) ;
 int min (scalar_t__,scalar_t__) ;
 int mpt_freeze_ccb (union ccb*) ;
 int mpt_set_ccb_status (union ccb*,int) ;

__attribute__((used)) static int
mpt_scsi_reply_frame_handler(struct mpt_softc *mpt, request_t *req,
        MSG_DEFAULT_REPLY *reply_frame)
{
 union ccb *ccb;
 MSG_SCSI_IO_REPLY *scsi_io_reply;
 u_int ioc_status;
 u_int sstate;

 MPT_DUMP_REPLY_FRAME(mpt, reply_frame);
 KASSERT(reply_frame->Function == MPI_FUNCTION_SCSI_IO_REQUEST
      || reply_frame->Function == MPI_FUNCTION_RAID_SCSI_IO_PASSTHROUGH,
  ("MPT SCSI I/O Handler called with incorrect reply type"));
 KASSERT((reply_frame->MsgFlags & MPI_MSGFLAGS_CONTINUATION_REPLY) == 0,
  ("MPT SCSI I/O Handler called with continuation reply"));

 scsi_io_reply = (MSG_SCSI_IO_REPLY *)reply_frame;
 ioc_status = le16toh(scsi_io_reply->IOCStatus);
 ioc_status &= MPI_IOCSTATUS_MASK;
 sstate = scsi_io_reply->SCSIState;

 ccb = req->ccb;
 ccb->csio.resid =
     ccb->csio.dxfer_len - le32toh(scsi_io_reply->TransferCount);

 if ((sstate & MPI_SCSI_STATE_AUTOSENSE_VALID) != 0
  && (ccb->ccb_h.flags & (CAM_SENSE_PHYS | CAM_SENSE_PTR)) == 0) {
  uint32_t sense_returned;

  ccb->ccb_h.status |= CAM_AUTOSNS_VALID;

  sense_returned = le32toh(scsi_io_reply->SenseCount);
  if (sense_returned < ccb->csio.sense_len)
   ccb->csio.sense_resid = ccb->csio.sense_len -
      sense_returned;
  else
   ccb->csio.sense_resid = 0;

  bzero(&ccb->csio.sense_data, sizeof(ccb->csio.sense_data));
  bcopy(req->sense_vbuf, &ccb->csio.sense_data,
      min(ccb->csio.sense_len, sense_returned));
 }

 if ((sstate & MPI_SCSI_STATE_QUEUE_TAG_REJECTED) != 0) {






 }

 switch(ioc_status) {
 case 131:
  if (scsi_io_reply->TransferCount == 0) {
   mpt_set_ccb_status(ccb, CAM_UNCOR_PARITY);
   break;
  }

 case 140:
 case 128:
 case 132:
  if ((sstate & MPI_SCSI_STATE_NO_SCSI_STATUS) != 0) {



   mpt_set_ccb_status(ccb, CAM_UNEXP_BUSFREE);
  } else if (scsi_io_reply->SCSIStatus != SCSI_STATUS_OK) {
   ccb->csio.scsi_status = scsi_io_reply->SCSIStatus;
   mpt_set_ccb_status(ccb, CAM_SCSI_STATUS_ERROR);
   if ((sstate & MPI_SCSI_STATE_AUTOSENSE_FAILED) != 0)
    mpt_set_ccb_status(ccb, CAM_AUTOSENSE_FAIL);
  } else if ((sstate & MPI_SCSI_STATE_RESPONSE_INFO_VALID) != 0) {


   mpt_set_ccb_status(ccb, CAM_REQ_CMP_ERR);
  } else
   mpt_set_ccb_status(ccb, CAM_REQ_CMP);
  break;
 case 141:
  mpt_set_ccb_status(ccb, CAM_DATA_RUN_ERR);
  break;
 case 134:
  mpt_set_ccb_status(ccb, CAM_UNCOR_PARITY);
  break;
 case 139:
  mpt_set_ccb_status(ccb, CAM_SEL_TIMEOUT);
  break;
 case 133:
  mpt_set_ccb_status(ccb, CAM_SEQUENCE_FAIL);
  break;
 case 137:
  mpt_set_ccb_status(ccb, CAM_PATH_INVALID);
  break;
 case 136:
  mpt_set_ccb_status(ccb, CAM_TID_INVALID);
  break;
 case 130:
  ccb->ccb_h.status = CAM_UA_TERMIO;
  break;
 case 142:




 case 138:
  ccb->ccb_h.status = CAM_SCSI_BUS_RESET;
  break;
 case 129:
 case 135:







  if ((ccb->ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_INPROG)
   break;
  mpt_set_ccb_status(ccb, CAM_REQ_TERMIO);
  break;

 case 147:
  mpt_set_ccb_status(ccb, CAM_RESRC_UNAVAIL);
  break;
 case 148:
  mpt_set_ccb_status(ccb, CAM_BUSY);
  break;
 case 144:
 case 143:
 case 146:
 case 145:
 default:




  ccb->ccb_h.status = CAM_UNREC_HBA_ERROR;
  break;
 }

 if ((ccb->ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_CMP) {
  mpt_freeze_ccb(ccb);
 }

 return (TRUE);
}
