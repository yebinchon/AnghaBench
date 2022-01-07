
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct sdhci_slot {int quirks; int flags; TYPE_4__* req; TYPE_3__* ccb; } ;
struct mmc_data {int len; int block_count; int flags; } ;
struct TYPE_8__ {int * stop; } ;
struct TYPE_5__ {scalar_t__ opcode; } ;
struct TYPE_6__ {TYPE_1__ stop; } ;
struct TYPE_7__ {TYPE_2__ mmcio; } ;


 int MMC_DATA_READ ;
 scalar_t__ MMC_STOP_TRANSMISSION ;
 int SDHCI_QUIRK_BROKEN_AUTO_STOP ;
 int SDHCI_TRANSFER_MODE ;
 int SDHCI_TRNS_ACMD12 ;
 int SDHCI_TRNS_BLK_CNT_EN ;
 int SDHCI_TRNS_DMA ;
 int SDHCI_TRNS_MULTI ;
 int SDHCI_TRNS_READ ;
 int SDHCI_USE_DMA ;
 int WR2 (struct sdhci_slot*,int ,int ) ;
 scalar_t__ __predict_true (int) ;

__attribute__((used)) static void
sdhci_set_transfer_mode(struct sdhci_slot *slot, const struct mmc_data *data)
{
 uint16_t mode;

 if (data == ((void*)0))
  return;

 mode = SDHCI_TRNS_BLK_CNT_EN;
 if (data->len > 512 || data->block_count > 1) {
  mode |= SDHCI_TRNS_MULTI;
  if (data->block_count == 0 && __predict_true(



      slot->req->stop != ((void*)0) &&

      !(slot->quirks & SDHCI_QUIRK_BROKEN_AUTO_STOP)))
   mode |= SDHCI_TRNS_ACMD12;
 }
 if (data->flags & MMC_DATA_READ)
  mode |= SDHCI_TRNS_READ;
 if (slot->flags & SDHCI_USE_DMA)
  mode |= SDHCI_TRNS_DMA;

 WR2(slot, SDHCI_TRANSFER_MODE, mode);
}
