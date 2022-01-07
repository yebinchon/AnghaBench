
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int interface_down; } ;
struct ena_adapter {TYPE_1__ dev_stats; int pdev; int reset_reason; int ena_dev; int ifp; int timer_service; } ;


 int ENA_FLAG_CLEAR_ATOMIC (int ,struct ena_adapter*) ;
 int ENA_FLAG_DEV_UP ;
 scalar_t__ ENA_FLAG_ISSET (int ,struct ena_adapter*) ;
 int ENA_FLAG_TRIGGER_RESET ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int callout_drain (int *) ;
 int counter_u64_add (int ,int) ;
 int device_printf (int ,char*) ;
 int ena_com_dev_reset (int ,int ) ;
 int ena_destroy_all_io_queues (struct ena_adapter*) ;
 int ena_free_all_rx_bufs (struct ena_adapter*) ;
 int ena_free_all_rx_resources (struct ena_adapter*) ;
 int ena_free_all_tx_bufs (struct ena_adapter*) ;
 int ena_free_all_tx_resources (struct ena_adapter*) ;
 int ena_free_io_irq (struct ena_adapter*) ;
 int if_setdrvflagbits (int ,int ,int ) ;
 scalar_t__ unlikely (int) ;

void
ena_down(struct ena_adapter *adapter)
{
 int rc;

 if (ENA_FLAG_ISSET(ENA_FLAG_DEV_UP, adapter)) {
  device_printf(adapter->pdev, "device is going DOWN\n");

  callout_drain(&adapter->timer_service);

  ENA_FLAG_CLEAR_ATOMIC(ENA_FLAG_DEV_UP, adapter);
  if_setdrvflagbits(adapter->ifp, IFF_DRV_OACTIVE,
      IFF_DRV_RUNNING);

  ena_free_io_irq(adapter);

  if (ENA_FLAG_ISSET(ENA_FLAG_TRIGGER_RESET, adapter)) {
   rc = ena_com_dev_reset(adapter->ena_dev,
       adapter->reset_reason);
   if (unlikely(rc != 0))
    device_printf(adapter->pdev,
        "Device reset failed\n");
  }

  ena_destroy_all_io_queues(adapter);

  ena_free_all_tx_bufs(adapter);
  ena_free_all_rx_bufs(adapter);
  ena_free_all_tx_resources(adapter);
  ena_free_all_rx_resources(adapter);

  counter_u64_add(adapter->dev_stats.interface_down, 1);
 }
}
