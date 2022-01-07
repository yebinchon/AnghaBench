
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ISCI_REMOTE_DEVICE {struct ISCI_DOMAIN* domain; int sci_object; } ;
struct ISCI_DOMAIN {int dummy; } ;
struct ISCI_CONTROLLER {int remote_device_pool; } ;
typedef int SMP_RESPONSE_DISCOVER_T ;
typedef int SCI_REMOTE_DEVICE_HANDLE_T ;
typedef int SCI_DOMAIN_HANDLE_T ;
typedef int SCI_CONTROLLER_HANDLE_T ;


 scalar_t__ sci_object_get_association (int ) ;
 int sci_object_set_association (int ,struct ISCI_REMOTE_DEVICE*) ;
 int sci_pool_get (int ,struct ISCI_REMOTE_DEVICE*) ;
 int scif_remote_device_construct (int ,int *,int *) ;
 int scif_remote_device_ea_construct (int ,int ,int *) ;

void
scif_cb_domain_ea_device_added(SCI_CONTROLLER_HANDLE_T controller,
    SCI_DOMAIN_HANDLE_T domain, SCI_REMOTE_DEVICE_HANDLE_T containing_device,
    SMP_RESPONSE_DISCOVER_T *smp_response)
{
 struct ISCI_REMOTE_DEVICE *remote_device;
 struct ISCI_DOMAIN *isci_domain =
  (struct ISCI_DOMAIN *)sci_object_get_association(domain);
 struct ISCI_CONTROLLER *isci_controller =
  (struct ISCI_CONTROLLER *)sci_object_get_association(controller);

 sci_pool_get(isci_controller->remote_device_pool, remote_device);

 scif_remote_device_construct( domain,
     (uint8_t*)remote_device + sizeof(struct ISCI_REMOTE_DEVICE),
     &(remote_device->sci_object));

 sci_object_set_association(remote_device->sci_object, remote_device);

 scif_remote_device_ea_construct(remote_device->sci_object,
     containing_device, smp_response);





 remote_device->domain = isci_domain;
}
