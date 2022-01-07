
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ target_id; scalar_t__ target_lun; int status; } ;
union ccb {TYPE_1__ ccb_h; } ;


 int CAM_LUN_INVALID ;
 int CAM_TID_INVALID ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static int
ahci_check_ids(union ccb *ccb)
{

 if (ccb->ccb_h.target_id != 0) {
  ccb->ccb_h.status = CAM_TID_INVALID;
  xpt_done(ccb);
  return (-1);
 }
 if (ccb->ccb_h.target_lun != 0) {
  ccb->ccb_h.status = CAM_LUN_INVALID;
  xpt_done(ccb);
  return (-1);
 }
 return (0);
}
