
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


struct TYPE_16__ {int ctrl; } ;
struct TYPE_15__ {int lock; int desc_tag; int desc_map; scalar_t__ desc; int cntxt_id; } ;
struct sge_qset {TYPE_4__ lro; TYPE_3__ rspq; TYPE_1__* txq; int lock; TYPE_11__* fl; } ;
struct TYPE_14__ {int reg_lock; } ;
struct TYPE_17__ {TYPE_2__ sge; } ;
typedef TYPE_5__ adapter_t ;
struct TYPE_13__ {int * sdesc; int entry_tag; int desc_tag; int desc_map; scalar_t__ desc; int cntxt_id; int * txq_ifq; int * txq_mr; } ;
struct TYPE_12__ {int * sdesc; int entry_tag; int desc_tag; int desc_map; scalar_t__ desc; int cntxt_id; } ;


 int MTX_DESTROY (int *) ;
 int M_DEVBUF ;
 int SGE_RXQ_PER_SET ;
 int SGE_TXQ_PER_SET ;
 size_t TXQ_ETH ;
 int buf_ring_free (int *,int ) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,scalar_t__,int ) ;
 int bzero (struct sge_qset*,int) ;
 int free (int *,int ) ;
 int free_rx_bufs (TYPE_5__*,TYPE_11__*) ;
 int ifq_delete (int *) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock (int *) ;
 int mtx_unlock_spin (int *) ;
 int reclaim_completed_tx (struct sge_qset*,int ,size_t) ;
 int t3_sge_disable_fl (TYPE_5__*,int ) ;
 int t3_sge_disable_rspcntxt (TYPE_5__*,int ) ;
 int t3_sge_enable_ecntxt (TYPE_5__*,int ,int ) ;
 int tcp_lro_free (int *) ;

__attribute__((used)) static void
t3_free_qset(adapter_t *sc, struct sge_qset *q)
{
 int i;

 reclaim_completed_tx(q, 0, TXQ_ETH);
 if (q->txq[TXQ_ETH].txq_mr != ((void*)0))
  buf_ring_free(q->txq[TXQ_ETH].txq_mr, M_DEVBUF);
 if (q->txq[TXQ_ETH].txq_ifq != ((void*)0)) {
  ifq_delete(q->txq[TXQ_ETH].txq_ifq);
  free(q->txq[TXQ_ETH].txq_ifq, M_DEVBUF);
 }

 for (i = 0; i < SGE_RXQ_PER_SET; ++i) {
  if (q->fl[i].desc) {
   mtx_lock_spin(&sc->sge.reg_lock);
   t3_sge_disable_fl(sc, q->fl[i].cntxt_id);
   mtx_unlock_spin(&sc->sge.reg_lock);
   bus_dmamap_unload(q->fl[i].desc_tag, q->fl[i].desc_map);
   bus_dmamem_free(q->fl[i].desc_tag, q->fl[i].desc,
     q->fl[i].desc_map);
   bus_dma_tag_destroy(q->fl[i].desc_tag);
   bus_dma_tag_destroy(q->fl[i].entry_tag);
  }
  if (q->fl[i].sdesc) {
   free_rx_bufs(sc, &q->fl[i]);
   free(q->fl[i].sdesc, M_DEVBUF);
  }
 }

 mtx_unlock(&q->lock);
 MTX_DESTROY(&q->lock);
 for (i = 0; i < SGE_TXQ_PER_SET; i++) {
  if (q->txq[i].desc) {
   mtx_lock_spin(&sc->sge.reg_lock);
   t3_sge_enable_ecntxt(sc, q->txq[i].cntxt_id, 0);
   mtx_unlock_spin(&sc->sge.reg_lock);
   bus_dmamap_unload(q->txq[i].desc_tag,
     q->txq[i].desc_map);
   bus_dmamem_free(q->txq[i].desc_tag, q->txq[i].desc,
     q->txq[i].desc_map);
   bus_dma_tag_destroy(q->txq[i].desc_tag);
   bus_dma_tag_destroy(q->txq[i].entry_tag);
  }
  if (q->txq[i].sdesc) {
   free(q->txq[i].sdesc, M_DEVBUF);
  }
 }

 if (q->rspq.desc) {
  mtx_lock_spin(&sc->sge.reg_lock);
  t3_sge_disable_rspcntxt(sc, q->rspq.cntxt_id);
  mtx_unlock_spin(&sc->sge.reg_lock);

  bus_dmamap_unload(q->rspq.desc_tag, q->rspq.desc_map);
  bus_dmamem_free(q->rspq.desc_tag, q->rspq.desc,
           q->rspq.desc_map);
  bus_dma_tag_destroy(q->rspq.desc_tag);
  MTX_DESTROY(&q->rspq.lock);
 }





 bzero(q, sizeof(*q));
}
