
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvs_slot {scalar_t__ state; int slot; int dev; } ;
struct mvs_channel {int rslots; int toslots; int sim; int r_mem; } ;
typedef int device_t ;


 int ATA_ALTSTAT ;
 int ATA_INB (int ,int ) ;
 int ATA_INL (int ,int ) ;
 int DMA_C ;
 int DMA_S ;
 int EDMA_IEC ;
 int EDMA_S ;
 scalar_t__ MVS_SLOT_RUNNING ;
 int SATA_SE ;
 int SATA_SS ;
 struct mvs_channel* device_get_softc (int ) ;
 int device_printf (int ,char*,int,...) ;
 int mvs_process_timeout (int ) ;
 int mvs_requeue_frozen (int ) ;
 int xpt_freeze_simq (int ,int) ;

__attribute__((used)) static void
mvs_timeout(struct mvs_slot *slot)
{
 device_t dev = slot->dev;
 struct mvs_channel *ch = device_get_softc(dev);


 if (slot->state < MVS_SLOT_RUNNING)
  return;
 device_printf(dev, "Timeout on slot %d\n", slot->slot);
 device_printf(dev, "iec %08x sstat %08x serr %08x edma_s %08x "
     "dma_c %08x dma_s %08x rs %08x status %02x\n",
     ATA_INL(ch->r_mem, EDMA_IEC),
     ATA_INL(ch->r_mem, SATA_SS), ATA_INL(ch->r_mem, SATA_SE),
     ATA_INL(ch->r_mem, EDMA_S), ATA_INL(ch->r_mem, DMA_C),
     ATA_INL(ch->r_mem, DMA_S), ch->rslots,
     ATA_INB(ch->r_mem, ATA_ALTSTAT));

 mvs_requeue_frozen(dev);

 if (ch->toslots == 0)
  xpt_freeze_simq(ch->sim, 1);
 ch->toslots |= (1 << slot->slot);
 if ((ch->rslots & ~ch->toslots) == 0)
  mvs_process_timeout(dev);
 else
  device_printf(dev, " ... waiting for slots %08x\n",
      ch->rslots & ~ch->toslots);
}
