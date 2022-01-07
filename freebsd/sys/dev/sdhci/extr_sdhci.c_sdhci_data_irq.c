
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_char ;
struct sdhci_slot {int opt; int flags; int sdma_bbufsz; size_t offset; int intmask; int paddr; int bus; TYPE_2__* curcmd; int dmamap; int dmatag; int * dmamem; TYPE_1__* req; } ;
struct mmc_data {size_t len; int flags; scalar_t__ data; } ;
struct TYPE_4__ {int flags; scalar_t__ error; scalar_t__ opcode; struct mmc_data* data; } ;
struct TYPE_3__ {int flags; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int MMC_DATA_READ ;
 scalar_t__ MMC_ERR_BADCRC ;
 scalar_t__ MMC_ERR_INVALID ;
 scalar_t__ MMC_ERR_TIMEOUT ;
 int MMC_RSP_BUSY ;
 scalar_t__ MMC_SEND_TUNING_BLOCK ;
 scalar_t__ MMC_SEND_TUNING_BLOCK_HS200 ;
 int MMC_TUNE_DONE ;
 int PLATFORM_DATA_STARTED ;
 int SDHCI_DMA_ADDRESS ;
 int SDHCI_INT_DATA_AVAIL ;
 int SDHCI_INT_DATA_CRC ;
 int SDHCI_INT_DATA_END ;
 int SDHCI_INT_DATA_END_BIT ;
 int SDHCI_INT_DATA_TIMEOUT ;
 int SDHCI_INT_DMA_END ;
 int SDHCI_INT_SPACE_AVAIL ;
 int SDHCI_PLATFORM_FINISH_TRANSFER (int ,struct sdhci_slot*) ;
 int SDHCI_PLATFORM_START_TRANSFER (int ,struct sdhci_slot*,int*) ;
 int SDHCI_PLATFORM_TRANSFER ;
 scalar_t__ SDHCI_PLATFORM_WILL_HANDLE (int ,struct sdhci_slot*) ;
 int SDHCI_SIGNAL_ENABLE ;
 int WR4 (struct sdhci_slot*,int ,int) ;
 scalar_t__ __predict_false (int) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int memcpy (int *,int *,int ) ;
 int sdhci_dumpregs (struct sdhci_slot*) ;
 int sdhci_finish_command (struct sdhci_slot*) ;
 int sdhci_finish_data (struct sdhci_slot*) ;
 int sdhci_transfer_pio (struct sdhci_slot*) ;
 int slot_printf (struct sdhci_slot*,char*,int) ;
 int ulmin (size_t,int) ;

__attribute__((used)) static void
sdhci_data_irq(struct sdhci_slot *slot, uint32_t intmask)
{
 struct mmc_data *data;
 size_t left;
 uint32_t sdma_bbufsz;

 if (!slot->curcmd) {
  slot_printf(slot, "Got data interrupt 0x%08x, but "
      "there is no active command.\n", intmask);
  sdhci_dumpregs(slot);
  return;
 }
 if (slot->curcmd->data == ((void*)0) &&
     (slot->curcmd->flags & MMC_RSP_BUSY) == 0) {
  slot_printf(slot, "Got data interrupt 0x%08x, but "
      "there is no active data operation.\n",
      intmask);
  sdhci_dumpregs(slot);
  return;
 }
 if (intmask & SDHCI_INT_DATA_TIMEOUT)
  slot->curcmd->error = MMC_ERR_TIMEOUT;
 else if (intmask & (SDHCI_INT_DATA_CRC | SDHCI_INT_DATA_END_BIT))
  slot->curcmd->error = MMC_ERR_BADCRC;
 if (slot->curcmd->data == ((void*)0) &&
     (intmask & (SDHCI_INT_DATA_AVAIL | SDHCI_INT_SPACE_AVAIL |
     SDHCI_INT_DMA_END))) {
  slot_printf(slot, "Got data interrupt 0x%08x, but "
      "there is busy-only command.\n", intmask);
  sdhci_dumpregs(slot);
  slot->curcmd->error = MMC_ERR_INVALID;
 }
 if (slot->curcmd->error) {

  goto done;
 }


 if (__predict_false((intmask & SDHCI_INT_DATA_AVAIL) &&
     (slot->curcmd->opcode == MMC_SEND_TUNING_BLOCK ||
     slot->curcmd->opcode == MMC_SEND_TUNING_BLOCK_HS200))) {
  slot->req->flags |= MMC_TUNE_DONE;
  sdhci_finish_command(slot);
  sdhci_finish_data(slot);
  return;
 }

 if (intmask & (SDHCI_INT_DATA_AVAIL | SDHCI_INT_SPACE_AVAIL)) {
  if ((slot->opt & SDHCI_PLATFORM_TRANSFER) &&
      SDHCI_PLATFORM_WILL_HANDLE(slot->bus, slot)) {
   SDHCI_PLATFORM_START_TRANSFER(slot->bus, slot,
       &intmask);
   slot->flags |= PLATFORM_DATA_STARTED;
  } else
   sdhci_transfer_pio(slot);
 }

 if (intmask & SDHCI_INT_DMA_END) {
  data = slot->curcmd->data;
  sdma_bbufsz = slot->sdma_bbufsz;


  left = data->len - slot->offset;
  if (data->flags & MMC_DATA_READ) {
   bus_dmamap_sync(slot->dmatag, slot->dmamap,
       BUS_DMASYNC_POSTREAD);
   memcpy((u_char*)data->data + slot->offset, slot->dmamem,
       ulmin(left, sdma_bbufsz));
  } else {
   bus_dmamap_sync(slot->dmatag, slot->dmamap,
       BUS_DMASYNC_POSTWRITE);
  }

  slot->offset += sdma_bbufsz;
  left = data->len - slot->offset;
  if (data->flags & MMC_DATA_READ) {
   bus_dmamap_sync(slot->dmatag, slot->dmamap,
       BUS_DMASYNC_PREREAD);
  } else {
   memcpy(slot->dmamem, (u_char*)data->data + slot->offset,
       ulmin(left, sdma_bbufsz));
   bus_dmamap_sync(slot->dmatag, slot->dmamap,
       BUS_DMASYNC_PREWRITE);
  }




  if (left == sdma_bbufsz) {
   slot->intmask &= ~SDHCI_INT_DMA_END;
   WR4(slot, SDHCI_SIGNAL_ENABLE, slot->intmask);
  }

  WR4(slot, SDHCI_DMA_ADDRESS, slot->paddr);
 }

 if (intmask & SDHCI_INT_DATA_END) {
  if (slot->flags & PLATFORM_DATA_STARTED) {
   slot->flags &= ~PLATFORM_DATA_STARTED;
   SDHCI_PLATFORM_FINISH_TRANSFER(slot->bus, slot);
  } else
   sdhci_finish_data(slot);
 }
done:
 if (slot->curcmd != ((void*)0) && slot->curcmd->error != 0) {
  if (slot->flags & PLATFORM_DATA_STARTED) {
   slot->flags &= ~PLATFORM_DATA_STARTED;
   SDHCI_PLATFORM_FINISH_TRANSFER(slot->bus, slot);
  } else
   sdhci_finish_data(slot);
 }
}
