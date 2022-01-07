
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ISCI_CONTROLLER {scalar_t__ is_started; } ;
typedef int SCI_DOMAIN_HANDLE_T ;
typedef int SCI_CONTROLLER_HANDLE_T ;


 int DEVICE_TIMEOUT ;
 scalar_t__ TRUE ;
 scalar_t__ sci_object_get_association (int ) ;
 int scif_domain_discover (int ,int ,int ) ;
 int scif_domain_get_suggested_discover_timeout (int ) ;

void
scif_cb_domain_change_notification(SCI_CONTROLLER_HANDLE_T controller,
    SCI_DOMAIN_HANDLE_T domain)
{
 struct ISCI_CONTROLLER *isci_controller =
     (struct ISCI_CONTROLLER *)sci_object_get_association(controller);







 if (isci_controller->is_started == TRUE)
     scif_domain_discover(domain,
         scif_domain_get_suggested_discover_timeout(domain),
         DEVICE_TIMEOUT);
}
