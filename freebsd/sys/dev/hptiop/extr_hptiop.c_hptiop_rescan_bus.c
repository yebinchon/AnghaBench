
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct hpt_iop_hba {int sim; } ;


 int CAM_LUN_WILDCARD ;
 scalar_t__ CAM_REQ_CMP ;
 int CAM_TARGET_WILDCARD ;
 int EIO ;
 int ENOMEM ;
 int cam_sim_path (int ) ;
 union ccb* xpt_alloc_ccb () ;
 scalar_t__ xpt_create_path (int *,int *,int ,int ,int ) ;
 int xpt_free_ccb (union ccb*) ;
 int xpt_rescan (union ccb*) ;

__attribute__((used)) static int hptiop_rescan_bus(struct hpt_iop_hba * hba)
{
 union ccb *ccb;

 if ((ccb = xpt_alloc_ccb()) == ((void*)0))
  return(ENOMEM);
 if (xpt_create_path(&ccb->ccb_h.path, ((void*)0), cam_sim_path(hba->sim),
  CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
  xpt_free_ccb(ccb);
  return(EIO);
 }
 xpt_rescan(ccb);
 return(0);
}
