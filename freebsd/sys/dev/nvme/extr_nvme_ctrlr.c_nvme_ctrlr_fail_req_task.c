
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_request {int qpair; } ;
struct nvme_controller {int lock; int fail_req; } ;


 int NVME_SCT_GENERIC ;
 int NVME_SC_ABORTED_BY_REQUEST ;
 struct nvme_request* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nvme_qpair_manual_complete_request (int ,struct nvme_request*,int ,int ) ;
 int stailq ;

__attribute__((used)) static void
nvme_ctrlr_fail_req_task(void *arg, int pending)
{
 struct nvme_controller *ctrlr = arg;
 struct nvme_request *req;

 mtx_lock(&ctrlr->lock);
 while ((req = STAILQ_FIRST(&ctrlr->fail_req)) != ((void*)0)) {
  STAILQ_REMOVE_HEAD(&ctrlr->fail_req, stailq);
  mtx_unlock(&ctrlr->lock);
  nvme_qpair_manual_complete_request(req->qpair, req,
      NVME_SCT_GENERIC, NVME_SC_ABORTED_BY_REQUEST);
  mtx_lock(&ctrlr->lock);
 }
 mtx_unlock(&ctrlr->lock);
}
