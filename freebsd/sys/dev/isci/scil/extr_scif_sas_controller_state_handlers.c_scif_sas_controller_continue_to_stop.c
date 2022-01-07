
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int state_machine; } ;
struct TYPE_7__ {TYPE_1__ parent; int core_object; } ;
typedef scalar_t__ SCI_STATUS ;
typedef TYPE_2__ SCIF_SAS_CONTROLLER_T ;


 int SCIF_LOG_ERROR (int ) ;
 int SCIF_LOG_OBJECT_CONTROLLER ;
 int SCIF_LOG_OBJECT_SHUTDOWN ;
 int SCIF_LOG_TRACE (int ) ;
 int SCI_BASE_CONTROLLER_STATE_FAILED ;
 scalar_t__ SCI_SUCCESS ;
 int sci_base_object_get_logger (TYPE_2__*) ;
 int sci_base_state_machine_change_state (int *,int ) ;
 scalar_t__ scic_controller_stop (int ,int ) ;
 scalar_t__ scif_sas_controller_stop_domains (TYPE_2__*) ;

SCI_STATUS scif_sas_controller_continue_to_stop(
   SCIF_SAS_CONTROLLER_T * fw_controller
)
{
   SCI_STATUS status;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_controller),
      SCIF_LOG_OBJECT_CONTROLLER | SCIF_LOG_OBJECT_SHUTDOWN,
      "scif_sas_controller_continue_to_stop (0x%x).\n",
      fw_controller
   ));


   status = scif_sas_controller_stop_domains(fw_controller);

   if (status == SCI_SUCCESS)
   {

      status = scic_controller_stop(fw_controller->core_object, 0);

      if (status != SCI_SUCCESS)
      {
         SCIF_LOG_ERROR((
            sci_base_object_get_logger(fw_controller),
            SCIF_LOG_OBJECT_CONTROLLER | SCIF_LOG_OBJECT_SHUTDOWN,
            "Controller:0x%x Status:0x%x unable to stop controller.\n",
            fw_controller, status
         ));

         sci_base_state_machine_change_state(
            &fw_controller->parent.state_machine,
            SCI_BASE_CONTROLLER_STATE_FAILED
         );
      }
   }
   else
   {
      SCIF_LOG_ERROR((
         sci_base_object_get_logger(fw_controller),
         SCIF_LOG_OBJECT_CONTROLLER | SCIF_LOG_OBJECT_SHUTDOWN,
         "Controller:0x%x Status:0x%x unable to stop domains.\n",
         fw_controller, status
      ));

      sci_base_state_machine_change_state(
         &fw_controller->parent.state_machine,
         SCI_BASE_CONTROLLER_STATE_FAILED
      );
   }

   return status;
}
