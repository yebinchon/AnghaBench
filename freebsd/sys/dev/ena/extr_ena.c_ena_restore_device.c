
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_com_dev_get_features_ctx {int dummy; } ;
struct ena_com_dev {int dummy; } ;
struct ena_adapter {int wd_active; int timer_service; int keep_alive_timestamp; int num_queues; int pdev; int ifp; struct ena_com_dev* ena_dev; } ;
typedef int if_t ;
typedef int device_t ;


 int ENA_FLAG_CLEAR_ATOMIC (int ,struct ena_adapter*) ;
 int ENA_FLAG_DEVICE_RUNNING ;
 int ENA_FLAG_DEV_UP_BEFORE_RESET ;
 scalar_t__ ENA_FLAG_ISSET (int ,struct ena_adapter*) ;
 int ENA_FLAG_LINK_UP ;
 int ENA_FLAG_ONGOING_RESET ;
 int ENA_FLAG_SET_ATOMIC (int ,struct ena_adapter*) ;
 int ENA_REGS_RESET_DRIVER_INVALID_STATE ;
 int LINK_STATE_UP ;
 int SBT_1S ;
 int callout_reset_sbt (int *,int ,int ,int ,void*,int ) ;
 int device_printf (int ,char*,...) ;
 int ena_com_abort_admin_commands (struct ena_com_dev*) ;
 int ena_com_admin_destroy (struct ena_com_dev*) ;
 int ena_com_dev_reset (struct ena_com_dev*,int ) ;
 int ena_com_mmio_reg_read_request_destroy (struct ena_com_dev*) ;
 int ena_com_wait_for_abort_completion (struct ena_com_dev*) ;
 int ena_device_init (struct ena_adapter*,int ,struct ena_com_dev_get_features_ctx*,int*) ;
 int ena_device_validate_params (struct ena_adapter*,struct ena_com_dev_get_features_ctx*) ;
 int ena_disable_msix (struct ena_adapter*) ;
 int ena_enable_msix_and_set_admin_interrupts (struct ena_adapter*,int ) ;
 int ena_free_mgmnt_irq (struct ena_adapter*) ;
 int ena_handle_updated_queues (struct ena_adapter*,struct ena_com_dev_get_features_ctx*) ;
 int ena_timer_service ;
 int ena_up (struct ena_adapter*) ;
 int ena_version ;
 int getsbinuptime () ;
 int if_link_state_change (int ,int ) ;

int
ena_restore_device(struct ena_adapter *adapter)
{
 struct ena_com_dev_get_features_ctx get_feat_ctx;
 struct ena_com_dev *ena_dev = adapter->ena_dev;
 if_t ifp = adapter->ifp;
 device_t dev = adapter->pdev;
 int wd_active;
 int rc;

 ENA_FLAG_SET_ATOMIC(ENA_FLAG_ONGOING_RESET, adapter);

 rc = ena_device_init(adapter, dev, &get_feat_ctx, &wd_active);
 if (rc != 0) {
  device_printf(dev, "Cannot initialize device\n");
  goto err;
 }




 if (adapter->wd_active != 0)
  adapter->wd_active = wd_active;

 rc = ena_device_validate_params(adapter, &get_feat_ctx);
 if (rc != 0) {
  device_printf(dev, "Validation of device parameters failed\n");
  goto err_device_destroy;
 }

 rc = ena_handle_updated_queues(adapter, &get_feat_ctx);
 if (rc != 0)
  goto err_device_destroy;

 ENA_FLAG_CLEAR_ATOMIC(ENA_FLAG_ONGOING_RESET, adapter);

 if (ENA_FLAG_ISSET(ENA_FLAG_LINK_UP, adapter))
  if_link_state_change(ifp, LINK_STATE_UP);

 rc = ena_enable_msix_and_set_admin_interrupts(adapter,
     adapter->num_queues);
 if (rc != 0) {
  device_printf(dev, "Enable MSI-X failed\n");
  goto err_device_destroy;
 }


 if (ENA_FLAG_ISSET(ENA_FLAG_DEV_UP_BEFORE_RESET, adapter)) {
  rc = ena_up(adapter);
  if (rc != 0) {
   device_printf(dev, "Failed to create I/O queues\n");
   goto err_disable_msix;
  }
 }


 ENA_FLAG_SET_ATOMIC(ENA_FLAG_DEVICE_RUNNING, adapter);

 if (ENA_FLAG_ISSET(ENA_FLAG_DEV_UP_BEFORE_RESET, adapter)) {






  adapter->keep_alive_timestamp = getsbinuptime();
  callout_reset_sbt(&adapter->timer_service, SBT_1S, SBT_1S,
      ena_timer_service, (void *)adapter, 0);
 }

 device_printf(dev,
     "Device reset completed successfully, Driver info: %s\n", ena_version);

 return (rc);

err_disable_msix:
 ena_free_mgmnt_irq(adapter);
 ena_disable_msix(adapter);
err_device_destroy:
 ena_com_abort_admin_commands(ena_dev);
 ena_com_wait_for_abort_completion(ena_dev);
 ena_com_admin_destroy(ena_dev);
 ena_com_dev_reset(ena_dev, ENA_REGS_RESET_DRIVER_INVALID_STATE);
 ena_com_mmio_reg_read_request_destroy(ena_dev);
err:
 ENA_FLAG_CLEAR_ATOMIC(ENA_FLAG_DEVICE_RUNNING, adapter);
 ENA_FLAG_CLEAR_ATOMIC(ENA_FLAG_ONGOING_RESET, adapter);
 device_printf(dev, "Reset attempt failed. Can not reset the device\n");

 return (rc);
}
