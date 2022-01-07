
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_slot {int intmask; int quirks; int opt; } ;


 int SDHCI_INT_ACMD12ERR ;
 int SDHCI_INT_BUS_POWER ;
 int SDHCI_INT_CARD_INSERT ;
 int SDHCI_INT_CARD_REMOVE ;
 int SDHCI_INT_CRC ;
 int SDHCI_INT_DATA_AVAIL ;
 int SDHCI_INT_DATA_CRC ;
 int SDHCI_INT_DATA_END ;
 int SDHCI_INT_DATA_END_BIT ;
 int SDHCI_INT_DATA_TIMEOUT ;
 int SDHCI_INT_DMA_END ;
 int SDHCI_INT_ENABLE ;
 int SDHCI_INT_END_BIT ;
 int SDHCI_INT_INDEX ;
 int SDHCI_INT_RESPONSE ;
 int SDHCI_INT_SPACE_AVAIL ;
 int SDHCI_INT_TIMEOUT ;
 int SDHCI_NON_REMOVABLE ;
 int SDHCI_QUIRK_POLL_CARD_PRESENT ;
 int SDHCI_RESET_ALL ;
 int SDHCI_SIGNAL_ENABLE ;
 int WR4 (struct sdhci_slot*,int ,int) ;
 int sdhci_reset (struct sdhci_slot*,int ) ;

__attribute__((used)) static void
sdhci_init(struct sdhci_slot *slot)
{

 sdhci_reset(slot, SDHCI_RESET_ALL);


 slot->intmask = SDHCI_INT_BUS_POWER | SDHCI_INT_DATA_END_BIT |
     SDHCI_INT_DATA_CRC | SDHCI_INT_DATA_TIMEOUT | SDHCI_INT_INDEX |
     SDHCI_INT_END_BIT | SDHCI_INT_CRC | SDHCI_INT_TIMEOUT |
     SDHCI_INT_DATA_AVAIL | SDHCI_INT_SPACE_AVAIL |
     SDHCI_INT_DMA_END | SDHCI_INT_DATA_END | SDHCI_INT_RESPONSE |
     SDHCI_INT_ACMD12ERR;

 if (!(slot->quirks & SDHCI_QUIRK_POLL_CARD_PRESENT) &&
     !(slot->opt & SDHCI_NON_REMOVABLE)) {
  slot->intmask |= SDHCI_INT_CARD_REMOVE | SDHCI_INT_CARD_INSERT;
 }

 WR4(slot, SDHCI_INT_ENABLE, slot->intmask);
 WR4(slot, SDHCI_SIGNAL_ENABLE, slot->intmask);
}
