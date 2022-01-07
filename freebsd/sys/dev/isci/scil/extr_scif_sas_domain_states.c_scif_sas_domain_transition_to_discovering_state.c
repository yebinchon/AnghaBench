
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state_machine; } ;
struct TYPE_5__ {TYPE_1__ parent; int controller; } ;
typedef TYPE_2__ SCIF_SAS_DOMAIN_T ;


 int SCI_BASE_DOMAIN_STATE_DISCOVERING ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int scif_sas_controller_save_interrupt_coalescence (int ) ;

void scif_sas_domain_transition_to_discovering_state(
   SCIF_SAS_DOMAIN_T * fw_domain
)
{
   scif_sas_controller_save_interrupt_coalescence(fw_domain->controller);

   sci_base_state_machine_change_state(
      &fw_domain->parent.state_machine, SCI_BASE_DOMAIN_STATE_DISCOVERING
   );
}
