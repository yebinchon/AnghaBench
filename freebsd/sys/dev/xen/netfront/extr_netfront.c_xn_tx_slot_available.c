
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfront_txq {int ring; } ;


 scalar_t__ MAX_TX_REQ_FRAGS ;
 scalar_t__ RING_FREE_REQUESTS (int *) ;

__attribute__((used)) static inline int
xn_tx_slot_available(struct netfront_txq *txq)
{

 return (RING_FREE_REQUESTS(&txq->ring) > (MAX_TX_REQ_FRAGS + 2));
}
