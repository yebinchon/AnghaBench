
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_slot {int retune_req; } ;


 int SDHCI_RETUNE_REQ_NEEDED ;

__attribute__((used)) static void
sdhci_retune(void *arg)
{
 struct sdhci_slot *slot = arg;

 slot->retune_req |= SDHCI_RETUNE_REQ_NEEDED;
}
