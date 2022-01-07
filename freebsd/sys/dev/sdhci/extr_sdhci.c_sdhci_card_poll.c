
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_slot {int card_poll_callout; int bus; } ;


 int SDHCI_CARD_PRESENT_TICKS ;
 int SDHCI_GET_CARD_PRESENT (int ,struct sdhci_slot*) ;
 int callout_reset (int *,int ,void (*) (void*),struct sdhci_slot*) ;
 int sdhci_handle_card_present (struct sdhci_slot*,int ) ;

__attribute__((used)) static void
sdhci_card_poll(void *arg)
{
 struct sdhci_slot *slot = arg;

 sdhci_handle_card_present(slot,
     SDHCI_GET_CARD_PRESENT(slot->bus, slot));
 callout_reset(&slot->card_poll_callout, SDHCI_CARD_PRESENT_TICKS,
     sdhci_card_poll, slot);
}
