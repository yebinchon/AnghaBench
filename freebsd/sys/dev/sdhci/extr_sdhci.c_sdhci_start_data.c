
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct sdhci_slot {int data_done; int quirks; int timeout_clk; int opt; int flags; int sdma_bbufsz; int sdma_boundary; scalar_t__ offset; int intmask; int paddr; int dmamap; int dmatag; int dmamem; TYPE_1__* curcmd; } ;
struct mmc_data {int len; int flags; int block_count; int block_size; int data; } ;
struct TYPE_2__ {int flags; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int MMC_DATA_BLOCK_SIZE ;
 int MMC_DATA_READ ;
 int MMC_RSP_BUSY ;
 int SDHCI_BLOCK_COUNT ;
 int SDHCI_BLOCK_SIZE ;
 int SDHCI_DMA_ADDRESS ;
 int SDHCI_HAVE_DMA ;
 int SDHCI_INT_DMA_END ;
 int SDHCI_MAKE_BLKSZ (int ,int ) ;
 int SDHCI_QUIRK_32BIT_DMA_SIZE ;
 int SDHCI_QUIRK_BROKEN_TIMEOUT_VAL ;
 int SDHCI_QUIRK_BROKEN_TIMINGS ;
 int SDHCI_QUIRK_INCR_TIMEOUT_CONTROL ;
 int SDHCI_SIGNAL_ENABLE ;
 int SDHCI_TIMEOUT_CONTROL ;
 int SDHCI_USE_DMA ;
 int WR1 (struct sdhci_slot*,int ,int) ;
 int WR2 (struct sdhci_slot*,int ,int) ;
 int WR4 (struct sdhci_slot*,int ,int ) ;
 scalar_t__ __predict_false (int) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int howmany (int,int) ;
 int memcpy (int ,int ,int ) ;
 int sdhci_debug ;
 int slot_printf (struct sdhci_slot*,char*,int,int) ;
 int ulmin (int,int) ;

__attribute__((used)) static void
sdhci_start_data(struct sdhci_slot *slot, const struct mmc_data *data)
{
 uint32_t blkcnt, blksz, current_timeout, sdma_bbufsz, target_timeout;
 uint8_t div;

 if (data == ((void*)0) && (slot->curcmd->flags & MMC_RSP_BUSY) == 0) {
  slot->data_done = 1;
  return;
 }

 slot->data_done = 0;



 if (slot->quirks & SDHCI_QUIRK_BROKEN_TIMEOUT_VAL) {
  div = 0xE;
 } else {
  target_timeout = 1000000;
  div = 0;
  current_timeout = (1 << 13) * 1000 / slot->timeout_clk;
  while (current_timeout < target_timeout && div < 0xE) {
   ++div;
   current_timeout <<= 1;
  }

  if (div < 0xE &&
      (slot->quirks & SDHCI_QUIRK_INCR_TIMEOUT_CONTROL)) {
   ++div;
  }
 }
 WR1(slot, SDHCI_TIMEOUT_CONTROL, div);

 if (data == ((void*)0))
  return;


 if ((slot->opt & SDHCI_HAVE_DMA))
  slot->flags |= SDHCI_USE_DMA;

 if ((slot->quirks & SDHCI_QUIRK_BROKEN_TIMINGS) &&
     (data->len <= 512))
  slot->flags &= ~SDHCI_USE_DMA;

 if ((slot->quirks & SDHCI_QUIRK_32BIT_DMA_SIZE) &&
     ((data->len) & 0x3))
  slot->flags &= ~SDHCI_USE_DMA;

 if (slot->flags & SDHCI_USE_DMA) {
  sdma_bbufsz = slot->sdma_bbufsz;
  if (data->flags & MMC_DATA_READ)
   bus_dmamap_sync(slot->dmatag, slot->dmamap,
       BUS_DMASYNC_PREREAD);
  else {
   memcpy(slot->dmamem, data->data, ulmin(data->len,
       sdma_bbufsz));
   bus_dmamap_sync(slot->dmatag, slot->dmamap,
       BUS_DMASYNC_PREWRITE);
  }
  WR4(slot, SDHCI_DMA_ADDRESS, slot->paddr);




  if (data->len == sdma_bbufsz)
   slot->intmask &= ~SDHCI_INT_DMA_END;
  else
   slot->intmask |= SDHCI_INT_DMA_END;
  WR4(slot, SDHCI_SIGNAL_ENABLE, slot->intmask);
 }

 slot->offset = 0;
 {

  blksz = SDHCI_MAKE_BLKSZ(slot->sdma_boundary, ulmin(data->len, 512));
  blkcnt = howmany(data->len, 512);
 }

 WR2(slot, SDHCI_BLOCK_SIZE, blksz);
 WR2(slot, SDHCI_BLOCK_COUNT, blkcnt);
 if (__predict_false(sdhci_debug > 1))
  slot_printf(slot, "Blk size: 0x%08x | Blk cnt:  0x%08x\n",
      blksz, blkcnt);
}
