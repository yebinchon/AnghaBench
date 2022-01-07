
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
 int SCIF_LOG_WARNING (int ) ;
 int SCI_FAILURE_INVALID_STATE ;
 int sci_base_object_get_logger (TYPE_1__*) ;
 int sci_base_state_machine_get_state (int *) ;

__attribute__((used)) static
SCI_STATUS scif_sas_domain_default_port_not_ready_handler(
   SCI_BASE_DOMAIN_T * domain,
   U32 reason_code
)
{
   SCIF_LOG_WARNING((
      sci_base_object_get_logger(domain),
      SCIF_LOG_OBJECT_DOMAIN,
      "Domain:0x%x State:0x%x Port Not Ready 0x%x in invalid state\n",
      domain,
      sci_base_state_machine_get_state(&domain->state_machine),
      reason_code
   ));

   return SCI_FAILURE_INVALID_STATE;
}
