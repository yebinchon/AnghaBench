
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int status; int timer; } ;
struct TYPE_8__ {scalar_t__ previous_state_id; } ;
struct TYPE_9__ {TYPE_1__ state_machine; } ;
struct TYPE_11__ {TYPE_3__ operation; int controller; TYPE_2__ parent; } ;
typedef TYPE_4__ SCIF_SAS_DOMAIN_T ;


 int SCIF_LOG_OBJECT_DOMAIN ;
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_TRACE (int ) ;
 scalar_t__ SCI_BASE_DOMAIN_STATE_DISCOVERING ;
 int sci_base_object_get_logger (TYPE_4__*) ;
 int scif_cb_domain_discovery_complete (int ,TYPE_4__*,int ) ;
 int scif_cb_timer_stop (int ,int ) ;
 int scif_sas_controller_restore_interrupt_coalescence (int ) ;

__attribute__((used)) static
void scif_sas_domain_transition_from_discovering_state(
   SCIF_SAS_DOMAIN_T * fw_domain
)
{
   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_domain),
      SCIF_LOG_OBJECT_DOMAIN | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_domain_transition_from_discovering_state(0x%x) enter\n",
      fw_domain
   ));

   if (fw_domain->parent.state_machine.previous_state_id
       == SCI_BASE_DOMAIN_STATE_DISCOVERING)
   {
      scif_sas_controller_restore_interrupt_coalescence(fw_domain->controller);

      scif_cb_timer_stop(fw_domain->controller, fw_domain->operation.timer);

      scif_cb_domain_discovery_complete(
         fw_domain->controller, fw_domain, fw_domain->operation.status
      );
   }
}
