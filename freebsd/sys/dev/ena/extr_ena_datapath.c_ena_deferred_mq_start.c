
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet {int dummy; } ;
struct ena_ring {scalar_t__ running; int br; TYPE_1__* adapter; } ;
struct TYPE_2__ {struct ifnet* ifp; } ;


 int ENA_RING_MTX_LOCK (struct ena_ring*) ;
 int ENA_RING_MTX_UNLOCK (struct ena_ring*) ;
 int IFF_DRV_RUNNING ;
 int drbr_empty (struct ifnet*,int ) ;
 int ena_start_xmit (struct ena_ring*) ;
 int if_getdrvflags (struct ifnet*) ;

void
ena_deferred_mq_start(void *arg, int pending)
{
 struct ena_ring *tx_ring = (struct ena_ring *)arg;
 struct ifnet *ifp = tx_ring->adapter->ifp;

 while (!drbr_empty(ifp, tx_ring->br) &&
     tx_ring->running &&
     (if_getdrvflags(ifp) & IFF_DRV_RUNNING) != 0) {
  ENA_RING_MTX_LOCK(tx_ring);
  ena_start_xmit(tx_ring);
  ENA_RING_MTX_UNLOCK(tx_ring);
 }
}
