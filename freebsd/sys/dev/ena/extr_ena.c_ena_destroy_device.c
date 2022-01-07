
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_com_dev {int dummy; } ;
struct ena_adapter {int reset_reason; struct ena_com_dev* ena_dev; int timer_service; int ifp; } ;
typedef int if_t ;


 int ENA_FLAG_CLEAR_ATOMIC (int ,struct ena_adapter*) ;
 int ENA_FLAG_DEVICE_RUNNING ;
 int ENA_FLAG_DEV_UP ;
 int ENA_FLAG_DEV_UP_BEFORE_RESET ;
 int ENA_FLAG_ISSET (int ,struct ena_adapter*) ;
 int ENA_FLAG_SET_ATOMIC (int ,struct ena_adapter*) ;
 int ENA_FLAG_TRIGGER_RESET ;
 int ENA_REGS_RESET_NORMAL ;
 int LINK_STATE_DOWN ;
 int callout_drain (int *) ;
 int ena_com_abort_admin_commands (struct ena_com_dev*) ;
 int ena_com_admin_destroy (struct ena_com_dev*) ;
 int ena_com_dev_reset (struct ena_com_dev*,int ) ;
 int ena_com_mmio_reg_read_request_destroy (struct ena_com_dev*) ;
 int ena_com_set_admin_running_state (struct ena_com_dev*,int) ;
 int ena_com_wait_for_abort_completion (struct ena_com_dev*) ;
 int ena_disable_msix (struct ena_adapter*) ;
 int ena_down (struct ena_adapter*) ;
 int ena_free_mgmnt_irq (struct ena_adapter*) ;
 int if_link_state_change (int ,int ) ;

void
ena_destroy_device(struct ena_adapter *adapter, bool graceful)
{
 if_t ifp = adapter->ifp;
 struct ena_com_dev *ena_dev = adapter->ena_dev;
 bool dev_up;

 if (!ENA_FLAG_ISSET(ENA_FLAG_DEVICE_RUNNING, adapter))
  return;

 if_link_state_change(ifp, LINK_STATE_DOWN);

 callout_drain(&adapter->timer_service);

 dev_up = ENA_FLAG_ISSET(ENA_FLAG_DEV_UP, adapter);
 if (dev_up)
  ENA_FLAG_SET_ATOMIC(ENA_FLAG_DEV_UP_BEFORE_RESET, adapter);
 else
  ENA_FLAG_CLEAR_ATOMIC(ENA_FLAG_DEV_UP_BEFORE_RESET, adapter);

 if (!graceful)
  ena_com_set_admin_running_state(ena_dev, 0);

 if (ENA_FLAG_ISSET(ENA_FLAG_DEV_UP, adapter))
  ena_down(adapter);





 if (!(ENA_FLAG_ISSET(ENA_FLAG_TRIGGER_RESET, adapter) && dev_up))
  ena_com_dev_reset(adapter->ena_dev, adapter->reset_reason);

 ena_free_mgmnt_irq(adapter);

 ena_disable_msix(adapter);

 ena_com_abort_admin_commands(ena_dev);

 ena_com_wait_for_abort_completion(ena_dev);

 ena_com_admin_destroy(ena_dev);

 ena_com_mmio_reg_read_request_destroy(ena_dev);

 adapter->reset_reason = ENA_REGS_RESET_NORMAL;

 ENA_FLAG_CLEAR_ATOMIC(ENA_FLAG_TRIGGER_RESET, adapter);
 ENA_FLAG_CLEAR_ATOMIC(ENA_FLAG_DEVICE_RUNNING, adapter);
}
