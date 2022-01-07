
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct ISCI_REMOTE_DEVICE {struct ISCI_DOMAIN* domain; } ;
struct ISCI_DOMAIN {int dummy; } ;
struct ISCI_CONTROLLER {struct ISCI_REMOTE_DEVICE** remote_device; } ;
typedef int SCI_DOMAIN_HANDLE_T ;
typedef int SCI_CONTROLLER_HANDLE_T ;


 size_t SCI_MAX_REMOTE_DEVICES ;
 int isci_remote_device_release_device_queue (struct ISCI_REMOTE_DEVICE*) ;
 void* sci_object_get_association (int ) ;

void
scif_cb_domain_ready(SCI_CONTROLLER_HANDLE_T controller,
    SCI_DOMAIN_HANDLE_T domain)
{
 uint32_t i;
 struct ISCI_DOMAIN *isci_domain = sci_object_get_association(domain);
 struct ISCI_CONTROLLER *isci_controller =
     sci_object_get_association(controller);

 for (i = 0; i < SCI_MAX_REMOTE_DEVICES; i++) {
  struct ISCI_REMOTE_DEVICE *remote_device =
      isci_controller->remote_device[i];

  if (remote_device != ((void*)0) &&
      remote_device->domain == isci_domain)
   isci_remote_device_release_device_queue(remote_device);
 }
}
