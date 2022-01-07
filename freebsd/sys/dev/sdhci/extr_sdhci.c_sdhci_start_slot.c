
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_slot {int dummy; } ;


 int sdhci_card_task (struct sdhci_slot*,int ) ;

void
sdhci_start_slot(struct sdhci_slot *slot)
{

 sdhci_card_task(slot, 0);
}
