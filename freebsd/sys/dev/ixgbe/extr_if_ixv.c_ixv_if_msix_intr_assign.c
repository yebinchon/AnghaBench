
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int me; } ;
struct ix_tx_queue {int msix; TYPE_2__ txr; } ;
struct TYPE_7__ {scalar_t__ type; } ;
struct TYPE_8__ {TYPE_3__ mac; } ;
struct TYPE_5__ {int me; } ;
struct ix_rx_queue {int num_rx_queues; int msix; int num_tx_queues; int vector; int que_irq; struct ix_rx_queue* rx_queues; int irq; TYPE_4__ hw; struct ix_tx_queue* tx_queues; TYPE_1__ rxr; } ;
struct adapter {int num_rx_queues; int msix; int num_tx_queues; int vector; int que_irq; struct adapter* rx_queues; int irq; TYPE_4__ hw; struct ix_tx_queue* tx_queues; TYPE_1__ rxr; } ;
typedef int if_ctx_t ;
typedef int device_t ;
typedef int buf ;


 int IFLIB_INTR_ADMIN ;
 int IFLIB_INTR_RX ;
 int IFLIB_INTR_TX ;
 int PCIM_MSIXCTRL_MSIX_ENABLE ;
 scalar_t__ PCIR_MSIX_CTRL ;
 int PCIY_MSIX ;
 int device_printf (int ,char*,...) ;
 int iflib_get_dev (int ) ;
 struct ix_rx_queue* iflib_get_softc (int ) ;
 int iflib_irq_alloc_generic (int ,int *,int,int ,int ,struct ix_rx_queue*,int ,char*) ;
 int iflib_irq_free (int ,int *) ;
 int iflib_softirq_alloc_generic (int ,int *,int ,struct ix_tx_queue*,int ,char*) ;
 scalar_t__ ixgbe_mac_82599_vf ;
 int ixv_msix_mbx ;
 int ixv_msix_que ;
 int pci_find_cap (int ,int ,int*) ;
 int pci_read_config (int ,int,int) ;
 int pci_write_config (int ,int,int,int) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int
ixv_if_msix_intr_assign(if_ctx_t ctx, int msix)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 device_t dev = iflib_get_dev(ctx);
 struct ix_rx_queue *rx_que = adapter->rx_queues;
 struct ix_tx_queue *tx_que;
 int error, rid, vector = 0;
 char buf[16];

 for (int i = 0; i < adapter->num_rx_queues; i++, vector++, rx_que++) {
  rid = vector + 1;

  snprintf(buf, sizeof(buf), "rxq%d", i);
  error = iflib_irq_alloc_generic(ctx, &rx_que->que_irq, rid,
      IFLIB_INTR_RX, ixv_msix_que, rx_que, rx_que->rxr.me, buf);

  if (error) {
   device_printf(iflib_get_dev(ctx),
       "Failed to allocate que int %d err: %d", i, error);
   adapter->num_rx_queues = i + 1;
   goto fail;
  }

  rx_que->msix = vector;
 }

 for (int i = 0; i < adapter->num_tx_queues; i++) {
  snprintf(buf, sizeof(buf), "txq%d", i);
  tx_que = &adapter->tx_queues[i];
  tx_que->msix = i % adapter->num_rx_queues;
  iflib_softirq_alloc_generic(ctx,
      &adapter->rx_queues[tx_que->msix].que_irq,
      IFLIB_INTR_TX, tx_que, tx_que->txr.me, buf);
 }
 rid = vector + 1;
 error = iflib_irq_alloc_generic(ctx, &adapter->irq, rid,
     IFLIB_INTR_ADMIN, ixv_msix_mbx, adapter, 0, "aq");
 if (error) {
  device_printf(iflib_get_dev(ctx),
      "Failed to register admin handler");
  return (error);
 }

 adapter->vector = vector;







 if (adapter->hw.mac.type == ixgbe_mac_82599_vf) {
  int msix_ctrl;
  pci_find_cap(dev, PCIY_MSIX, &rid);
  rid += PCIR_MSIX_CTRL;
  msix_ctrl = pci_read_config(dev, rid, 2);
  msix_ctrl |= PCIM_MSIXCTRL_MSIX_ENABLE;
  pci_write_config(dev, rid, msix_ctrl, 2);
 }

 return (0);

fail:
 iflib_irq_free(ctx, &adapter->irq);
 rx_que = adapter->rx_queues;
 for (int i = 0; i < adapter->num_rx_queues; i++, rx_que++)
  iflib_irq_free(ctx, &rx_que->que_irq);

 return (error);
}
