
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef int u_int32_t ;
struct fsl_sata_channel {scalar_t__ pm_level; int sim; int path; int dev; int r_mem; } ;


 int AC_BUS_RESET ;
 int ATA_INL (int ,int ) ;
 int ATA_SE_EXCHANGED ;
 int ATA_SE_PHY_CHANGED ;
 int ATA_SS_DET_MASK ;
 int ATA_SS_DET_NO_DEVICE ;
 int CAM_LUN_WILDCARD ;
 scalar_t__ CAM_REQ_CMP ;
 int CAM_TARGET_WILDCARD ;
 int FSL_SATA_P_SSTS ;
 scalar_t__ bootverbose ;
 int cam_sim_path (int ) ;
 int device_printf (int ,char*) ;
 union ccb* xpt_alloc_ccb_nowait () ;
 int xpt_async (int ,int ,int *) ;
 scalar_t__ xpt_create_path (int *,int *,int ,int ,int ) ;
 int xpt_free_ccb (union ccb*) ;
 int xpt_rescan (union ccb*) ;

__attribute__((used)) static int
fsl_sata_phy_check_events(struct fsl_sata_channel *ch, u_int32_t serr)
{

 if (((ch->pm_level == 0) && (serr & ATA_SE_PHY_CHANGED)) ||
     ((ch->pm_level != 0) && (serr & ATA_SE_EXCHANGED))) {
  u_int32_t status = ATA_INL(ch->r_mem, FSL_SATA_P_SSTS);
  union ccb *ccb;

  if (bootverbose) {
   if ((status & ATA_SS_DET_MASK) != ATA_SS_DET_NO_DEVICE)
    device_printf(ch->dev, "CONNECT requested\n");
   else
    device_printf(ch->dev, "DISCONNECT requested\n");
  }

  xpt_async(AC_BUS_RESET, ch->path, ((void*)0));
  if ((ccb = xpt_alloc_ccb_nowait()) == ((void*)0))
   return (0);
  if (xpt_create_path(&ccb->ccb_h.path, ((void*)0),
      cam_sim_path(ch->sim),
      CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
   xpt_free_ccb(ccb);
   return (0);
  }
  xpt_rescan(ccb);
  return (1);
 }
 return (0);
}
