
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ISCI_REMOTE_DEVICE {struct ISCI_DOMAIN* domain; int sci_object; } ;
struct ISCI_DOMAIN {struct ISCI_REMOTE_DEVICE* da_remote_device; } ;
typedef int SCI_SAS_IDENTIFY_ADDRESS_FRAME_PROTOCOLS_T ;
typedef int SCI_SAS_ADDRESS_T ;
typedef int SCI_DOMAIN_HANDLE_T ;
typedef int SCI_CONTROLLER_HANDLE_T ;


 scalar_t__ sci_object_get_association (int ) ;
 int sci_object_set_association (int ,struct ISCI_REMOTE_DEVICE*) ;
 int scif_remote_device_construct (int ,int *,int *) ;
 int scif_remote_device_da_construct (int ,int *,int *) ;

void
scif_cb_domain_da_device_added(SCI_CONTROLLER_HANDLE_T controller,
    SCI_DOMAIN_HANDLE_T domain, SCI_SAS_ADDRESS_T *sas_address,
    SCI_SAS_IDENTIFY_ADDRESS_FRAME_PROTOCOLS_T *protocols)
{
 struct ISCI_REMOTE_DEVICE *remote_device;
 struct ISCI_DOMAIN *isci_domain =
     (struct ISCI_DOMAIN *)sci_object_get_association(domain);







 remote_device = isci_domain->da_remote_device;

 scif_remote_device_construct(domain,
     (uint8_t*)remote_device + sizeof(struct ISCI_REMOTE_DEVICE),
     &(remote_device->sci_object));

 sci_object_set_association(remote_device->sci_object, remote_device);

 scif_remote_device_da_construct(remote_device->sci_object, sas_address,
     protocols);






 remote_device->domain = isci_domain;
}
