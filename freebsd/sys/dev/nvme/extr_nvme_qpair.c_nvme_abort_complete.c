
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_tracker {size_t cid; TYPE_1__* qpair; } ;
struct nvme_completion {int cdw0; } ;
struct TYPE_2__ {int ctrlr; int ** act_tr; } ;


 int ERROR_PRINT_ALL ;
 int NVME_SCT_GENERIC ;
 int NVME_SC_ABORTED_BY_REQUEST ;
 int nvme_printf (int ,char*) ;
 int nvme_qpair_manual_complete_tracker (TYPE_1__*,struct nvme_tracker*,int ,int ,int ,int ) ;

__attribute__((used)) static void
nvme_abort_complete(void *arg, const struct nvme_completion *status)
{
 struct nvme_tracker *tr = arg;







 if (status->cdw0 == 1 && tr->qpair->act_tr[tr->cid] != ((void*)0)) {





  nvme_printf(tr->qpair->ctrlr,
      "abort command failed, aborting command manually\n");
  nvme_qpair_manual_complete_tracker(tr->qpair, tr,
      NVME_SCT_GENERIC, NVME_SC_ABORTED_BY_REQUEST, 0, ERROR_PRINT_ALL);
 }
}
