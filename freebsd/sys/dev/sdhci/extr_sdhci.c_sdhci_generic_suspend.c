
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_slot {int opt; int retune_callout; } ;


 int SDHCI_LOCK (struct sdhci_slot*) ;
 int SDHCI_RESET_ALL ;
 int SDHCI_TUNING_ENABLED ;
 int SDHCI_UNLOCK (struct sdhci_slot*) ;
 int callout_drain (int *) ;
 int sdhci_reset (struct sdhci_slot*,int ) ;

int
sdhci_generic_suspend(struct sdhci_slot *slot)
{






 callout_drain(&slot->retune_callout);
 SDHCI_LOCK(slot);
 slot->opt &= ~SDHCI_TUNING_ENABLED;
 sdhci_reset(slot, SDHCI_RESET_ALL);
 SDHCI_UNLOCK(slot);

 return (0);
}
