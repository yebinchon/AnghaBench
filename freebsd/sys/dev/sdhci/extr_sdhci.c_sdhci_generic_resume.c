
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_slot {int dummy; } ;


 int SDHCI_LOCK (struct sdhci_slot*) ;
 int SDHCI_UNLOCK (struct sdhci_slot*) ;
 int sdhci_init (struct sdhci_slot*) ;

int
sdhci_generic_resume(struct sdhci_slot *slot)
{

 SDHCI_LOCK(slot);
 sdhci_init(slot);
 SDHCI_UNLOCK(slot);

 return (0);
}
