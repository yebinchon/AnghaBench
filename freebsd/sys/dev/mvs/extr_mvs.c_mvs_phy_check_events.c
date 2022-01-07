
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef int u_int32_t ;
struct mvs_channel {scalar_t__ pm_level; int sim; int r_mem; } ;
typedef int device_t ;


 int ATA_INL (int ,int ) ;
 int CAM_LUN_WILDCARD ;
 scalar_t__ CAM_REQ_CMP ;
 int CAM_TARGET_WILDCARD ;
 int SATA_SS ;
 int SATA_SS_DET_MASK ;
 int SATA_SS_DET_PHY_ONLINE ;
 int SATA_SS_IPM_ACTIVE ;
 int SATA_SS_IPM_MASK ;
 int SATA_SS_SPD_MASK ;
 int SATA_SS_SPD_NO_SPEED ;
 scalar_t__ bootverbose ;
 int cam_sim_path (int ) ;
 struct mvs_channel* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mvs_reset (int ) ;
 union ccb* xpt_alloc_ccb_nowait () ;
 scalar_t__ xpt_create_path (int *,int *,int ,int ,int ) ;
 int xpt_free_ccb (union ccb*) ;
 int xpt_rescan (union ccb*) ;

__attribute__((used)) static void
mvs_phy_check_events(device_t dev, u_int32_t serr)
{
 struct mvs_channel *ch = device_get_softc(dev);

 if (ch->pm_level == 0) {
  u_int32_t status = ATA_INL(ch->r_mem, SATA_SS);
  union ccb *ccb;

  if (bootverbose) {
   if (((status & SATA_SS_DET_MASK) == SATA_SS_DET_PHY_ONLINE) &&
       ((status & SATA_SS_SPD_MASK) != SATA_SS_SPD_NO_SPEED) &&
       ((status & SATA_SS_IPM_MASK) == SATA_SS_IPM_ACTIVE)) {
    device_printf(dev, "CONNECT requested\n");
   } else
    device_printf(dev, "DISCONNECT requested\n");
  }
  mvs_reset(dev);
  if ((ccb = xpt_alloc_ccb_nowait()) == ((void*)0))
   return;
  if (xpt_create_path(&ccb->ccb_h.path, ((void*)0),
      cam_sim_path(ch->sim),
      CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
   xpt_free_ccb(ccb);
   return;
  }
  xpt_rescan(ccb);
 }
}
