
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_qpair {int ctrlr; } ;
struct nvme_controller {int num_io_queues; struct nvme_qpair* ioq; } ;
struct nvme_completion_poll_status {int cpl; scalar_t__ done; } ;


 int ENXIO ;
 scalar_t__ nvme_completion_is_error (int *) ;
 int nvme_completion_poll (struct nvme_completion_poll_status*) ;
 int nvme_completion_poll_cb ;
 int nvme_ctrlr_cmd_create_io_cq (struct nvme_controller*,struct nvme_qpair*,int ,struct nvme_completion_poll_status*) ;
 int nvme_ctrlr_cmd_create_io_sq (int ,struct nvme_qpair*,int ,struct nvme_completion_poll_status*) ;
 int nvme_printf (struct nvme_controller*,char*) ;

__attribute__((used)) static int
nvme_ctrlr_create_qpairs(struct nvme_controller *ctrlr)
{
 struct nvme_completion_poll_status status;
 struct nvme_qpair *qpair;
 int i;

 for (i = 0; i < ctrlr->num_io_queues; i++) {
  qpair = &ctrlr->ioq[i];

  status.done = 0;
  nvme_ctrlr_cmd_create_io_cq(ctrlr, qpair,
      nvme_completion_poll_cb, &status);
  nvme_completion_poll(&status);
  if (nvme_completion_is_error(&status.cpl)) {
   nvme_printf(ctrlr, "nvme_create_io_cq failed!\n");
   return (ENXIO);
  }

  status.done = 0;
  nvme_ctrlr_cmd_create_io_sq(qpair->ctrlr, qpair,
      nvme_completion_poll_cb, &status);
  nvme_completion_poll(&status);
  if (nvme_completion_is_error(&status.cpl)) {
   nvme_printf(ctrlr, "nvme_create_io_sq failed!\n");
   return (ENXIO);
  }
 }

 return (0);
}
