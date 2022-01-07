
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netfront_txq {int defrtask; int tq; int br; } ;
struct netfront_info {int num_queues; struct netfront_txq* txq; } ;
struct TYPE_2__ {int flowid; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {struct netfront_info* if_softc; } ;


 int ENOBUFS ;
 int KASSERT (int,char*) ;
 scalar_t__ M_HASHTYPE_GET (struct mbuf*) ;
 scalar_t__ M_HASHTYPE_NONE ;
 scalar_t__ XN_TX_TRYLOCK (struct netfront_txq*) ;
 int XN_TX_UNLOCK (struct netfront_txq*) ;
 int curcpu ;
 int drbr_enqueue (struct ifnet*,int ,struct mbuf*) ;
 int netfront_carrier_ok (struct netfront_info*) ;
 int taskqueue_enqueue (int ,int *) ;
 int xn_txq_mq_start_locked (struct netfront_txq*,struct mbuf*) ;

__attribute__((used)) static int
xn_txq_mq_start(struct ifnet *ifp, struct mbuf *m)
{
 struct netfront_info *np;
 struct netfront_txq *txq;
 int i, npairs, error;

 np = ifp->if_softc;
 npairs = np->num_queues;

 if (!netfront_carrier_ok(np))
  return (ENOBUFS);

 KASSERT(npairs != 0, ("called with 0 available queues"));


 if (M_HASHTYPE_GET(m) != M_HASHTYPE_NONE)
  i = m->m_pkthdr.flowid % npairs;
 else
  i = curcpu % npairs;

 txq = &np->txq[i];

 if (XN_TX_TRYLOCK(txq) != 0) {
  error = xn_txq_mq_start_locked(txq, m);
  XN_TX_UNLOCK(txq);
 } else {
  error = drbr_enqueue(ifp, txq->br, m);
  taskqueue_enqueue(txq->tq, &txq->defrtask);
 }

 return (error);
}
