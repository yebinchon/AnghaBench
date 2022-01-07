
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_controller {int num_io_queues; int * ioq; int adminq; int is_failed; } ;


 int TRUE ;
 int nvme_admin_qpair_disable (int *) ;
 int nvme_io_qpair_disable (int *) ;
 int nvme_notify_fail_consumers (struct nvme_controller*) ;
 int nvme_qpair_fail (int *) ;

__attribute__((used)) static void
nvme_ctrlr_fail(struct nvme_controller *ctrlr)
{
 int i;

 ctrlr->is_failed = TRUE;
 nvme_admin_qpair_disable(&ctrlr->adminq);
 nvme_qpair_fail(&ctrlr->adminq);
 if (ctrlr->ioq != ((void*)0)) {
  for (i = 0; i < ctrlr->num_io_queues; i++) {
   nvme_io_qpair_disable(&ctrlr->ioq[i]);
   nvme_qpair_fail(&ctrlr->ioq[i]);
  }
 }
 nvme_notify_fail_consumers(ctrlr);
}
