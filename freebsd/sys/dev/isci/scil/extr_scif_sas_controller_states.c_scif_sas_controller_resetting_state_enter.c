
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int state_machine; } ;
struct TYPE_6__ {scalar_t__ operation_status; TYPE_1__ parent; int core_object; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_2__ SCIF_SAS_CONTROLLER_T ;


 int SCIF_LOG_ERROR (int ) ;
 int SCIF_LOG_OBJECT_CONTROLLER ;
 int SCI_BASE_CONTROLLER_STATE_FAILED ;
 int SCI_BASE_CONTROLLER_STATE_RESET ;
 int SCI_BASE_CONTROLLER_STATE_RESETTING ;
 scalar_t__ SCI_SUCCESS ;
 int SET_STATE_HANDLER (TYPE_2__*,int ,int ) ;
 int sci_base_object_get_logger (TYPE_2__*) ;
 int sci_base_state_machine_change_state (int *,int ) ;
 scalar_t__ scic_controller_reset (int ) ;
 int scif_sas_controller_state_handler_table ;

__attribute__((used)) static
void scif_sas_controller_resetting_state_enter(
   SCI_BASE_OBJECT_T * object
)
{
   SCIF_SAS_CONTROLLER_T * fw_controller = (SCIF_SAS_CONTROLLER_T *)object;

   SET_STATE_HANDLER(
      fw_controller,
      scif_sas_controller_state_handler_table,
      SCI_BASE_CONTROLLER_STATE_RESETTING
   );


   fw_controller->operation_status = scic_controller_reset(
                                        fw_controller->core_object
                                     );
   if (fw_controller->operation_status == SCI_SUCCESS)
   {

      sci_base_state_machine_change_state(
         &fw_controller->parent.state_machine,
         SCI_BASE_CONTROLLER_STATE_RESET
      );
   }
   else
   {
      SCIF_LOG_ERROR((
         sci_base_object_get_logger(fw_controller),
         SCIF_LOG_OBJECT_CONTROLLER,
         "Controller: unable to successfully reset controller.\n"
      ));

      sci_base_state_machine_change_state(
         &fw_controller->parent.state_machine,
         SCI_BASE_CONTROLLER_STATE_FAILED
      );
   }
}
