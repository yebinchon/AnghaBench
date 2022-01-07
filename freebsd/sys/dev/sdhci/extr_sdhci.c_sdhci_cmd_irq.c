
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct sdhci_slot {TYPE_1__* curcmd; } ;
struct TYPE_2__ {int error; } ;


 int MMC_ERR_BADCRC ;
 int MMC_ERR_FIFO ;
 int MMC_ERR_TIMEOUT ;
 int SDHCI_INT_CRC ;
 int SDHCI_INT_END_BIT ;
 int SDHCI_INT_INDEX ;
 int SDHCI_INT_TIMEOUT ;
 int sdhci_dumpregs (struct sdhci_slot*) ;
 int sdhci_finish_command (struct sdhci_slot*) ;
 int slot_printf (struct sdhci_slot*,char*,int) ;

__attribute__((used)) static void
sdhci_cmd_irq(struct sdhci_slot *slot, uint32_t intmask)
{

 if (!slot->curcmd) {
  slot_printf(slot, "Got command interrupt 0x%08x, but "
      "there is no active command.\n", intmask);
  sdhci_dumpregs(slot);
  return;
 }
 if (intmask & SDHCI_INT_TIMEOUT)
  slot->curcmd->error = MMC_ERR_TIMEOUT;
 else if (intmask & SDHCI_INT_CRC)
  slot->curcmd->error = MMC_ERR_BADCRC;
 else if (intmask & (SDHCI_INT_END_BIT | SDHCI_INT_INDEX))
  slot->curcmd->error = MMC_ERR_FIFO;

 sdhci_finish_command(slot);
}
