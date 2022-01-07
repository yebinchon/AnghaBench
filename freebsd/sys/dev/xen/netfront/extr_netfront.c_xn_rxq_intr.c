
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfront_rxq {int dummy; } ;


 int XN_RX_LOCK (struct netfront_rxq*) ;
 int XN_RX_UNLOCK (struct netfront_rxq*) ;
 int xn_rxeof (struct netfront_rxq*) ;

__attribute__((used)) static void
xn_rxq_intr(struct netfront_rxq *rxq)
{

 XN_RX_LOCK(rxq);
 xn_rxeof(rxq);
 XN_RX_UNLOCK(rxq);
}
