
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef int u_int32_t ;
struct ahci_channel {scalar_t__ pm_level; int sim; int dev; int r_mem; } ;
typedef int device_t ;


 int AHCI_P_CMD ;
 int AHCI_P_CMD_CPD ;
 int AHCI_P_CMD_CPS ;
 int ATA_INL (int ,int ) ;
 int CAM_LUN_WILDCARD ;
 scalar_t__ CAM_REQ_CMP ;
 int CAM_TARGET_WILDCARD ;
 int ahci_reset (struct ahci_channel*) ;
 scalar_t__ bootverbose ;
 int cam_sim_path (int ) ;
 int device_printf (int ,char*) ;
 union ccb* xpt_alloc_ccb_nowait () ;
 scalar_t__ xpt_create_path (int *,int *,int ,int ,int ) ;
 int xpt_free_ccb (union ccb*) ;
 int xpt_rescan (union ccb*) ;

__attribute__((used)) static void
ahci_cpd_check_events(struct ahci_channel *ch)
{
 u_int32_t status;
 union ccb *ccb;
 device_t dev;

 if (ch->pm_level == 0)
  return;

 status = ATA_INL(ch->r_mem, AHCI_P_CMD);
 if ((status & AHCI_P_CMD_CPD) == 0)
  return;

 if (bootverbose) {
  dev = ch->dev;
  if (status & AHCI_P_CMD_CPS) {
   device_printf(dev, "COLD CONNECT requested\n");
  } else
   device_printf(dev, "COLD DISCONNECT requested\n");
 }
 ahci_reset(ch);
 if ((ccb = xpt_alloc_ccb_nowait()) == ((void*)0))
  return;
 if (xpt_create_path(&ccb->ccb_h.path, ((void*)0), cam_sim_path(ch->sim),
     CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
  xpt_free_ccb(ccb);
  return;
 }
 xpt_rescan(ccb);
}
