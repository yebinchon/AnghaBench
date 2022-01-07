
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_request {int dummy; } ;
struct nvme_controller {int fail_req_task; int taskqueue; int lock; int fail_req; } ;


 int STAILQ_INSERT_TAIL (int *,struct nvme_request*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stailq ;
 int taskqueue_enqueue (int ,int *) ;

void
nvme_ctrlr_post_failed_request(struct nvme_controller *ctrlr,
    struct nvme_request *req)
{

 mtx_lock(&ctrlr->lock);
 STAILQ_INSERT_TAIL(&ctrlr->fail_req, req, stailq);
 mtx_unlock(&ctrlr->lock);
 taskqueue_enqueue(ctrlr->taskqueue, &ctrlr->fail_req_task);
}
