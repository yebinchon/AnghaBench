
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sdhci_slot {scalar_t__ offset; TYPE_1__* curcmd; } ;
struct TYPE_4__ {int flags; scalar_t__ len; } ;
struct TYPE_3__ {TYPE_2__* data; } ;


 int MMC_DATA_READ ;
 int RD4 (struct sdhci_slot*,int ) ;
 int SDHCI_DATA_AVAILABLE ;
 int SDHCI_PRESENT_STATE ;
 int SDHCI_SPACE_AVAILABLE ;
 int sdhci_read_block_pio (struct sdhci_slot*) ;
 int sdhci_write_block_pio (struct sdhci_slot*) ;

__attribute__((used)) static void
sdhci_transfer_pio(struct sdhci_slot *slot)
{


 if (slot->curcmd->data->flags & MMC_DATA_READ) {
  while (RD4(slot, SDHCI_PRESENT_STATE) &
      SDHCI_DATA_AVAILABLE) {
   sdhci_read_block_pio(slot);
   if (slot->offset >= slot->curcmd->data->len)
    break;
  }
 } else {
  while (RD4(slot, SDHCI_PRESENT_STATE) &
      SDHCI_SPACE_AVAILABLE) {
   sdhci_write_block_pio(slot);
   if (slot->offset >= slot->curcmd->data->len)
    break;
  }
 }
}
