
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_6__ {size_t flowid; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ena_ring {int enqueue_task; int enqueue_tq; int br; } ;
struct ena_adapter {size_t num_queues; struct ena_ring* tx_ring; int ifp; } ;
typedef TYPE_2__* if_t ;
struct TYPE_7__ {struct ena_adapter* if_softc; } ;


 scalar_t__ ENA_RING_MTX_TRYLOCK (struct ena_ring*) ;
 int ENA_RING_MTX_UNLOCK (struct ena_ring*) ;
 int ENODEV ;
 int IFF_DRV_RUNNING ;
 scalar_t__ M_HASHTYPE_GET (struct mbuf*) ;
 scalar_t__ M_HASHTYPE_NONE ;
 size_t curcpu ;
 int drbr_empty (TYPE_2__*,int ) ;
 int drbr_enqueue (TYPE_2__*,int ,struct mbuf*) ;
 int ena_start_xmit (struct ena_ring*) ;
 int if_getdrvflags (int ) ;
 int taskqueue_enqueue (int ,int *) ;
 scalar_t__ unlikely (int) ;

int
ena_mq_start(if_t ifp, struct mbuf *m)
{
 struct ena_adapter *adapter = ifp->if_softc;
 struct ena_ring *tx_ring;
 int ret, is_drbr_empty;
 uint32_t i;

 if (unlikely((if_getdrvflags(adapter->ifp) & IFF_DRV_RUNNING) == 0))
  return (ENODEV);







 if (M_HASHTYPE_GET(m) != M_HASHTYPE_NONE) {
  i = m->m_pkthdr.flowid % adapter->num_queues;
 } else {
  i = curcpu % adapter->num_queues;
 }
 tx_ring = &adapter->tx_ring[i];


 is_drbr_empty = drbr_empty(ifp, tx_ring->br);
 ret = drbr_enqueue(ifp, tx_ring->br, m);
 if (unlikely(ret != 0)) {
  taskqueue_enqueue(tx_ring->enqueue_tq, &tx_ring->enqueue_task);
  return (ret);
 }

 if (is_drbr_empty && (ENA_RING_MTX_TRYLOCK(tx_ring) != 0)) {
  ena_start_xmit(tx_ring);
  ENA_RING_MTX_UNLOCK(tx_ring);
 } else {
  taskqueue_enqueue(tx_ring->enqueue_tq, &tx_ring->enqueue_task);
 }

 return (0);
}
