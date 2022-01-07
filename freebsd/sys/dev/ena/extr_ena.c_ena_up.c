
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int interface_up; } ;
struct ena_adapter {int timer_service; int ifp; TYPE_1__ dev_stats; int pdev; } ;


 int ENA_ALERT ;
 int ENA_FLAG_DEVICE_RUNNING ;
 int ENA_FLAG_DEV_UP ;
 scalar_t__ ENA_FLAG_ISSET (int ,struct ena_adapter*) ;
 int ENA_FLAG_LINK_UP ;
 int ENA_FLAG_SET_ATOMIC (int ,struct ena_adapter*) ;
 int ENXIO ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int LINK_STATE_UP ;
 int SBT_1S ;
 int callout_reset_sbt (int *,int ,int ,int ,void*,int ) ;
 int counter_u64_add (int ,int) ;
 scalar_t__ device_is_attached (int ) ;
 int device_printf (int ,char*) ;
 int ena_create_io_queues (struct ena_adapter*) ;
 int ena_destroy_all_io_queues (struct ena_adapter*) ;
 int ena_free_all_rx_resources (struct ena_adapter*) ;
 int ena_free_all_tx_resources (struct ena_adapter*) ;
 int ena_free_io_irq (struct ena_adapter*) ;
 int ena_request_io_irq (struct ena_adapter*) ;
 int ena_setup_all_rx_resources (struct ena_adapter*) ;
 int ena_setup_all_tx_resources (struct ena_adapter*) ;
 int ena_setup_io_intr (struct ena_adapter*) ;
 int ena_timer_service ;
 int ena_trace (int ,char*) ;
 int ena_unmask_all_io_irqs (struct ena_adapter*) ;
 int ena_up_complete (struct ena_adapter*) ;
 int ena_update_hwassist (struct ena_adapter*) ;
 int if_link_state_change (int ,int ) ;
 int if_setdrvflagbits (int ,int ,int ) ;
 scalar_t__ unlikely (int) ;

int
ena_up(struct ena_adapter *adapter)
{
 int rc = 0;

 if (unlikely(device_is_attached(adapter->pdev) == 0)) {
  device_printf(adapter->pdev, "device is not attached!\n");
  return (ENXIO);
 }

 if (!ENA_FLAG_ISSET(ENA_FLAG_DEV_UP, adapter)) {
  device_printf(adapter->pdev, "device is going UP\n");


  rc = ena_setup_io_intr(adapter);
  if (unlikely(rc != 0)) {
   ena_trace(ENA_ALERT, "error setting up IO interrupt\n");
   goto error;
  }
  rc = ena_request_io_irq(adapter);
  if (unlikely(rc != 0)) {
   ena_trace(ENA_ALERT, "err_req_irq\n");
   goto error;
  }


  rc = ena_setup_all_tx_resources(adapter);
  if (unlikely(rc != 0)) {
   ena_trace(ENA_ALERT, "err_setup_tx\n");
   goto err_setup_tx;
  }


  rc = ena_setup_all_rx_resources(adapter);
  if (unlikely(rc != 0)) {
   ena_trace(ENA_ALERT, "err_setup_rx\n");
   goto err_setup_rx;
  }


  rc = ena_create_io_queues(adapter);
  if (unlikely(rc != 0)) {
   ena_trace(ENA_ALERT,
       "create IO queues failed\n");
   goto err_io_que;
  }

  if (ENA_FLAG_ISSET(ENA_FLAG_LINK_UP, adapter))
   if_link_state_change(adapter->ifp, LINK_STATE_UP);

  rc = ena_up_complete(adapter);
  if (unlikely(rc != 0))
   goto err_up_complete;

  counter_u64_add(adapter->dev_stats.interface_up, 1);

  ena_update_hwassist(adapter);

  if_setdrvflagbits(adapter->ifp, IFF_DRV_RUNNING,
      IFF_DRV_OACTIVE);





  if (ENA_FLAG_ISSET(ENA_FLAG_DEVICE_RUNNING, adapter)) {
   callout_reset_sbt(&adapter->timer_service, SBT_1S,
       SBT_1S, ena_timer_service, (void *)adapter, 0);
  }

  ENA_FLAG_SET_ATOMIC(ENA_FLAG_DEV_UP, adapter);

  ena_unmask_all_io_irqs(adapter);
 }

 return (0);

err_up_complete:
 ena_destroy_all_io_queues(adapter);
err_io_que:
 ena_free_all_rx_resources(adapter);
err_setup_rx:
 ena_free_all_tx_resources(adapter);
err_setup_tx:
 ena_free_io_irq(adapter);
error:
 return (rc);
}
