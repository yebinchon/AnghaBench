
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccb_hdr {int status; int path; } ;
typedef int cam_status ;


 int CAM_DEV_QFRZN ;
 int CAM_REQ_CMP ;
 int CAM_STATUS_MASK ;
 int xpt_freeze_devq (int ,int) ;

void
vhba_set_status(struct ccb_hdr *ccbh, cam_status status)
{
 ccbh->status &= ~CAM_STATUS_MASK;
 ccbh->status |= status;
 if (status != CAM_REQ_CMP) {
  if ((ccbh->status & CAM_DEV_QFRZN) == 0) {
   ccbh->status |= CAM_DEV_QFRZN;
   xpt_freeze_devq(ccbh->path, 1);
  }
 }
}
