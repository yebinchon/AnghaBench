
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sfxge_txq {unsigned int completed; unsigned int pending; unsigned int ptr_mask; unsigned int added; int entries; scalar_t__ blocked; int packet_dma_tag; struct sfxge_tx_mapping* stmp; } ;
struct TYPE_2__ {int heap_buf; struct mbuf* mbuf; } ;
struct sfxge_tx_mapping {int flags; TYPE_1__ u; int map; } ;
struct sfxge_evq {int dummy; } ;
struct mbuf {int dummy; } ;


 int M_SFXGE ;
 int SFXGE_EVQ_LOCK_ASSERT_OWNED (struct sfxge_evq*) ;
 unsigned int SFXGE_TXQ_UNBLOCK_LEVEL (int ) ;
 int TX_BUF_MBUF ;
 int TX_BUF_UNMAP ;
 int bus_dmamap_unload (int ,int ) ;
 int free (int ,int ) ;
 struct mbuf* m_free (struct mbuf*) ;
 int mb () ;
 int sfxge_tx_qunblock (struct sfxge_txq*) ;

void
sfxge_tx_qcomplete(struct sfxge_txq *txq, struct sfxge_evq *evq)
{
 unsigned int completed;

 SFXGE_EVQ_LOCK_ASSERT_OWNED(evq);

 completed = txq->completed;
 while (completed != txq->pending) {
  struct sfxge_tx_mapping *stmp;
  unsigned int id;

  id = completed++ & txq->ptr_mask;

  stmp = &txq->stmp[id];
  if (stmp->flags & TX_BUF_UNMAP) {
   bus_dmamap_unload(txq->packet_dma_tag, stmp->map);
   if (stmp->flags & TX_BUF_MBUF) {
    struct mbuf *m = stmp->u.mbuf;
    do
     m = m_free(m);
    while (m != ((void*)0));
   } else {
    free(stmp->u.heap_buf, M_SFXGE);
   }
   stmp->flags = 0;
  }
 }
 txq->completed = completed;


 mb();
 if (txq->blocked) {
  unsigned int level;

  level = txq->added - txq->completed;
  if (level <= SFXGE_TXQ_UNBLOCK_LEVEL(txq->entries))
   sfxge_tx_qunblock(txq);
 }
}
