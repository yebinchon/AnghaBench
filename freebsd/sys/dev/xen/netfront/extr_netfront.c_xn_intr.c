
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfront_txq {size_t id; struct netfront_info* info; } ;
struct netfront_rxq {int dummy; } ;
struct netfront_info {struct netfront_rxq* rxq; } ;


 int xn_rxq_intr (struct netfront_rxq*) ;
 int xn_txq_intr (struct netfront_txq*) ;

__attribute__((used)) static void
xn_intr(void *xsc)
{
 struct netfront_txq *txq = xsc;
 struct netfront_info *np = txq->info;
 struct netfront_rxq *rxq = &np->rxq[txq->id];


 xn_rxq_intr(rxq);
 xn_txq_intr(txq);
}
