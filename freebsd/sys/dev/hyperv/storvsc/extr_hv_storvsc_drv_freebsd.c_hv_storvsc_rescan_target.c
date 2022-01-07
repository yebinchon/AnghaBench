
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int func_code; int path; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef int target_id_t ;
struct storvsc_softc {int hs_sim; } ;
typedef int path_id_t ;


 int CAM_LUN_WILDCARD ;
 scalar_t__ CAM_REQ_CMP ;
 int CAM_TARGET_WILDCARD ;
 int XPT_SCAN_BUS ;
 int XPT_SCAN_TGT ;
 int cam_sim_path (int ) ;
 int printf (char*,...) ;
 union ccb* xpt_alloc_ccb_nowait () ;
 scalar_t__ xpt_create_path (int *,int *,int,int,int ) ;
 int xpt_free_ccb (union ccb*) ;
 int xpt_rescan (union ccb*) ;

__attribute__((used)) static void
hv_storvsc_rescan_target(struct storvsc_softc *sc)
{
 path_id_t pathid;
 target_id_t targetid;
 union ccb *ccb;

 pathid = cam_sim_path(sc->hs_sim);
 targetid = CAM_TARGET_WILDCARD;




 ccb = xpt_alloc_ccb_nowait();
 if (ccb == ((void*)0)) {
  printf("unable to alloc CCB for rescan\n");
  return;
 }

 if (xpt_create_path(&ccb->ccb_h.path, ((void*)0), pathid, targetid,
     CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
  printf("unable to create path for rescan, pathid: %u,"
      "targetid: %u\n", pathid, targetid);
  xpt_free_ccb(ccb);
  return;
 }

 if (targetid == CAM_TARGET_WILDCARD)
  ccb->ccb_h.func_code = XPT_SCAN_BUS;
 else
  ccb->ccb_h.func_code = XPT_SCAN_TGT;

 xpt_rescan(ccb);
}
