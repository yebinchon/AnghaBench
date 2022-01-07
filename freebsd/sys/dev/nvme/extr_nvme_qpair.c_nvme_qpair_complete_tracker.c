
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvme_tracker {struct nvme_request* req; int payload_dma_map; int timer; } ;
struct TYPE_4__ {scalar_t__ cid; } ;
struct nvme_request {scalar_t__ retries; scalar_t__ type; int cb_arg; int (* cb_fn ) (int ,struct nvme_completion*) ;TYPE_2__ cmd; } ;
struct nvme_qpair {int lock; int queued_req; TYPE_1__* ctrlr; int free_tr; int outstanding_tr; int dma_tag_payload; int ** act_tr; int num_failures; int num_retries; } ;
struct nvme_completion {size_t cid; } ;
typedef scalar_t__ error_print_t ;
typedef int boolean_t ;
struct TYPE_3__ {int is_resetting; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 scalar_t__ ERROR_PRINT_ALL ;
 scalar_t__ ERROR_PRINT_NO_RETRY ;
 int KASSERT (int,char*) ;
 scalar_t__ NVME_REQUEST_NULL ;
 int STAILQ_EMPTY (int *) ;
 struct nvme_request* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int TAILQ_INSERT_HEAD (int *,struct nvme_tracker*,int ) ;
 int TAILQ_REMOVE (int *,struct nvme_tracker*,int ) ;
 int _nvme_qpair_submit_request (struct nvme_qpair*,struct nvme_request*) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bus_dmamap_unload (int ,int ) ;
 int callout_stop (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nvme_completion_is_error (struct nvme_completion*) ;
 int nvme_completion_is_retry (struct nvme_completion*) ;
 int nvme_free_request (struct nvme_request*) ;
 int nvme_qpair_print_command (struct nvme_qpair*,TYPE_2__*) ;
 int nvme_qpair_print_completion (struct nvme_qpair*,struct nvme_completion*) ;
 int nvme_qpair_submit_tracker (struct nvme_qpair*,struct nvme_tracker*) ;
 scalar_t__ nvme_retry_count ;
 int stailq ;
 int stub1 (int ,struct nvme_completion*) ;
 int tailq ;

__attribute__((used)) static void
nvme_qpair_complete_tracker(struct nvme_qpair *qpair, struct nvme_tracker *tr,
    struct nvme_completion *cpl, error_print_t print_on_error)
{
 struct nvme_request *req;
 boolean_t retry, error, retriable;

 req = tr->req;
 error = nvme_completion_is_error(cpl);
 retriable = nvme_completion_is_retry(cpl);
 retry = error && retriable && req->retries < nvme_retry_count;
 if (retry)
  qpair->num_retries++;
 if (error && req->retries >= nvme_retry_count && retriable)
  qpair->num_failures++;

 if (error && (print_on_error == ERROR_PRINT_ALL ||
  (!retry && print_on_error == ERROR_PRINT_NO_RETRY))) {
  nvme_qpair_print_command(qpair, &req->cmd);
  nvme_qpair_print_completion(qpair, cpl);
 }

 qpair->act_tr[cpl->cid] = ((void*)0);

 KASSERT(cpl->cid == req->cmd.cid, ("cpl cid does not match cmd cid\n"));

 if (req->cb_fn && !retry)
  req->cb_fn(req->cb_arg, cpl);

 mtx_lock(&qpair->lock);
 callout_stop(&tr->timer);

 if (retry) {
  req->retries++;
  nvme_qpair_submit_tracker(qpair, tr);
 } else {
  if (req->type != NVME_REQUEST_NULL) {
   bus_dmamap_sync(qpair->dma_tag_payload,
       tr->payload_dma_map,
       BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(qpair->dma_tag_payload,
       tr->payload_dma_map);
  }

  nvme_free_request(req);
  tr->req = ((void*)0);

  TAILQ_REMOVE(&qpair->outstanding_tr, tr, tailq);
  TAILQ_INSERT_HEAD(&qpair->free_tr, tr, tailq);






  if (!STAILQ_EMPTY(&qpair->queued_req) &&
      !qpair->ctrlr->is_resetting) {
   req = STAILQ_FIRST(&qpair->queued_req);
   STAILQ_REMOVE_HEAD(&qpair->queued_req, stailq);
   _nvme_qpair_submit_request(qpair, req);
  }
 }

 mtx_unlock(&qpair->lock);
}
