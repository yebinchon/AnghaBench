
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct netfront_info {size_t num_queues; int * txq; int * rxq; } ;
typedef int device_t ;


 int XN_RX_LOCK (int *) ;
 int XN_RX_UNLOCK (int *) ;
 int XN_TX_LOCK (int *) ;
 int XN_TX_UNLOCK (int *) ;
 struct netfront_info* device_get_softc (int ) ;
 int netfront_carrier_off (struct netfront_info*) ;

__attribute__((used)) static int
netfront_suspend(device_t dev)
{
 struct netfront_info *np = device_get_softc(dev);
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
 return (0);
}
