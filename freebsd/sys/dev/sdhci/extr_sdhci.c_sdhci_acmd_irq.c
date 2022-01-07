
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct sdhci_slot {int curcmd; } ;


 int SDHCI_RESET_CMD ;
 int sdhci_dumpregs (struct sdhci_slot*) ;
 int sdhci_reset (struct sdhci_slot*,int ) ;
 int slot_printf (struct sdhci_slot*,char*,int ) ;

__attribute__((used)) static void
sdhci_acmd_irq(struct sdhci_slot *slot, uint16_t acmd_err)
{

 if (!slot->curcmd) {
  slot_printf(slot, "Got AutoCMD12 error 0x%04x, but "
      "there is no active command.\n", acmd_err);
  sdhci_dumpregs(slot);
  return;
 }
 slot_printf(slot, "Got AutoCMD12 error 0x%04x\n", acmd_err);
 sdhci_reset(slot, SDHCI_RESET_CMD);
}
