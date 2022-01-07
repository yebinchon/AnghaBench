
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ISCI_CONTROLLER {int initial_discovery_mask; TYPE_1__* domain; int is_started; } ;
struct TYPE_2__ {int sci_object; } ;
typedef scalar_t__ SCI_STATUS ;
typedef int SCI_DOMAIN_HANDLE_T ;
typedef int SCI_CONTROLLER_HANDLE_T ;


 int DEVICE_TIMEOUT ;
 int SCI_MAX_DOMAINS ;
 scalar_t__ SCI_SUCCESS ;
 int TRUE ;
 int isci_controller_domain_discovery_complete (struct ISCI_CONTROLLER*,TYPE_1__*) ;
 scalar_t__ sci_object_get_association (int ) ;
 scalar_t__ scif_domain_discover (int ,int ,int ) ;
 int scif_domain_get_suggested_discover_timeout (int ) ;

void scif_cb_controller_start_complete(SCI_CONTROLLER_HANDLE_T controller,
    SCI_STATUS completion_status)
{
 uint32_t index;
 struct ISCI_CONTROLLER *isci_controller = (struct ISCI_CONTROLLER *)
     sci_object_get_association(controller);

 isci_controller->is_started = TRUE;






 isci_controller->initial_discovery_mask = (1 << SCI_MAX_DOMAINS) - 1;

 for(index = 0; index < SCI_MAX_DOMAINS; index++) {
  SCI_STATUS status;
  SCI_DOMAIN_HANDLE_T domain =
      isci_controller->domain[index].sci_object;

  status = scif_domain_discover(
   domain,
   scif_domain_get_suggested_discover_timeout(domain),
   DEVICE_TIMEOUT
  );

  if (status != SCI_SUCCESS)
  {
   isci_controller_domain_discovery_complete(
       isci_controller, &isci_controller->domain[index]);
  }
 }
}
