
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_adapter {int ioctl_sx; } ;


 int ENA_FLAG_DEV_UP ;
 int ENA_FLAG_ISSET (int ,struct ena_adapter*) ;
 int ena_up (struct ena_adapter*) ;
 int sx_unlock (int *) ;
 int sx_xlock (int *) ;

__attribute__((used)) static void
ena_init(void *arg)
{
 struct ena_adapter *adapter = (struct ena_adapter *)arg;

 if (!ENA_FLAG_ISSET(ENA_FLAG_DEV_UP, adapter)) {
  sx_xlock(&adapter->ioctl_sx);
  ena_up(adapter);
  sx_unlock(&adapter->ioctl_sx);
 }
}
