
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_tracker {int dummy; } ;
struct nvme_request {int dummy; } ;
struct nvme_qpair {int lock; int ctrlr; int outstanding_tr; int queued_req; } ;


 int DO_NOT_RETRY ;
 int ERROR_PRINT_ALL ;
 int NVME_SCT_GENERIC ;
 int NVME_SC_ABORTED_BY_REQUEST ;
 int STAILQ_EMPTY (int *) ;
 struct nvme_request* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int TAILQ_EMPTY (int *) ;
 struct nvme_tracker* TAILQ_FIRST (int *) ;
 int mtx_initialized (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nvme_printf (int ,char*) ;
 int nvme_qpair_manual_complete_request (struct nvme_qpair*,struct nvme_request*,int ,int ) ;
 int nvme_qpair_manual_complete_tracker (struct nvme_qpair*,struct nvme_tracker*,int ,int ,int ,int ) ;
 int stailq ;

void
nvme_qpair_fail(struct nvme_qpair *qpair)
{
 struct nvme_tracker *tr;
 struct nvme_request *req;

 if (!mtx_initialized(&qpair->lock))
  return;

 mtx_lock(&qpair->lock);

 while (!STAILQ_EMPTY(&qpair->queued_req)) {
  req = STAILQ_FIRST(&qpair->queued_req);
  STAILQ_REMOVE_HEAD(&qpair->queued_req, stailq);
  nvme_printf(qpair->ctrlr, "failing queued i/o\n");
  mtx_unlock(&qpair->lock);
  nvme_qpair_manual_complete_request(qpair, req, NVME_SCT_GENERIC,
      NVME_SC_ABORTED_BY_REQUEST);
  mtx_lock(&qpair->lock);
 }


 while (!TAILQ_EMPTY(&qpair->outstanding_tr)) {
  tr = TAILQ_FIRST(&qpair->outstanding_tr);




  nvme_printf(qpair->ctrlr, "failing outstanding i/o\n");
  mtx_unlock(&qpair->lock);
  nvme_qpair_manual_complete_tracker(qpair, tr, NVME_SCT_GENERIC,
      NVME_SC_ABORTED_BY_REQUEST, DO_NOT_RETRY, ERROR_PRINT_ALL);
  mtx_lock(&qpair->lock);
 }

 mtx_unlock(&qpair->lock);
}
