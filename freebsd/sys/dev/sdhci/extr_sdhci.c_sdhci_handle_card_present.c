
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_slot {int dummy; } ;


 int SDHCI_LOCK (struct sdhci_slot*) ;
 int SDHCI_UNLOCK (struct sdhci_slot*) ;
 int sdhci_handle_card_present_locked (struct sdhci_slot*,int) ;

void
sdhci_handle_card_present(struct sdhci_slot *slot, bool is_present)
{

 SDHCI_LOCK(slot);
 sdhci_handle_card_present_locked(slot, is_present);
 SDHCI_UNLOCK(slot);
}
