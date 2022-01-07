
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_slot {int opt; int tune_data; int tune_cmd; int tune_req; int bus; int * dev; int card_delayed_task; int card_task; int retune_callout; int card_poll_callout; int timeout_callout; } ;
typedef int * device_t ;


 int M_DEVBUF ;
 int SDHCI_HAVE_DMA ;
 int SDHCI_LOCK (struct sdhci_slot*) ;
 int SDHCI_LOCK_DESTROY (struct sdhci_slot*) ;
 int SDHCI_RESET_ALL ;
 int SDHCI_TUNING_SUPPORTED ;
 int SDHCI_UNLOCK (struct sdhci_slot*) ;
 int callout_drain (int *) ;
 int device_delete_child (int ,int *) ;
 int free (int ,int ) ;
 int sdhci_dma_free (struct sdhci_slot*) ;
 int sdhci_reset (struct sdhci_slot*,int ) ;
 int taskqueue_drain (int ,int *) ;
 int taskqueue_drain_timeout (int ,int *) ;
 int taskqueue_swi_giant ;

int
sdhci_cleanup_slot(struct sdhci_slot *slot)
{
 device_t d;

 callout_drain(&slot->timeout_callout);
 callout_drain(&slot->card_poll_callout);
 callout_drain(&slot->retune_callout);
 taskqueue_drain(taskqueue_swi_giant, &slot->card_task);
 taskqueue_drain_timeout(taskqueue_swi_giant, &slot->card_delayed_task);

 SDHCI_LOCK(slot);
 d = slot->dev;
 slot->dev = ((void*)0);
 SDHCI_UNLOCK(slot);
 if (d != ((void*)0))
  device_delete_child(slot->bus, d);

 SDHCI_LOCK(slot);
 sdhci_reset(slot, SDHCI_RESET_ALL);
 SDHCI_UNLOCK(slot);
 if (slot->opt & SDHCI_HAVE_DMA)
  sdhci_dma_free(slot);
 if (slot->opt & SDHCI_TUNING_SUPPORTED) {
  free(slot->tune_req, M_DEVBUF);
  free(slot->tune_cmd, M_DEVBUF);
  free(slot->tune_data, M_DEVBUF);
 }

 SDHCI_LOCK_DESTROY(slot);

 return (0);
}
