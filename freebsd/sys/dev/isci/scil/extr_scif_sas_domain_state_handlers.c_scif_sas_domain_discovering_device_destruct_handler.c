
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int remote_device_list; } ;
struct TYPE_5__ {int state_machine; } ;
typedef int SCI_STATUS ;
typedef int SCI_BASE_REMOTE_DEVICE_T ;
typedef TYPE_1__ SCI_BASE_DOMAIN_T ;
typedef TYPE_2__ SCIF_SAS_DOMAIN_T ;


 int SCIF_LOG_OBJECT_DOMAIN ;
 int SCIF_LOG_WARNING (int ) ;
 int SCI_SUCCESS ;
 int sci_abstract_list_erase (int *,int *) ;
 int sci_base_object_get_logger (TYPE_1__*) ;
 int sci_base_state_machine_get_state (int *) ;

__attribute__((used)) static
SCI_STATUS scif_sas_domain_discovering_device_destruct_handler(
   SCI_BASE_DOMAIN_T * domain,
   SCI_BASE_REMOTE_DEVICE_T * remote_device
)
{
   SCIF_SAS_DOMAIN_T * fw_domain = (SCIF_SAS_DOMAIN_T *)domain;

   SCIF_LOG_WARNING((
      sci_base_object_get_logger(domain),
      SCIF_LOG_OBJECT_DOMAIN,
      "Domain:0x%x Device:0x%x State:0x%x device destruct in domain DISCOVERING state\n",
      domain, remote_device,
      sci_base_state_machine_get_state(&domain->state_machine)
   ));


   sci_abstract_list_erase(
      &(fw_domain->remote_device_list),
      remote_device
   );

   return SCI_SUCCESS;
}
