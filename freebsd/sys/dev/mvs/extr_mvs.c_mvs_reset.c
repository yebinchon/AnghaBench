
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mvs_channel {int resetting; scalar_t__ toslots; int devices; int sim; int reset_timer; int r_mem; int path; scalar_t__ fake_busy; scalar_t__ fatalerr; scalar_t__ eslots; int numhslots; int ** hold; TYPE_1__* slot; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ state; } ;


 int AC_BUS_RESET ;
 int ATA_OUTL (int ,int ,int) ;
 int ATA_S_BUSY ;
 int ATA_S_DRQ ;
 int DELAY (int) ;
 int DMA_C ;
 int EDMA_CMD ;
 int EDMA_CMD_EATARST ;
 int EDMA_IEC ;
 int EDMA_IEM ;
 int EDMA_IE_TRANSIENT ;
 int MVS_EDMA_OFF ;
 int MVS_ERR_INNOCENT ;
 int MVS_MAX_SLOTS ;
 scalar_t__ MVS_SLOT_RUNNING ;
 int SATA_SE ;
 int TRUE ;
 scalar_t__ bootverbose ;
 int callout_reset (int *,int,int ,int ) ;
 int callout_stop (int *) ;
 struct mvs_channel* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 scalar_t__ dumping ;
 int hz ;
 int mvs_end_transaction (TYPE_1__*,int ) ;
 int mvs_errata (int ) ;
 int mvs_requeue_frozen (int ) ;
 int mvs_reset_to ;
 int mvs_sata_phy_reset (int ) ;
 int mvs_set_edma_mode (int ,int ) ;
 int mvs_wait (int ,int ,int,int) ;
 int xpt_async (int ,int ,int *) ;
 int xpt_done (int *) ;
 int xpt_freeze_simq (int ,int) ;
 int xpt_release_simq (int ,int ) ;

__attribute__((used)) static void
mvs_reset(device_t dev)
{
 struct mvs_channel *ch = device_get_softc(dev);
 int i;

 xpt_freeze_simq(ch->sim, 1);
 if (bootverbose)
  device_printf(dev, "MVS reset...\n");

 if (ch->resetting) {
  ch->resetting = 0;
  callout_stop(&ch->reset_timer);
  xpt_release_simq(ch->sim, TRUE);
 }

 mvs_requeue_frozen(dev);

 mvs_set_edma_mode(dev, MVS_EDMA_OFF);
 ATA_OUTL(ch->r_mem, DMA_C, 0);
 for (i = 0; i < MVS_MAX_SLOTS; i++) {

  if (ch->slot[i].state < MVS_SLOT_RUNNING)
   continue;

  mvs_end_transaction(&ch->slot[i], MVS_ERR_INNOCENT);
 }
 for (i = 0; i < MVS_MAX_SLOTS; i++) {
  if (!ch->hold[i])
   continue;
  xpt_done(ch->hold[i]);
  ch->hold[i] = ((void*)0);
  ch->numhslots--;
 }
 if (ch->toslots != 0)
  xpt_release_simq(ch->sim, TRUE);
 ch->eslots = 0;
 ch->toslots = 0;
 ch->fatalerr = 0;
 ch->fake_busy = 0;

 xpt_async(AC_BUS_RESET, ch->path, ((void*)0));
 ATA_OUTL(ch->r_mem, EDMA_IEM, 0);
 ATA_OUTL(ch->r_mem, EDMA_CMD, EDMA_CMD_EATARST);
 DELAY(25);
 ATA_OUTL(ch->r_mem, EDMA_CMD, 0);
 mvs_errata(dev);

 if (!mvs_sata_phy_reset(dev)) {
  if (bootverbose)
   device_printf(dev, "MVS reset: device not found\n");
  ch->devices = 0;
  ATA_OUTL(ch->r_mem, SATA_SE, 0xffffffff);
  ATA_OUTL(ch->r_mem, EDMA_IEC, 0);
  ATA_OUTL(ch->r_mem, EDMA_IEM, ~EDMA_IE_TRANSIENT);
  xpt_release_simq(ch->sim, TRUE);
  return;
 }
 if (bootverbose)
  device_printf(dev, "MVS reset: device found\n");

 if ((i = mvs_wait(dev, 0, ATA_S_BUSY | ATA_S_DRQ,
     dumping ? 31000 : 0)) < 0) {
  if (dumping) {
   device_printf(dev,
       "MVS reset: device not ready after 31000ms\n");
  } else
   ch->resetting = 310;
 } else if (bootverbose)
  device_printf(dev, "MVS reset: device ready after %dms\n", i);
 ch->devices = 1;
 ATA_OUTL(ch->r_mem, SATA_SE, 0xffffffff);
 ATA_OUTL(ch->r_mem, EDMA_IEC, 0);
 ATA_OUTL(ch->r_mem, EDMA_IEM, ~EDMA_IE_TRANSIENT);
 if (ch->resetting)
  callout_reset(&ch->reset_timer, hz / 10, mvs_reset_to, dev);
 else
  xpt_release_simq(ch->sim, TRUE);
}
