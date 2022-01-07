
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct isp_fc {int sim; } ;
typedef int ispsoftc_t ;
typedef int fcportdb_t ;


 int CAM_LUN_WILDCARD ;
 scalar_t__ CAM_REQ_CMP ;
 struct isp_fc* ISP_FC_PC (int *,int) ;
 int ISP_LOGWARN ;
 int cam_sim_path (int ) ;
 int isp_prt (int *,int ,char*,...) ;
 union ccb* xpt_alloc_ccb_nowait () ;
 scalar_t__ xpt_create_path (int *,int *,int ,int,int ) ;
 int xpt_free_ccb (union ccb*) ;
 int xpt_rescan (union ccb*) ;

__attribute__((used)) static void
isp_make_here(ispsoftc_t *isp, fcportdb_t *fcp, int chan, int tgt)
{
 union ccb *ccb;
 struct isp_fc *fc = ISP_FC_PC(isp, chan);




 ccb = xpt_alloc_ccb_nowait();
 if (ccb == ((void*)0)) {
  isp_prt(isp, ISP_LOGWARN, "Chan %d unable to alloc CCB for rescan", chan);
  return;
 }
 if (xpt_create_path(&ccb->ccb_h.path, ((void*)0), cam_sim_path(fc->sim),
     tgt, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
  isp_prt(isp, ISP_LOGWARN, "unable to create path for rescan");
  xpt_free_ccb(ccb);
  return;
 }
 xpt_rescan(ccb);
}
