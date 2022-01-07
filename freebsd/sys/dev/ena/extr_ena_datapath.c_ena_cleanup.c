
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ena_ring {int first_interrupt; } ;
struct ena_que {int id; struct ena_ring* rx_ring; struct ena_ring* tx_ring; struct ena_adapter* adapter; } ;
struct ena_eth_io_intr_reg {int dummy; } ;
struct ena_com_io_cq {int dummy; } ;
struct ena_adapter {TYPE_1__* ena_dev; int ifp; } ;
typedef int if_t ;
struct TYPE_2__ {struct ena_com_io_cq* io_cq_queues; } ;


 int CLEAN_BUDGET ;
 int ENA_DBG ;
 int ENA_IO_TXQ_IDX (int) ;
 int IFF_DRV_RUNNING ;
 int RX_BUDGET ;
 int RX_IRQ_INTERVAL ;
 int TX_BUDGET ;
 int TX_IRQ_INTERVAL ;
 int ena_com_unmask_intr (struct ena_com_io_cq*,struct ena_eth_io_intr_reg*) ;
 int ena_com_update_intr_reg (struct ena_eth_io_intr_reg*,int ,int ,int) ;
 int ena_rx_cleanup (struct ena_ring*) ;
 int ena_trace (int ,char*) ;
 int ena_tx_cleanup (struct ena_ring*) ;
 int if_getdrvflags (int ) ;
 scalar_t__ unlikely (int) ;

void
ena_cleanup(void *arg, int pending)
{
 struct ena_que *que = arg;
 struct ena_adapter *adapter = que->adapter;
 if_t ifp = adapter->ifp;
 struct ena_ring *tx_ring;
 struct ena_ring *rx_ring;
 struct ena_com_io_cq* io_cq;
 struct ena_eth_io_intr_reg intr_reg;
 int qid, ena_qid;
 int txc, rxc, i;

 if (unlikely((if_getdrvflags(ifp) & IFF_DRV_RUNNING) == 0))
  return;

 ena_trace(ENA_DBG, "MSI-X TX/RX routine\n");

 tx_ring = que->tx_ring;
 rx_ring = que->rx_ring;
 qid = que->id;
 ena_qid = ENA_IO_TXQ_IDX(qid);
 io_cq = &adapter->ena_dev->io_cq_queues[ena_qid];

 tx_ring->first_interrupt = 1;
 rx_ring->first_interrupt = 1;

 for (i = 0; i < CLEAN_BUDGET; ++i) {
  rxc = ena_rx_cleanup(rx_ring);
  txc = ena_tx_cleanup(tx_ring);

  if (unlikely((if_getdrvflags(ifp) & IFF_DRV_RUNNING) == 0))
   return;

  if ((txc != TX_BUDGET) && (rxc != RX_BUDGET))
         break;
 }


 ena_com_update_intr_reg(&intr_reg,
     RX_IRQ_INTERVAL,
     TX_IRQ_INTERVAL,
     1);
 ena_com_unmask_intr(io_cq, &intr_reg);
}
