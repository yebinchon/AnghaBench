
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct TYPE_2__ {scalar_t__ status; int flags; int func_code; } ;
struct ccb_relsim {TYPE_1__ ccb_h; int openings; int release_flags; } ;
struct cam_path {int dummy; } ;
typedef int bit32 ;


 int CAM_DEV_QFREEZE ;
 scalar_t__ CAM_REQ_CMP ;
 int RELSIM_ADJUST_OPENINGS ;
 int XPT_REL_SIMQ ;
 int printf (char*) ;
 int xpt_action (union ccb*) ;
 int xpt_setup_ccb (TYPE_1__*,struct cam_path*,int) ;

void agtiapi_adjust_queue_depth(struct cam_path *path, bit32 QueueDepth)
{
  struct ccb_relsim crs;
  xpt_setup_ccb(&crs.ccb_h, path, 5);
  crs.ccb_h.func_code = XPT_REL_SIMQ;
  crs.ccb_h.flags = CAM_DEV_QFREEZE;
  crs.release_flags = RELSIM_ADJUST_OPENINGS;
  crs.openings = QueueDepth;
  xpt_action((union ccb *)&crs);
  if(crs.ccb_h.status != CAM_REQ_CMP) {
                 printf("XPT_REL_SIMQ failed\n");
  }
}
