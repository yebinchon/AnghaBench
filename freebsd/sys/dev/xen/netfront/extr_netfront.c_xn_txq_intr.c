
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfront_txq {int ring; } ;


 scalar_t__ RING_HAS_UNCONSUMED_RESPONSES (int *) ;
 int XN_TX_LOCK (struct netfront_txq*) ;
 int XN_TX_UNLOCK (struct netfront_txq*) ;
 int xn_txeof (struct netfront_txq*) ;
 int xn_txq_start (struct netfront_txq*) ;

__attribute__((used)) static void
xn_txq_intr(struct netfront_txq *txq)
{

 XN_TX_LOCK(txq);
 if (RING_HAS_UNCONSUMED_RESPONSES(&txq->ring))
  xn_txeof(txq);
 xn_txq_start(txq);
 XN_TX_UNLOCK(txq);
}
