
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; int path; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef int uint32_t ;
struct fsl_sata_channel {scalar_t__ toslots; int devices; int sim; int r_mem; int dev; int path; scalar_t__ fatalerr; scalar_t__ eslots; int numhslots; union ccb** hold; TYPE_2__* slot; union ccb* frozen; } ;
struct TYPE_4__ {scalar_t__ state; } ;


 int AC_BUS_RESET ;
 int ATA_INL (int ,int ) ;
 int ATA_OUTL (int ,int ,int) ;
 int CAM_DEV_QFRZN ;
 int CAM_RELEASE_SIMQ ;
 int CAM_REQUEUE_REQ ;
 int DELAY (int) ;
 int FSL_SATA_ERR_INNOCENT ;
 int FSL_SATA_MAX_SLOTS ;
 int FSL_SATA_P_HCTRL ;
 int FSL_SATA_P_HCTRL_CC ;
 int FSL_SATA_P_HCTRL_DE ;
 int FSL_SATA_P_HCTRL_FATAL ;
 int FSL_SATA_P_HCTRL_PHYRDY ;
 int FSL_SATA_P_HCTRL_SIG ;
 int FSL_SATA_P_HCTRL_SNTFY ;
 int FSL_SATA_P_HSTS ;
 scalar_t__ FSL_SATA_SLOT_RUNNING ;
 int TRUE ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*) ;
 int fsl_sata_done (struct fsl_sata_channel*,union ccb*) ;
 int fsl_sata_end_transaction (TYPE_2__*,int ) ;
 int fsl_sata_start (struct fsl_sata_channel*) ;
 int fsl_sata_stop (struct fsl_sata_channel*) ;
 scalar_t__ fsl_sata_wait_register (struct fsl_sata_channel*,int ,int,int,int) ;
 int xpt_async (int ,int ,int *) ;
 int xpt_freeze_devq (int ,int) ;
 int xpt_freeze_simq (int ,int) ;
 int xpt_release_simq (int ,int ) ;

__attribute__((used)) static void
fsl_sata_reset(struct fsl_sata_channel *ch)
{
 uint32_t ctrl;
 int i;

 xpt_freeze_simq(ch->sim, 1);
 if (bootverbose)
  device_printf(ch->dev, "FSL SATA reset...\n");


 if (ch->frozen) {
  union ccb *fccb = ch->frozen;
  ch->frozen = ((void*)0);
  fccb->ccb_h.status = CAM_REQUEUE_REQ | CAM_RELEASE_SIMQ;
  if (!(fccb->ccb_h.status & CAM_DEV_QFRZN)) {
   xpt_freeze_devq(fccb->ccb_h.path, 1);
   fccb->ccb_h.status |= CAM_DEV_QFRZN;
  }
  fsl_sata_done(ch, fccb);
 }

 fsl_sata_stop(ch);
 DELAY(1000);
 for (i = 0; i < FSL_SATA_MAX_SLOTS; i++) {

  if (ch->slot[i].state < FSL_SATA_SLOT_RUNNING)
   continue;

  fsl_sata_end_transaction(&ch->slot[i], FSL_SATA_ERR_INNOCENT);
 }
 for (i = 0; i < FSL_SATA_MAX_SLOTS; i++) {
  if (!ch->hold[i])
   continue;
  fsl_sata_done(ch, ch->hold[i]);
  ch->hold[i] = ((void*)0);
  ch->numhslots--;
 }
 if (ch->toslots != 0)
  xpt_release_simq(ch->sim, TRUE);
 ch->eslots = 0;
 ch->toslots = 0;
 ch->fatalerr = 0;

 xpt_async(AC_BUS_RESET, ch->path, ((void*)0));

 ATA_OUTL(ch->r_mem, FSL_SATA_P_HCTRL,
     ATA_INL(ch->r_mem, FSL_SATA_P_HCTRL) & ~0x3f);

 fsl_sata_start(ch);
 if (fsl_sata_wait_register(ch, FSL_SATA_P_HSTS, 0x08, 0x08, 500)) {
  if (bootverbose)
   device_printf(ch->dev,
       "FSL SATA reset: device not found\n");
  ch->devices = 0;

  ATA_OUTL(ch->r_mem, FSL_SATA_P_HCTRL,
      ATA_INL(ch->r_mem, FSL_SATA_P_HCTRL) | FSL_SATA_P_HCTRL_PHYRDY);
  xpt_release_simq(ch->sim, TRUE);
  return;
 }
 if (bootverbose)
  device_printf(ch->dev, "FSL SATA reset: device found\n");
 ch->devices = 1;

 ctrl = ATA_INL(ch->r_mem, FSL_SATA_P_HCTRL) & ~0x3f;
 ATA_OUTL(ch->r_mem, FSL_SATA_P_HCTRL,
     ctrl | FSL_SATA_P_HCTRL_FATAL | FSL_SATA_P_HCTRL_PHYRDY |
     FSL_SATA_P_HCTRL_SIG | FSL_SATA_P_HCTRL_SNTFY |
     FSL_SATA_P_HCTRL_DE | FSL_SATA_P_HCTRL_CC);
 xpt_release_simq(ch->sim, TRUE);
}
