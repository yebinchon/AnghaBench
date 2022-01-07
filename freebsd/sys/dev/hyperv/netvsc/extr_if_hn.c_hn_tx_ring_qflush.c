
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct hn_tx_ring {int hn_tx_lock; int hn_mbuf_br; } ;


 struct mbuf* buf_ring_dequeue_sc (int ) ;
 int m_freem (struct mbuf*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
hn_tx_ring_qflush(struct hn_tx_ring *txr)
{
 struct mbuf *m;

 mtx_lock(&txr->hn_tx_lock);
 while ((m = buf_ring_dequeue_sc(txr->hn_mbuf_br)) != ((void*)0))
  m_freem(m);
 mtx_unlock(&txr->hn_tx_lock);
}
