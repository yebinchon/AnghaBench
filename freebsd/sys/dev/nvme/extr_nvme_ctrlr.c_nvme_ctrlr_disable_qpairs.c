
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_controller {int num_io_queues; int * ioq; scalar_t__ is_initialized; int adminq; } ;


 int nvme_admin_qpair_disable (int *) ;
 int nvme_io_qpair_disable (int *) ;

__attribute__((used)) static void
nvme_ctrlr_disable_qpairs(struct nvme_controller *ctrlr)
{
 int i;

 nvme_admin_qpair_disable(&ctrlr->adminq);





 if (ctrlr->is_initialized) {
  for (i = 0; i < ctrlr->num_io_queues; i++)
   nvme_io_qpair_disable(&ctrlr->ioq[i]);
 }
}
