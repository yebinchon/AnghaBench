
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_controller {int num_io_queues; } ;
struct TYPE_2__ {int cdw0; } ;
struct nvme_completion_poll_status {TYPE_1__ cpl; scalar_t__ done; } ;


 int ENXIO ;
 void* min (int,int) ;
 scalar_t__ nvme_completion_is_error (TYPE_1__*) ;
 int nvme_completion_poll (struct nvme_completion_poll_status*) ;
 int nvme_completion_poll_cb ;
 int nvme_ctrlr_cmd_set_num_queues (struct nvme_controller*,int,int ,struct nvme_completion_poll_status*) ;
 int nvme_printf (struct nvme_controller*,char*) ;
 int vm_ndomains ;

__attribute__((used)) static int
nvme_ctrlr_set_num_qpairs(struct nvme_controller *ctrlr)
{
 struct nvme_completion_poll_status status;
 int cq_allocated, sq_allocated;

 status.done = 0;
 nvme_ctrlr_cmd_set_num_queues(ctrlr, ctrlr->num_io_queues,
     nvme_completion_poll_cb, &status);
 nvme_completion_poll(&status);
 if (nvme_completion_is_error(&status.cpl)) {
  nvme_printf(ctrlr, "nvme_ctrlr_set_num_qpairs failed!\n");
  return (ENXIO);
 }






 sq_allocated = (status.cpl.cdw0 & 0xFFFF) + 1;
 cq_allocated = (status.cpl.cdw0 >> 16) + 1;






 ctrlr->num_io_queues = min(ctrlr->num_io_queues, sq_allocated);
 ctrlr->num_io_queues = min(ctrlr->num_io_queues, cq_allocated);
 if (ctrlr->num_io_queues > vm_ndomains)
  ctrlr->num_io_queues -= ctrlr->num_io_queues % vm_ndomains;

 return (0);
}
