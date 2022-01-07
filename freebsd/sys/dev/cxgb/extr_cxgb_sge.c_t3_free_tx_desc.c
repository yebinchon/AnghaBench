
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tx_sw_desc {int flags; int * m; int map; } ;
struct sge_txq {int cntxt_id; unsigned int cidx; int size; struct tx_sw_desc* sdesc; int txq_skipped; int entry_tag; } ;
struct sge_qset {int lock; struct sge_txq* txq; } ;
struct TYPE_2__ {int * tb; } ;


 int MA_OWNED ;
 int T3_TRACE2 (int ,char*,int,unsigned int) ;
 int TX_SW_DESC_MAPPED ;
 int bus_dmamap_unload (int ,int ) ;
 int m_freem_list (int *) ;
 int mtx_assert (int *,int ) ;
 int prefetch (int *) ;
 TYPE_1__* sc ;

void
t3_free_tx_desc(struct sge_qset *qs, int reclaimable, int queue)
{
 struct tx_sw_desc *txsd;
 unsigned int cidx, mask;
 struct sge_txq *q = &qs->txq[queue];





 cidx = q->cidx;
 mask = q->size - 1;
 txsd = &q->sdesc[cidx];

 mtx_assert(&qs->lock, MA_OWNED);
 while (reclaimable--) {
  prefetch(q->sdesc[(cidx + 1) & mask].m);
  prefetch(q->sdesc[(cidx + 2) & mask].m);

  if (txsd->m != ((void*)0)) {
   if (txsd->flags & TX_SW_DESC_MAPPED) {
    bus_dmamap_unload(q->entry_tag, txsd->map);
    txsd->flags &= ~TX_SW_DESC_MAPPED;
   }
   m_freem_list(txsd->m);
   txsd->m = ((void*)0);
  } else
   q->txq_skipped++;

  ++txsd;
  if (++cidx == q->size) {
   cidx = 0;
   txsd = q->sdesc;
  }
 }
 q->cidx = cidx;

}
