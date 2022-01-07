
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_4__ {int state_machine; } ;
typedef int SCI_STATUS ;
typedef TYPE_1__ SCI_BASE_DOMAIN_T ;


 int SCIF_LOG_OBJECT_DOMAIN ;
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_TRACE (int ) ;
 int SCI_BASE_DOMAIN_STATE_STOPPING ;
 int SCI_SUCCESS ;
 int sci_base_object_get_logger (TYPE_1__*) ;
 int sci_base_state_machine_change_state (int *,int ) ;

__attribute__((used)) static
SCI_STATUS scif_sas_domain_discovering_port_not_ready_handler(
   SCI_BASE_DOMAIN_T * domain,
   U32 reason_code
)
{
   SCIF_LOG_TRACE((
      sci_base_object_get_logger(domain),
      SCIF_LOG_OBJECT_DOMAIN | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_domain_discovering_port_not_ready_handler(0x%x, 0x%x) enter\n",
      domain,
      reason_code
   ));



   sci_base_state_machine_change_state(
      &domain->state_machine, SCI_BASE_DOMAIN_STATE_STOPPING
   );

   return SCI_SUCCESS;
}
