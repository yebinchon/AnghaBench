
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_request {int dummy; } ;
struct nvme_controller {int adminq; } ;


 int nvme_qpair_submit_request (int *,struct nvme_request*) ;

void
nvme_ctrlr_submit_admin_request(struct nvme_controller *ctrlr,
    struct nvme_request *req)
{

 nvme_qpair_submit_request(&ctrlr->adminq, req);
}
