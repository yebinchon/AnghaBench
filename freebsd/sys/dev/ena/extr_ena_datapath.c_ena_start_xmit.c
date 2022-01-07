
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {scalar_t__ csum_flags; } ;
struct mbuf {TYPE_2__ m_pkthdr; int m_flags; } ;
struct TYPE_7__ {int doorbells; } ;
struct ena_ring {scalar_t__ acum_pkts; TYPE_4__* que; int running; TYPE_3__ tx_stats; int br; struct ena_adapter* adapter; } ;
struct ena_com_io_sq {int dummy; } ;
struct ena_adapter {int ifp; TYPE_1__* ena_dev; } ;
struct TYPE_8__ {int cleanup_task; int cleanup_tq; int id; } ;
struct TYPE_5__ {struct ena_com_io_sq* io_sq_queues; } ;


 int BPF_MTAP (int ,struct mbuf*) ;
 int ENA_COM_NO_MEM ;
 int ENA_COM_NO_SPACE ;
 int ENA_DBG ;
 int ENA_FLAG_ISSET (int ,struct ena_adapter*) ;
 int ENA_FLAG_LINK_UP ;
 int ENA_IO_TXQ_IDX (int ) ;
 int ENA_TXPTH ;
 int IFF_DRV_RUNNING ;
 int counter_u64_add (int ,int) ;
 int drbr_advance (int ,int ) ;
 struct mbuf* drbr_peek (int ,int ) ;
 int drbr_putback (int ,int ,struct mbuf*) ;
 int ena_com_write_sq_doorbell (struct ena_com_io_sq*) ;
 int ena_trace (int,char*,struct mbuf*,int ,int ) ;
 int ena_xmit_mbuf (struct ena_ring*,struct mbuf**) ;
 int if_getdrvflags (int ) ;
 scalar_t__ likely (int) ;
 int m_freem (struct mbuf*) ;
 int taskqueue_enqueue (int ,int *) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;

__attribute__((used)) static void
ena_start_xmit(struct ena_ring *tx_ring)
{
 struct mbuf *mbuf;
 struct ena_adapter *adapter = tx_ring->adapter;
 struct ena_com_io_sq* io_sq;
 int ena_qid;
 int ret = 0;

 if (unlikely((if_getdrvflags(adapter->ifp) & IFF_DRV_RUNNING) == 0))
  return;

 if (unlikely(!ENA_FLAG_ISSET(ENA_FLAG_LINK_UP, adapter)))
  return;

 ena_qid = ENA_IO_TXQ_IDX(tx_ring->que->id);
 io_sq = &adapter->ena_dev->io_sq_queues[ena_qid];

 while ((mbuf = drbr_peek(adapter->ifp, tx_ring->br)) != ((void*)0)) {
  ena_trace(ENA_DBG | ENA_TXPTH, "\ndequeued mbuf %p with flags %#x and"
      " header csum flags %#jx\n",
      mbuf, mbuf->m_flags, (uint64_t)mbuf->m_pkthdr.csum_flags);

  if (unlikely(!tx_ring->running)) {
   drbr_putback(adapter->ifp, tx_ring->br, mbuf);
   break;
  }

  if (unlikely((ret = ena_xmit_mbuf(tx_ring, &mbuf)) != 0)) {
   if (ret == ENA_COM_NO_MEM) {
    drbr_putback(adapter->ifp, tx_ring->br, mbuf);
   } else if (ret == ENA_COM_NO_SPACE) {
    drbr_putback(adapter->ifp, tx_ring->br, mbuf);
   } else {
    m_freem(mbuf);
    drbr_advance(adapter->ifp, tx_ring->br);
   }

   break;
  }

  drbr_advance(adapter->ifp, tx_ring->br);

  if (unlikely((if_getdrvflags(adapter->ifp) &
      IFF_DRV_RUNNING) == 0))
   return;

  tx_ring->acum_pkts++;

  BPF_MTAP(adapter->ifp, mbuf);
 }

 if (likely(tx_ring->acum_pkts != 0)) {
  wmb();

  ena_com_write_sq_doorbell(io_sq);
  counter_u64_add(tx_ring->tx_stats.doorbells, 1);
  tx_ring->acum_pkts = 0;
 }

 if (unlikely(!tx_ring->running))
  taskqueue_enqueue(tx_ring->que->cleanup_tq,
      &tx_ring->que->cleanup_task);
}
