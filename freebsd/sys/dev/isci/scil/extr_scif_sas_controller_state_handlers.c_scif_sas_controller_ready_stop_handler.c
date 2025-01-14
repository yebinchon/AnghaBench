
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_9__ {scalar_t__ clear_affiliation_during_controller_stop; } ;
struct TYPE_10__ {TYPE_2__ sas; } ;
struct TYPE_8__ {int state_machine; } ;
struct TYPE_11__ {scalar_t__ current_domain_to_clear_affiliation; TYPE_3__ user_parameters; TYPE_1__ parent; } ;
typedef int SCI_STATUS ;
typedef int SCI_BASE_CONTROLLER_T ;
typedef TYPE_4__ SCIF_SAS_CONTROLLER_T ;


 int SCIF_LOG_OBJECT_CONTROLLER ;
 int SCIF_LOG_OBJECT_INITIALIZATION ;
 int SCIF_LOG_TRACE (int ) ;
 int SCI_BASE_CONTROLLER_STATE_STOPPING ;
 int SCI_SUCCESS ;
 int sci_base_object_get_logger (TYPE_4__*) ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int scif_sas_controller_clear_affiliation (TYPE_4__*) ;
 int scif_sas_controller_continue_to_stop (TYPE_4__*) ;

__attribute__((used)) static
SCI_STATUS scif_sas_controller_ready_stop_handler(
   SCI_BASE_CONTROLLER_T * controller,
   U32 timeout
)
{
   SCIF_SAS_CONTROLLER_T * fw_controller = (SCIF_SAS_CONTROLLER_T *)controller;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_controller),
      SCIF_LOG_OBJECT_CONTROLLER | SCIF_LOG_OBJECT_INITIALIZATION,
      "scif_sas_controller_ready_stop_handler(0x%x, 0x%x) enter\n",
      controller, timeout
   ));

   sci_base_state_machine_change_state(
      &fw_controller->parent.state_machine,
      SCI_BASE_CONTROLLER_STATE_STOPPING
   );

   if (fw_controller->user_parameters.sas.clear_affiliation_during_controller_stop)
   {
      fw_controller->current_domain_to_clear_affiliation = 0;



      scif_sas_controller_clear_affiliation(fw_controller);
   }
   else
      scif_sas_controller_continue_to_stop(fw_controller);


   return SCI_SUCCESS;
}
