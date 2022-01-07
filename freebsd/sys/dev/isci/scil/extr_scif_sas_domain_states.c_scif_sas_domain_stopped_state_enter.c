
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ current_state_id; } ;
struct TYPE_9__ {TYPE_1__ state_machine; } ;
struct TYPE_11__ {TYPE_2__ parent; } ;
struct TYPE_10__ {TYPE_4__* controller; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_3__ SCIF_SAS_DOMAIN_T ;


 int SCIF_LOG_OBJECT_DOMAIN ;
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_TRACE (int ) ;
 scalar_t__ SCI_BASE_CONTROLLER_STATE_READY ;
 int SCI_BASE_DOMAIN_STATE_STOPPED ;
 int SET_STATE_HANDLER (TYPE_3__*,int ,int ) ;
 int sci_base_object_get_logger (TYPE_3__*) ;
 int scif_cb_domain_change_notification (TYPE_4__*,TYPE_3__*) ;
 int scif_sas_domain_state_handler_table ;

__attribute__((used)) static
void scif_sas_domain_stopped_state_enter(
   SCI_BASE_OBJECT_T * object
)
{
   SCIF_SAS_DOMAIN_T * fw_domain = (SCIF_SAS_DOMAIN_T *)object;

   SET_STATE_HANDLER(
      fw_domain,
      scif_sas_domain_state_handler_table,
      SCI_BASE_DOMAIN_STATE_STOPPED
   );

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_domain),
      SCIF_LOG_OBJECT_DOMAIN | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_domain_stopped_state_enter(0x%x) enter\n",
      fw_domain
   ));






   if(fw_domain->controller->parent.state_machine.current_state_id
         == SCI_BASE_CONTROLLER_STATE_READY)
      scif_cb_domain_change_notification(fw_domain->controller, fw_domain);
}
