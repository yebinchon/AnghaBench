
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nvme_request {int cb_arg; int (* cb_fn ) (int ,struct nvme_completion*) ;int cmd; } ;
struct nvme_qpair {int id; } ;
struct nvme_completion {int status; int sqid; } ;
typedef int cpl ;
typedef scalar_t__ boolean_t ;


 int NVME_STATUS_SCT_MASK ;
 int NVME_STATUS_SCT_SHIFT ;
 int NVME_STATUS_SC_MASK ;
 int NVME_STATUS_SC_SHIFT ;
 int memset (struct nvme_completion*,int ,int) ;
 scalar_t__ nvme_completion_is_error (struct nvme_completion*) ;
 int nvme_free_request (struct nvme_request*) ;
 int nvme_qpair_print_command (struct nvme_qpair*,int *) ;
 int nvme_qpair_print_completion (struct nvme_qpair*,struct nvme_completion*) ;
 int stub1 (int ,struct nvme_completion*) ;

void
nvme_qpair_manual_complete_request(struct nvme_qpair *qpair,
    struct nvme_request *req, uint32_t sct, uint32_t sc)
{
 struct nvme_completion cpl;
 boolean_t error;

 memset(&cpl, 0, sizeof(cpl));
 cpl.sqid = qpair->id;
 cpl.status |= (sct & NVME_STATUS_SCT_MASK) << NVME_STATUS_SCT_SHIFT;
 cpl.status |= (sc & NVME_STATUS_SC_MASK) << NVME_STATUS_SC_SHIFT;

 error = nvme_completion_is_error(&cpl);

 if (error) {
  nvme_qpair_print_command(qpair, &req->cmd);
  nvme_qpair_print_completion(qpair, &cpl);
 }

 if (req->cb_fn)
  req->cb_fn(req->cb_arg, &cpl);

 nvme_free_request(req);
}
