
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ status; int flags; int func_code; } ;
struct ccb_relsim {TYPE_1__ ccb_h; int openings; int release_flags; } ;
struct cam_path {int dummy; } ;


 int CAM_DEV_QFREEZE ;
 scalar_t__ CAM_REQ_CMP ;
 int DBG_INFO (char*) ;
 int RELSIM_ADJUST_OPENINGS ;
 int XPT_REL_SIMQ ;
 int printf (char*,scalar_t__) ;
 int xpt_action (union ccb*) ;
 int xpt_setup_ccb (TYPE_1__*,struct cam_path*,int) ;

void smartpqi_adjust_queue_depth(struct cam_path *path, uint32_t queue_depth)
{
 struct ccb_relsim crs;

 DBG_INFO("IN\n");

 xpt_setup_ccb(&crs.ccb_h, path, 5);
 crs.ccb_h.func_code = XPT_REL_SIMQ;
 crs.ccb_h.flags = CAM_DEV_QFREEZE;
 crs.release_flags = RELSIM_ADJUST_OPENINGS;
 crs.openings = queue_depth;
 xpt_action((union ccb *)&crs);
 if(crs.ccb_h.status != CAM_REQ_CMP) {
  printf("XPT_REL_SIMQ failed stat=%d\n", crs.ccb_h.status);
 }

 DBG_INFO("OUT\n");
}
