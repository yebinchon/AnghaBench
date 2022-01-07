
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
 int netfront_carrier_on (struct netfront_info*) ;
 int netif_disconnect_backend (struct netfront_info*) ;
 scalar_t__ xen_suspend_cancelled ;

__attribute__((used)) static int
netfront_resume(device_t dev)
{
 struct netfront_info *info = device_get_softc(dev);
 u_int i;

 if (xen_suspend_cancelled) {
  for (i = 0; i < info->num_queues; i++) {
   XN_RX_LOCK(&info->rxq[i]);
   XN_TX_LOCK(&info->txq[i]);
  }
  netfront_carrier_on(info);
  for (i = 0; i < info->num_queues; i++) {
   XN_RX_UNLOCK(&info->rxq[i]);
   XN_TX_UNLOCK(&info->txq[i]);
  }
  return (0);
 }

 netif_disconnect_backend(info);
 return (0);
}
