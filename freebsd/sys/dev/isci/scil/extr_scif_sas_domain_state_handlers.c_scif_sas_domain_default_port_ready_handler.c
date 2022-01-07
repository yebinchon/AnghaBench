
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state_machine; } ;
typedef int SCI_STATUS ;
typedef TYPE_1__ SCI_BASE_DOMAIN_T ;


 int SCIF_LOG_INFO (int ) ;
 int SCIF_LOG_OBJECT_DOMAIN ;
 int SCI_SUCCESS ;
 int sci_base_object_get_logger (TYPE_1__*) ;
 int sci_base_state_machine_get_state (int *) ;

__attribute__((used)) static
SCI_STATUS scif_sas_domain_default_port_ready_handler(
   SCI_BASE_DOMAIN_T * domain
)
{
   SCIF_LOG_INFO((
      sci_base_object_get_logger(domain),
      SCIF_LOG_OBJECT_DOMAIN,
      "Domain:0x%x State:0x%x port now ready\n",
      domain,
      sci_base_state_machine_get_state(&domain->state_machine)
   ));

   return SCI_SUCCESS;
}
