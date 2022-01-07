
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_slot {TYPE_1__* curcmd; } ;
struct TYPE_2__ {int error; } ;


 int MMC_ERR_TIMEOUT ;
 int SDHCI_RESET_CMD ;
 int SDHCI_RESET_DATA ;
 int sdhci_dumpregs (struct sdhci_slot*) ;
 int sdhci_req_done (struct sdhci_slot*) ;
 int sdhci_reset (struct sdhci_slot*,int) ;
 int slot_printf (struct sdhci_slot*,char*) ;

__attribute__((used)) static void
sdhci_timeout(void *arg)
{
 struct sdhci_slot *slot = arg;

 if (slot->curcmd != ((void*)0)) {
  slot_printf(slot, "Controller timeout\n");
  sdhci_dumpregs(slot);
  sdhci_reset(slot, SDHCI_RESET_CMD | SDHCI_RESET_DATA);
  slot->curcmd->error = MMC_ERR_TIMEOUT;
  sdhci_req_done(slot);
 } else {
  slot_printf(slot, "Spurious timeout - no active command\n");
 }
}
