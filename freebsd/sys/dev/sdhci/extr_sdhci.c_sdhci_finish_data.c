
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct sdhci_slot {int data_done; int flags; size_t offset; scalar_t__ cmd_done; int retune_req; TYPE_1__* curcmd; int dmamap; int dmatag; int sdma_bbufsz; int dmamem; int intmask; } ;
struct mmc_data {int flags; size_t len; scalar_t__ data; } ;
struct TYPE_2__ {scalar_t__ error; struct mmc_data* data; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int MMC_DATA_READ ;
 scalar_t__ MMC_ERR_BADCRC ;
 int SDHCI_INT_RESPONSE ;
 int SDHCI_RESET_CMD ;
 int SDHCI_RESET_DATA ;
 int SDHCI_RETUNE_REQ_RESET ;
 int SDHCI_SIGNAL_ENABLE ;
 int SDHCI_USE_DMA ;
 int WR4 (struct sdhci_slot*,int ,int) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int memcpy (int *,int ,int ) ;
 int sdhci_reset (struct sdhci_slot*,int ) ;
 int sdhci_start (struct sdhci_slot*) ;
 int ulmin (size_t,int ) ;

void
sdhci_finish_data(struct sdhci_slot *slot)
{
 struct mmc_data *data = slot->curcmd->data;
 size_t left;




 if (!slot->cmd_done) {
  WR4(slot, SDHCI_SIGNAL_ENABLE,
      slot->intmask |= SDHCI_INT_RESPONSE);
 }

 if (!slot->data_done && (slot->flags & SDHCI_USE_DMA) &&
     slot->curcmd->data != ((void*)0)) {
  if (data->flags & MMC_DATA_READ) {
   left = data->len - slot->offset;
   bus_dmamap_sync(slot->dmatag, slot->dmamap,
       BUS_DMASYNC_POSTREAD);
   memcpy((u_char*)data->data + slot->offset, slot->dmamem,
       ulmin(left, slot->sdma_bbufsz));
  } else
   bus_dmamap_sync(slot->dmatag, slot->dmamap,
       BUS_DMASYNC_POSTWRITE);
 }
 slot->data_done = 1;

 if (slot->curcmd->error) {
  if (slot->curcmd->error == MMC_ERR_BADCRC)
   slot->retune_req |= SDHCI_RETUNE_REQ_RESET;
  sdhci_reset(slot, SDHCI_RESET_CMD);
  sdhci_reset(slot, SDHCI_RESET_DATA);
  sdhci_start(slot);
  return;
 }

 if (slot->cmd_done)
  sdhci_start(slot);
}
