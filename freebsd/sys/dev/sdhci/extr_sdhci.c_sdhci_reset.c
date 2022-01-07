
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct sdhci_slot {int quirks; scalar_t__ power; scalar_t__ clock; int bus; } ;


 int DELAY (int) ;
 int RD1 (struct sdhci_slot*,int ) ;
 int SDHCI_GET_CARD_PRESENT (int ,struct sdhci_slot*) ;
 int SDHCI_QUIRK_CLOCK_BEFORE_RESET ;
 int SDHCI_QUIRK_NO_CARD_NO_RESET ;
 int SDHCI_QUIRK_WAITFOR_RESET_ASSERTED ;
 int SDHCI_RESET_ALL ;
 int SDHCI_SOFTWARE_RESET ;
 int WR1 (struct sdhci_slot*,int ,int) ;
 int sdhci_dumpregs (struct sdhci_slot*) ;
 int sdhci_set_clock (struct sdhci_slot*,scalar_t__) ;
 int slot_printf (struct sdhci_slot*,char*,int) ;

__attribute__((used)) static void
sdhci_reset(struct sdhci_slot *slot, uint8_t mask)
{
 int timeout;
 uint32_t clock;

 if (slot->quirks & SDHCI_QUIRK_NO_CARD_NO_RESET) {
  if (!SDHCI_GET_CARD_PRESENT(slot->bus, slot))
   return;
 }


 if ((mask & SDHCI_RESET_ALL) == 0 &&
     (slot->quirks & SDHCI_QUIRK_CLOCK_BEFORE_RESET)) {

  clock = slot->clock;
  slot->clock = 0;
  sdhci_set_clock(slot, clock);
 }

 if (mask & SDHCI_RESET_ALL) {
  slot->clock = 0;
  slot->power = 0;
 }

 WR1(slot, SDHCI_SOFTWARE_RESET, mask);

 if (slot->quirks & SDHCI_QUIRK_WAITFOR_RESET_ASSERTED) {
  timeout = 10000;
  while ((RD1(slot, SDHCI_SOFTWARE_RESET) & mask) != mask) {
   if (timeout <= 0)
    break;
   timeout--;
   DELAY(1);
  }
 }


 timeout = 10000;

 while (RD1(slot, SDHCI_SOFTWARE_RESET) & mask) {
  if (timeout <= 0) {
   slot_printf(slot, "Reset 0x%x never completed.\n",
       mask);
   sdhci_dumpregs(slot);
   return;
  }
  timeout--;
  DELAY(10);
 }
}
