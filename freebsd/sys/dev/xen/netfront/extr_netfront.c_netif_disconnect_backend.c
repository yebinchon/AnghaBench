
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct netfront_info {size_t num_queues; int * txq; int * rxq; } ;


 int XN_RX_LOCK (int *) ;
 int XN_RX_UNLOCK (int *) ;
 int XN_TX_LOCK (int *) ;
 int XN_TX_UNLOCK (int *) ;
 int disconnect_rxq (int *) ;
 int disconnect_txq (int *) ;
 int netfront_carrier_off (struct netfront_info*) ;

__attribute__((used)) static void
netif_disconnect_backend(struct netfront_info *np)
{
 u_int i;

 for (i = 0; i < np->num_queues; i++) {
  XN_RX_LOCK(&np->rxq[i]);
  XN_TX_LOCK(&np->txq[i]);
 }
 netfront_carrier_off(np);
 for (i = 0; i < np->num_queues; i++) {
  XN_RX_UNLOCK(&np->rxq[i]);
  XN_TX_UNLOCK(&np->txq[i]);
 }

 for (i = 0; i < np->num_queues; i++) {
  disconnect_rxq(&np->rxq[i]);
  disconnect_txq(&np->txq[i]);
 }
}
