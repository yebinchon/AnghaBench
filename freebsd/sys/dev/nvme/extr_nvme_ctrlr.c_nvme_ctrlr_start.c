
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nvme_controller {int num_io_queues; int * ioq; int adminq; } ;


 int nvme_admin_qpair_enable (int *) ;
 int nvme_ctrlr_configure_aer (struct nvme_controller*) ;
 int nvme_ctrlr_configure_int_coalescing (struct nvme_controller*) ;
 scalar_t__ nvme_ctrlr_construct_namespaces (struct nvme_controller*) ;
 scalar_t__ nvme_ctrlr_create_qpairs (struct nvme_controller*) ;
 int nvme_ctrlr_fail (struct nvme_controller*) ;
 scalar_t__ nvme_ctrlr_identify (struct nvme_controller*) ;
 scalar_t__ nvme_ctrlr_set_num_qpairs (struct nvme_controller*) ;
 int nvme_io_qpair_enable (int *) ;
 int nvme_qpair_reset (int *) ;
 int panic (char*,int,int) ;

__attribute__((used)) static void
nvme_ctrlr_start(void *ctrlr_arg, bool resetting)
{
 struct nvme_controller *ctrlr = ctrlr_arg;
 uint32_t old_num_io_queues;
 int i;
 if (resetting)
  nvme_qpair_reset(&ctrlr->adminq);

 for (i = 0; i < ctrlr->num_io_queues; i++)
  nvme_qpair_reset(&ctrlr->ioq[i]);

 nvme_admin_qpair_enable(&ctrlr->adminq);

 if (nvme_ctrlr_identify(ctrlr) != 0) {
  nvme_ctrlr_fail(ctrlr);
  return;
 }
 if (resetting) {
  old_num_io_queues = ctrlr->num_io_queues;
  if (nvme_ctrlr_set_num_qpairs(ctrlr) != 0) {
   nvme_ctrlr_fail(ctrlr);
   return;
  }

  if (old_num_io_queues != ctrlr->num_io_queues) {
   panic("num_io_queues changed from %u to %u",
         old_num_io_queues, ctrlr->num_io_queues);
  }
 }

 if (nvme_ctrlr_create_qpairs(ctrlr) != 0) {
  nvme_ctrlr_fail(ctrlr);
  return;
 }

 if (nvme_ctrlr_construct_namespaces(ctrlr) != 0) {
  nvme_ctrlr_fail(ctrlr);
  return;
 }

 nvme_ctrlr_configure_aer(ctrlr);
 nvme_ctrlr_configure_int_coalescing(ctrlr);

 for (i = 0; i < ctrlr->num_io_queues; i++)
  nvme_io_qpair_enable(&ctrlr->ioq[i]);
}
