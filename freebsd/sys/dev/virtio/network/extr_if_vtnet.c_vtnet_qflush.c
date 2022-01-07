
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_txq {int vtntx_br; } ;
struct vtnet_softc {int vtnet_act_vq_pairs; struct vtnet_txq* vtnet_txqs; } ;
struct mbuf {int dummy; } ;
struct ifnet {struct vtnet_softc* if_softc; } ;


 int VTNET_TXQ_LOCK (struct vtnet_txq*) ;
 int VTNET_TXQ_UNLOCK (struct vtnet_txq*) ;
 struct mbuf* buf_ring_dequeue_sc (int ) ;
 int if_qflush (struct ifnet*) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static void
vtnet_qflush(struct ifnet *ifp)
{
 struct vtnet_softc *sc;
 struct vtnet_txq *txq;
 struct mbuf *m;
 int i;

 sc = ifp->if_softc;

 for (i = 0; i < sc->vtnet_act_vq_pairs; i++) {
  txq = &sc->vtnet_txqs[i];

  VTNET_TXQ_LOCK(txq);
  while ((m = buf_ring_dequeue_sc(txq->vtntx_br)) != ((void*)0))
   m_freem(m);
  VTNET_TXQ_UNLOCK(txq);
 }

 if_qflush(ifp);
}
