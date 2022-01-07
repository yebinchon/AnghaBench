
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_tracker {int payload_dma_map; } ;
struct nvme_qpair {scalar_t__ dma_tag_payload; scalar_t__ dma_tag; int free_tr; struct nvme_tracker* act_tr; int queuemem_map; int * cmd; scalar_t__ res; TYPE_1__* ctrlr; int lock; scalar_t__ tag; } ;
struct TYPE_2__ {int dev; } ;


 int M_NVME ;
 int SYS_RES_IRQ ;
 int TAILQ_EMPTY (int *) ;
 struct nvme_tracker* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct nvme_tracker*,int ) ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_dmamap_destroy (scalar_t__,int ) ;
 int bus_dmamap_unload (scalar_t__,int ) ;
 int bus_dmamem_free (scalar_t__,int *,int ) ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int bus_teardown_intr (int ,scalar_t__,scalar_t__) ;
 int free_domain (struct nvme_tracker*,int ) ;
 int mtx_destroy (int *) ;
 scalar_t__ mtx_initialized (int *) ;
 int rman_get_rid (scalar_t__) ;
 int tailq ;

__attribute__((used)) static void
nvme_qpair_destroy(struct nvme_qpair *qpair)
{
 struct nvme_tracker *tr;

 if (qpair->tag)
  bus_teardown_intr(qpair->ctrlr->dev, qpair->res, qpair->tag);

 if (mtx_initialized(&qpair->lock))
  mtx_destroy(&qpair->lock);

 if (qpair->res)
  bus_release_resource(qpair->ctrlr->dev, SYS_RES_IRQ,
      rman_get_rid(qpair->res), qpair->res);

 if (qpair->cmd != ((void*)0)) {
  bus_dmamap_unload(qpair->dma_tag, qpair->queuemem_map);
  bus_dmamem_free(qpair->dma_tag, qpair->cmd,
      qpair->queuemem_map);
 }

 if (qpair->act_tr)
  free_domain(qpair->act_tr, M_NVME);

 while (!TAILQ_EMPTY(&qpair->free_tr)) {
  tr = TAILQ_FIRST(&qpair->free_tr);
  TAILQ_REMOVE(&qpair->free_tr, tr, tailq);
  bus_dmamap_destroy(qpair->dma_tag_payload,
      tr->payload_dma_map);
  free_domain(tr, M_NVME);
 }

 if (qpair->dma_tag)
  bus_dma_tag_destroy(qpair->dma_tag);

 if (qpair->dma_tag_payload)
  bus_dma_tag_destroy(qpair->dma_tag_payload);
}
