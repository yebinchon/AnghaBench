
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flowid; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int if_drv_flags; struct al_eth_adapter* if_softc; } ;
struct al_eth_ring {scalar_t__ enqueue_is_running; int enqueue_task; int enqueue_tq; int br; } ;
struct al_eth_adapter {int num_tx_queues; int dev; struct al_eth_ring* tx_ring; } ;


 int EFAULT ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 scalar_t__ M_HASHTYPE_GET (struct mbuf*) ;
 scalar_t__ M_HASHTYPE_NONE ;
 int curcpu ;
 int device_printf_dbg (int ,char*,int) ;
 int drbr_enqueue (struct ifnet*,int ,struct mbuf*) ;
 scalar_t__ napi ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static int
al_mq_start(struct ifnet *ifp, struct mbuf *m)
{
 struct al_eth_adapter *adapter = ifp->if_softc;
 struct al_eth_ring *tx_ring;
 int i;
 int ret;


 if (M_HASHTYPE_GET(m) != M_HASHTYPE_NONE)
  i = m->m_pkthdr.flowid % adapter->num_tx_queues;
 else
  i = curcpu % adapter->num_tx_queues;

 if ((ifp->if_drv_flags & (IFF_DRV_RUNNING|IFF_DRV_OACTIVE)) !=
     IFF_DRV_RUNNING) {
  return (EFAULT);
 }

 tx_ring = &adapter->tx_ring[i];

 device_printf_dbg(adapter->dev, "dgb start() - assuming link is active, "
     "sending packet to queue %d\n", i);

 ret = drbr_enqueue(ifp, tx_ring->br, m);





 if ((napi == 0) || ((napi != 0) && (tx_ring->enqueue_is_running == 0)))
  taskqueue_enqueue(tx_ring->enqueue_tq, &tx_ring->enqueue_task);

 return (ret);
}
