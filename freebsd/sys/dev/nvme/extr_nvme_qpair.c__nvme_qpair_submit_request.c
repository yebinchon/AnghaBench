
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct nvme_tracker {int payload_dma_map; TYPE_2__* qpair; struct nvme_request* req; } ;
struct TYPE_6__ {int payload; TYPE_5__* bio; } ;
struct nvme_request {int type; TYPE_1__ u; int payload_size; struct nvme_qpair* qpair; } ;
struct nvme_qpair {int lock; TYPE_3__* ctrlr; int outstanding_tr; int free_tr; int queued_req; int is_enabled; } ;
typedef int intmax_t ;
struct TYPE_9__ {int bio_bcount; } ;
struct TYPE_8__ {int max_xfer_size; scalar_t__ is_failed; } ;
struct TYPE_7__ {int dma_tag_payload; } ;


 int DO_NOT_RETRY ;
 int ERROR_PRINT_ALL ;
 int KASSERT (int,char*) ;
 int MA_OWNED ;




 int NVME_SCT_GENERIC ;
 int NVME_SC_DATA_TRANSFER_ERROR ;
 int STAILQ_INSERT_TAIL (int *,struct nvme_request*,int ) ;
 struct nvme_tracker* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct nvme_tracker*,int ) ;
 int TAILQ_REMOVE (int *,struct nvme_tracker*,int ) ;
 int bus_dmamap_load (int ,int ,int ,int ,int ,struct nvme_tracker*,int ) ;
 int bus_dmamap_load_bio (int ,int ,TYPE_5__*,int ,struct nvme_tracker*,int ) ;
 int bus_dmamap_load_ccb (int ,int ,int ,int ,struct nvme_tracker*,int ) ;
 int mtx_assert (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nvme_ctrlr_post_failed_request (TYPE_3__*,struct nvme_request*) ;
 int nvme_payload_map ;
 int nvme_printf (TYPE_3__*,char*,int) ;
 int nvme_qpair_manual_complete_tracker (struct nvme_qpair*,struct nvme_tracker*,int ,int ,int ,int ) ;
 int nvme_qpair_submit_tracker (TYPE_2__*,struct nvme_tracker*) ;
 int panic (char*,int) ;
 int stailq ;
 int tailq ;

__attribute__((used)) static void
_nvme_qpair_submit_request(struct nvme_qpair *qpair, struct nvme_request *req)
{
 struct nvme_tracker *tr;
 int err = 0;

 mtx_assert(&qpair->lock, MA_OWNED);

 tr = TAILQ_FIRST(&qpair->free_tr);
 req->qpair = qpair;

 if (tr == ((void*)0) || !qpair->is_enabled) {






  if (qpair->ctrlr->is_failed) {






   nvme_ctrlr_post_failed_request(qpair->ctrlr, req);
  } else {






   STAILQ_INSERT_TAIL(&qpair->queued_req, req, stailq);
  }
  return;
 }

 TAILQ_REMOVE(&qpair->free_tr, tr, tailq);
 TAILQ_INSERT_TAIL(&qpair->outstanding_tr, tr, tailq);
 tr->req = req;

 switch (req->type) {
 case 128:
  KASSERT(req->payload_size <= qpair->ctrlr->max_xfer_size,
      ("payload_size (%d) exceeds max_xfer_size (%d)\n",
      req->payload_size, qpair->ctrlr->max_xfer_size));
  err = bus_dmamap_load(tr->qpair->dma_tag_payload,
      tr->payload_dma_map, req->u.payload, req->payload_size,
      nvme_payload_map, tr, 0);
  if (err != 0)
   nvme_printf(qpair->ctrlr,
       "bus_dmamap_load returned 0x%x!\n", err);
  break;
 case 129:
  nvme_qpair_submit_tracker(tr->qpair, tr);
  break;
 case 131:
  KASSERT(req->u.bio->bio_bcount <= qpair->ctrlr->max_xfer_size,
      ("bio->bio_bcount (%jd) exceeds max_xfer_size (%d)\n",
      (intmax_t)req->u.bio->bio_bcount,
      qpair->ctrlr->max_xfer_size));
  err = bus_dmamap_load_bio(tr->qpair->dma_tag_payload,
      tr->payload_dma_map, req->u.bio, nvme_payload_map, tr, 0);
  if (err != 0)
   nvme_printf(qpair->ctrlr,
       "bus_dmamap_load_bio returned 0x%x!\n", err);
  break;
 case 130:
  err = bus_dmamap_load_ccb(tr->qpair->dma_tag_payload,
      tr->payload_dma_map, req->u.payload,
      nvme_payload_map, tr, 0);
  if (err != 0)
   nvme_printf(qpair->ctrlr,
       "bus_dmamap_load_ccb returned 0x%x!\n", err);
  break;
 default:
  panic("unknown nvme request type 0x%x\n", req->type);
  break;
 }

 if (err != 0) {







  mtx_unlock(&qpair->lock);
  nvme_qpair_manual_complete_tracker(qpair, tr, NVME_SCT_GENERIC,
      NVME_SC_DATA_TRANSFER_ERROR, DO_NOT_RETRY, ERROR_PRINT_ALL);
  mtx_lock(&qpair->lock);
 }
}
