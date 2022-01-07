
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfront_txq {int br; struct netfront_info* info; } ;
struct netfront_info {struct ifnet* xn_ifp; } ;
struct ifnet {int dummy; } ;


 int XN_TX_LOCK_ASSERT (struct netfront_txq*) ;
 int drbr_empty (struct ifnet*,int ) ;
 int xn_txq_mq_start_locked (struct netfront_txq*,int *) ;

__attribute__((used)) static void
xn_txq_start(struct netfront_txq *txq)
{
 struct netfront_info *np = txq->info;
 struct ifnet *ifp = np->xn_ifp;

 XN_TX_LOCK_ASSERT(txq);
 if (!drbr_empty(ifp, txq->br))
  xn_txq_mq_start_locked(txq, ((void*)0));
}
