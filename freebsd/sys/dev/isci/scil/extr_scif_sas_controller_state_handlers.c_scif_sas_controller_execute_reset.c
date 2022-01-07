
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int state_machine; } ;
struct TYPE_7__ {int operation_status; TYPE_1__ parent; } ;
typedef int SCI_STATUS ;
typedef TYPE_2__ SCIF_SAS_CONTROLLER_T ;


 int SCIF_LOG_OBJECT_CONTROLLER ;
 int SCIF_LOG_OBJECT_CONTROLLER_RESET ;
 int SCIF_LOG_TRACE (int ) ;
 int SCI_BASE_CONTROLLER_STATE_RESETTING ;
 int SCI_SUCCESS ;
 int sci_base_object_get_logger (TYPE_2__*) ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int scif_sas_controller_release_resource (TYPE_2__*) ;

__attribute__((used)) static
SCI_STATUS scif_sas_controller_execute_reset(
   SCIF_SAS_CONTROLLER_T * fw_controller
)
{
   SCI_STATUS status;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_controller),
      SCIF_LOG_OBJECT_CONTROLLER | SCIF_LOG_OBJECT_CONTROLLER_RESET,
      "scif_sas_controller_execute_reset(0x%x) enter\n",
      fw_controller
   ));


   scif_sas_controller_release_resource(fw_controller);

   sci_base_state_machine_change_state(
      &fw_controller->parent.state_machine,
      SCI_BASE_CONTROLLER_STATE_RESETTING
   );



   status = fw_controller->operation_status;
   fw_controller->operation_status = SCI_SUCCESS;

   return status;
}
