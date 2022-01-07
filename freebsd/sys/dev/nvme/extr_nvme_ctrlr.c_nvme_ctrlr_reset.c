
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_controller {int reset_task; int taskqueue; scalar_t__ is_failed; int is_resetting; } ;


 int atomic_cmpset_32 (int *,int ,int) ;
 int taskqueue_enqueue (int ,int *) ;

void
nvme_ctrlr_reset(struct nvme_controller *ctrlr)
{
 int cmpset;

 cmpset = atomic_cmpset_32(&ctrlr->is_resetting, 0, 1);

 if (cmpset == 0 || ctrlr->is_failed)





  return;

 taskqueue_enqueue(ctrlr->taskqueue, &ctrlr->reset_task);
}
