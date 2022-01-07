
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cpl; } ;
struct nvme_controller {int num_io_queues; TYPE_1__* ioq; TYPE_1__ adminq; } ;


 int nvme_qpair_process_completions (TYPE_1__*) ;

void
nvme_ctrlr_poll(struct nvme_controller *ctrlr)
{
 int i;

 nvme_qpair_process_completions(&ctrlr->adminq);

 for (i = 0; i < ctrlr->num_io_queues; i++)
  if (ctrlr->ioq && ctrlr->ioq[i].cpl)
   nvme_qpair_process_completions(&ctrlr->ioq[i]);
}
