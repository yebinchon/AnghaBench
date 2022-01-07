
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfront_txq {int br; } ;
struct netfront_info {int num_queues; struct netfront_txq* txq; } ;
struct mbuf {int dummy; } ;
struct ifnet {struct netfront_info* if_softc; } ;


 int XN_TX_LOCK (struct netfront_txq*) ;
 int XN_TX_UNLOCK (struct netfront_txq*) ;
 struct mbuf* buf_ring_dequeue_sc (int ) ;
 int if_qflush (struct ifnet*) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static void
xn_qflush(struct ifnet *ifp)
{
 struct netfront_info *np;
 struct netfront_txq *txq;
 struct mbuf *m;
 int i;

 np = ifp->if_softc;

 for (i = 0; i < np->num_queues; i++) {
  txq = &np->txq[i];

  XN_TX_LOCK(txq);
  while ((m = buf_ring_dequeue_sc(txq->br)) != ((void*)0))
   m_freem(m);
  XN_TX_UNLOCK(txq);
 }

 if_qflush(ifp);
}
