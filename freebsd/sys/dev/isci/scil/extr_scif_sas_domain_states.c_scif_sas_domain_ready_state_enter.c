
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ previous_state_id; } ;
struct TYPE_11__ {TYPE_7__ state_machine; } ;
struct TYPE_10__ {scalar_t__ status; } ;
struct TYPE_12__ {scalar_t__ broadcast_change_count; int core_object; TYPE_2__ parent; int controller; TYPE_1__ operation; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_3__ SCIF_SAS_DOMAIN_T ;


 int SCIF_LOG_OBJECT_DOMAIN ;
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_TRACE (int ) ;
 scalar_t__ SCI_BASE_DOMAIN_STATE_DISCOVERING ;
 int SCI_BASE_DOMAIN_STATE_READY ;
 scalar_t__ SCI_BASE_DOMAIN_STATE_STARTING ;
 scalar_t__ SCI_FAILURE_TIMEOUT ;
 int SET_STATE_HANDLER (TYPE_3__*,int ,int ) ;
 int sci_base_object_get_logger (TYPE_3__*) ;
 int sci_base_state_machine_change_state (TYPE_7__*,scalar_t__) ;
 int scic_port_enable_broadcast_change_notification (int ) ;
 int scif_cb_domain_change_notification (int ,TYPE_3__*) ;
 int scif_cb_domain_ready (int ,TYPE_3__*) ;
 int scif_sas_domain_state_handler_table ;
 int scif_sas_domain_transition_from_discovering_state (TYPE_3__*) ;

__attribute__((used)) static
void scif_sas_domain_ready_state_enter(
   SCI_BASE_OBJECT_T * object
)
{
   SCIF_SAS_DOMAIN_T * fw_domain = (SCIF_SAS_DOMAIN_T *)object;

   SET_STATE_HANDLER(
      fw_domain,
      scif_sas_domain_state_handler_table,
      SCI_BASE_DOMAIN_STATE_READY
   );

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_domain),
      SCIF_LOG_OBJECT_DOMAIN | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_domain_ready_state_enter(0x%x) enter\n",
      fw_domain
   ));

   if (fw_domain->parent.state_machine.previous_state_id
       == SCI_BASE_DOMAIN_STATE_STARTING)
   {
      scif_cb_domain_ready(fw_domain->controller, fw_domain);






      scif_cb_domain_change_notification(fw_domain->controller, fw_domain);
   }
   else if (fw_domain->parent.state_machine.previous_state_id
            == SCI_BASE_DOMAIN_STATE_DISCOVERING)
   {




      if (fw_domain->operation.status == SCI_FAILURE_TIMEOUT)
         fw_domain->broadcast_change_count = 0;



      if (fw_domain->broadcast_change_count == 0)
      {
         scif_sas_domain_transition_from_discovering_state(fw_domain);
         scif_cb_domain_ready(fw_domain->controller, fw_domain);
      }
      else
      {



         sci_base_state_machine_change_state(
            &fw_domain->parent.state_machine, SCI_BASE_DOMAIN_STATE_DISCOVERING
         );
      }



      scic_port_enable_broadcast_change_notification(fw_domain->core_object);
   }
}
