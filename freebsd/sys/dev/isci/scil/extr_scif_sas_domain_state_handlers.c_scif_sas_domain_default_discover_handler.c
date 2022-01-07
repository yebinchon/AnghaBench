
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_3__ {int state_machine; } ;
typedef int SCI_STATUS ;
typedef TYPE_1__ SCI_BASE_DOMAIN_T ;
typedef int SCIF_SAS_DOMAIN_T ;


 int SCIF_LOG_OBJECT_DOMAIN ;
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_WARNING (int ) ;
 int SCI_FAILURE_INVALID_STATE ;
 int sci_base_object_get_logger (int *) ;
 int sci_base_state_machine_get_state (int *) ;

__attribute__((used)) static
SCI_STATUS scif_sas_domain_default_discover_handler(
   SCI_BASE_DOMAIN_T * domain,
   U32 op_timeout,
   U32 device_timeout
)
{
   SCIF_LOG_WARNING((
      sci_base_object_get_logger((SCIF_SAS_DOMAIN_T *)domain),
      SCIF_LOG_OBJECT_DOMAIN | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "Domain:0x%x State:0x%x requested to discover in invalid state\n",
      domain,
      sci_base_state_machine_get_state(&domain->state_machine)
   ));

   return SCI_FAILURE_INVALID_STATE;
}
