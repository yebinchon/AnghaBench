
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_slot {int card_present; int card_task; int card_delayed_task; int * dev; } ;


 int SDHCI_INSERT_DELAY_TICKS ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_enqueue_timeout (int ,int *,int ) ;
 int taskqueue_swi_giant ;

__attribute__((used)) static void
sdhci_handle_card_present_locked(struct sdhci_slot *slot, bool is_present)
{
 bool was_present;
 was_present = slot->dev != ((void*)0);

 if (!was_present && is_present) {
  taskqueue_enqueue_timeout(taskqueue_swi_giant,
      &slot->card_delayed_task, -SDHCI_INSERT_DELAY_TICKS);
 } else if (was_present && !is_present) {
  taskqueue_enqueue(taskqueue_swi_giant, &slot->card_task);
 }
}
