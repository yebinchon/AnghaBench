
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct em_tx_queue {int msix; int eims; int me; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct em_rx_queue {int rx_num_queues; int msix; int eims; int ims; int ivars; int tx_num_queues; int linkvec; int que_irq; struct em_rx_queue* rx_queues; int irq; TYPE_2__ hw; struct em_tx_queue* tx_queues; int me; } ;
struct adapter {int rx_num_queues; int msix; int eims; int ims; int ivars; int tx_num_queues; int linkvec; int que_irq; struct adapter* rx_queues; int irq; TYPE_2__ hw; struct em_tx_queue* tx_queues; int me; } ;
typedef int if_ctx_t ;
typedef int buf ;


 int E1000_EICR_TX_QUEUE0 ;
 int IFLIB_INTR_ADMIN ;
 int IFLIB_INTR_RXTX ;
 int IFLIB_INTR_TX ;
 int device_printf (int ,char*,...) ;
 scalar_t__ e1000_82574 ;
 scalar_t__ e1000_82575 ;
 int em_msix_link ;
 int em_msix_que ;
 int iflib_get_dev (int ) ;
 struct em_rx_queue* iflib_get_softc (int ) ;
 int iflib_irq_alloc_generic (int ,int *,int,int ,int ,struct em_rx_queue*,int ,char*) ;
 int iflib_irq_free (int ,int *) ;
 int iflib_softirq_alloc_generic (int ,int *,int ,struct em_tx_queue*,int ,char*) ;
 scalar_t__ igb_mac_min ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int
em_if_msix_intr_assign(if_ctx_t ctx, int msix)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 struct em_rx_queue *rx_que = adapter->rx_queues;
 struct em_tx_queue *tx_que = adapter->tx_queues;
 int error, rid, i, vector = 0, rx_vectors;
 char buf[16];


 for (i = 0; i < adapter->rx_num_queues; i++, rx_que++, vector++) {
  rid = vector + 1;
  snprintf(buf, sizeof(buf), "rxq%d", i);
  error = iflib_irq_alloc_generic(ctx, &rx_que->que_irq, rid, IFLIB_INTR_RXTX, em_msix_que, rx_que, rx_que->me, buf);
  if (error) {
   device_printf(iflib_get_dev(ctx), "Failed to allocate que int %d err: %d", i, error);
   adapter->rx_num_queues = i + 1;
   goto fail;
  }

  rx_que->msix = vector;







  if (adapter->hw.mac.type == e1000_82574) {
   rx_que->eims = 1 << (20 + i);
   adapter->ims |= rx_que->eims;
   adapter->ivars |= (8 | rx_que->msix) << (i * 4);
  } else if (adapter->hw.mac.type == e1000_82575)
   rx_que->eims = E1000_EICR_TX_QUEUE0 << vector;
  else
   rx_que->eims = 1 << vector;
 }
 rx_vectors = vector;

 vector = 0;
 for (i = 0; i < adapter->tx_num_queues; i++, tx_que++, vector++) {
  snprintf(buf, sizeof(buf), "txq%d", i);
  tx_que = &adapter->tx_queues[i];
  iflib_softirq_alloc_generic(ctx,
      &adapter->rx_queues[i % adapter->rx_num_queues].que_irq,
      IFLIB_INTR_TX, tx_que, tx_que->me, buf);

  tx_que->msix = (vector % adapter->rx_num_queues);







  if (adapter->hw.mac.type == e1000_82574) {
   tx_que->eims = 1 << (22 + i);
   adapter->ims |= tx_que->eims;
   adapter->ivars |= (8 | tx_que->msix) << (8 + (i * 4));
  } else if (adapter->hw.mac.type == e1000_82575) {
   tx_que->eims = E1000_EICR_TX_QUEUE0 << i;
  } else {
   tx_que->eims = 1 << i;
  }
 }


 rid = rx_vectors + 1;
 error = iflib_irq_alloc_generic(ctx, &adapter->irq, rid, IFLIB_INTR_ADMIN, em_msix_link, adapter, 0, "aq");

 if (error) {
  device_printf(iflib_get_dev(ctx), "Failed to register admin handler");
  goto fail;
 }
 adapter->linkvec = rx_vectors;
 if (adapter->hw.mac.type < igb_mac_min) {
  adapter->ivars |= (8 | rx_vectors) << 16;
  adapter->ivars |= 0x80000000;
 }
 return (0);
fail:
 iflib_irq_free(ctx, &adapter->irq);
 rx_que = adapter->rx_queues;
 for (int i = 0; i < adapter->rx_num_queues; i++, rx_que++)
  iflib_irq_free(ctx, &rx_que->que_irq);
 return (error);
}
