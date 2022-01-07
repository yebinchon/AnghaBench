
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_request {int dummy; } ;
struct nvme_qpair {int dummy; } ;
struct nvme_controller {struct nvme_qpair* ioq; } ;


 size_t QP (struct nvme_controller*,int ) ;
 int curcpu ;
 int nvme_qpair_submit_request (struct nvme_qpair*,struct nvme_request*) ;

void
nvme_ctrlr_submit_io_request(struct nvme_controller *ctrlr,
    struct nvme_request *req)
{
 struct nvme_qpair *qpair;

 qpair = &ctrlr->ioq[QP(ctrlr, curcpu)];
 nvme_qpair_submit_request(qpair, req);
}
