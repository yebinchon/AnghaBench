
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
typedef int uint32_t ;
typedef int ispsoftc_t ;
struct TYPE_10__ {int status; int path; } ;
struct TYPE_11__ {scalar_t__ scsi_status; TYPE_1__ ccb_h; } ;
typedef TYPE_2__ XS_T ;
struct TYPE_12__ {int wdog; } ;


 int CAM_AUTOSENSE_FAIL ;
 int CAM_AUTOSNS_VALID ;
 int CAM_DEV_QFRZN ;
 int CAM_REQ_CMP ;
 int CAM_SCSI_STATUS_ERROR ;
 int CAM_SIM_QUEUED ;
 int CAM_STATUS_MASK ;
 scalar_t__ ISP_PCMD (TYPE_2__*) ;
 TYPE_7__* PISP_PCMD (TYPE_2__*) ;
 scalar_t__ SCSI_STATUS_CHECK_COND ;
 scalar_t__ SCSI_STATUS_OK ;
 int * XS_ISP (TYPE_2__*) ;
 scalar_t__ XS_NOERR (TYPE_2__*) ;
 int XS_SETERR (TYPE_2__*,int) ;
 scalar_t__ callout_active (int *) ;
 int callout_stop (int *) ;
 int isp_free_pcmd (int *,union ccb*) ;
 int xpt_done (union ccb*) ;
 int xpt_freeze_devq (int ,int) ;

void
isp_done(XS_T *sccb)
{
 ispsoftc_t *isp = XS_ISP(sccb);
 uint32_t status;

 if (XS_NOERR(sccb))
  XS_SETERR(sccb, CAM_REQ_CMP);

 if ((sccb->ccb_h.status & CAM_STATUS_MASK) == CAM_REQ_CMP && (sccb->scsi_status != SCSI_STATUS_OK)) {
  sccb->ccb_h.status &= ~CAM_STATUS_MASK;
  if ((sccb->scsi_status == SCSI_STATUS_CHECK_COND) && (sccb->ccb_h.status & CAM_AUTOSNS_VALID) == 0) {
   sccb->ccb_h.status |= CAM_AUTOSENSE_FAIL;
  } else {
   sccb->ccb_h.status |= CAM_SCSI_STATUS_ERROR;
  }
 }

 sccb->ccb_h.status &= ~CAM_SIM_QUEUED;
 status = sccb->ccb_h.status & CAM_STATUS_MASK;
 if (status != CAM_REQ_CMP &&
     (sccb->ccb_h.status & CAM_DEV_QFRZN) == 0) {
  sccb->ccb_h.status |= CAM_DEV_QFRZN;
  xpt_freeze_devq(sccb->ccb_h.path, 1);
 }

 if (ISP_PCMD(sccb)) {
  if (callout_active(&PISP_PCMD(sccb)->wdog))
   callout_stop(&PISP_PCMD(sccb)->wdog);
  isp_free_pcmd(isp, (union ccb *) sccb);
 }
 xpt_done((union ccb *) sccb);
}
