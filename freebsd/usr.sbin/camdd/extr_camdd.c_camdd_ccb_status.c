
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int scsi_status; int resid; int dxfer_len; } ;
struct TYPE_3__ {int status; } ;
union ccb {TYPE_2__ csio; TYPE_1__ ccb_h; } ;
typedef int camdd_buf_status ;
typedef int cam_status ;


 int CAMDD_STATUS_EOF ;
 int CAMDD_STATUS_ERROR ;
 int CAMDD_STATUS_NONE ;
 int CAMDD_STATUS_OK ;
 int CAMDD_STATUS_SHORT_IO ;


 int CAM_STATUS_MASK ;
camdd_buf_status
camdd_ccb_status(union ccb *ccb, int protocol)
{
 camdd_buf_status status = CAMDD_STATUS_NONE;
 cam_status ccb_status;

 ccb_status = ccb->ccb_h.status & CAM_STATUS_MASK;

 switch (protocol) {
 case 137:
  switch (ccb_status) {
  case 140: {
   if (ccb->csio.resid == 0) {
    status = CAMDD_STATUS_OK;
   } else if (ccb->csio.dxfer_len > ccb->csio.resid) {
    status = CAMDD_STATUS_SHORT_IO;
   } else {
    status = CAMDD_STATUS_EOF;
   }
   break;
  }
  case 139: {
   switch (ccb->csio.scsi_status) {
   case 130:
   case 133:
   case 132:
   case 131:
    status = CAMDD_STATUS_OK;
    break;
   case 134:
   case 135:
   case 129:
   case 136:
   case 128:
   default:
    status = CAMDD_STATUS_ERROR;
    break;
   }
   break;
  }
  default:
   status = CAMDD_STATUS_ERROR;
   break;
  }
  break;
 case 138:
  switch (ccb_status) {
  case 140:
   status = CAMDD_STATUS_OK;
   break;
  default:
   status = CAMDD_STATUS_ERROR;
   break;
  }
  break;
 default:
  status = CAMDD_STATUS_ERROR;
  break;
 }

 return (status);
}
