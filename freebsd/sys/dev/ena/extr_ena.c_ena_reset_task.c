
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_adapter {int ioctl_sx; int pdev; } ;


 int ENA_FLAG_ISSET (int ,struct ena_adapter*) ;
 int ENA_FLAG_TRIGGER_RESET ;
 int device_printf (int ,char*) ;
 int ena_destroy_device (struct ena_adapter*,int) ;
 int ena_restore_device (struct ena_adapter*) ;
 int sx_unlock (int *) ;
 int sx_xlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
ena_reset_task(void *arg, int pending)
{
 struct ena_adapter *adapter = (struct ena_adapter *)arg;

 if (unlikely(!ENA_FLAG_ISSET(ENA_FLAG_TRIGGER_RESET, adapter))) {
  device_printf(adapter->pdev,
      "device reset scheduled but trigger_reset is off\n");
  return;
 }

 sx_xlock(&adapter->ioctl_sx);
 ena_destroy_device(adapter, 0);
 ena_restore_device(adapter);
 sx_unlock(&adapter->ioctl_sx);
}
