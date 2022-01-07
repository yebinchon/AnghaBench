
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ISCI_DOMAIN {int dummy; } ;
struct ISCI_CONTROLLER {int dummy; } ;
typedef scalar_t__ SCI_STATUS ;
typedef int SCI_DOMAIN_HANDLE_T ;
typedef int SCI_CONTROLLER_HANDLE_T ;


 scalar_t__ SCI_SUCCESS ;
 int isci_controller_domain_discovery_complete (struct ISCI_CONTROLLER*,struct ISCI_DOMAIN*) ;
 int isci_log_message (int ,char*,char*,scalar_t__) ;
 scalar_t__ sci_object_get_association (int ) ;

void
scif_cb_domain_discovery_complete(SCI_CONTROLLER_HANDLE_T controller,
    SCI_DOMAIN_HANDLE_T domain, SCI_STATUS completion_status)
{

 if(completion_status != SCI_SUCCESS)
  isci_log_message(0, "ISCI",
      "scif_cb_domain_discovery_complete status = 0x%x\n",
      completion_status);

 isci_controller_domain_discovery_complete(
     (struct ISCI_CONTROLLER *)sci_object_get_association(controller),
     (struct ISCI_DOMAIN *) sci_object_get_association(domain));
}
