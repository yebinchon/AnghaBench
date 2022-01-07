
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ISCI_REMOTE_DEVICE {int dummy; } ;
struct ISCI_CONTROLLER {int lock; struct ISCI_REMOTE_DEVICE** remote_device; } ;


 int isci_remote_device_reset (struct ISCI_REMOTE_DEVICE*,int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
isci_sysctl_reset_remote_devices(struct ISCI_CONTROLLER *controller,
    uint32_t remote_devices_to_be_reset)
{
 uint32_t i = 0;

 while (remote_devices_to_be_reset != 0) {
  if (remote_devices_to_be_reset & 0x1) {
   struct ISCI_REMOTE_DEVICE *remote_device =
    controller->remote_device[i];

   if (remote_device != ((void*)0)) {
    mtx_lock(&controller->lock);
    isci_remote_device_reset(remote_device, ((void*)0));
    mtx_unlock(&controller->lock);
   }
  }
  remote_devices_to_be_reset >>= 1;
  i++;
 }
}
