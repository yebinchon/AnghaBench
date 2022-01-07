
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int state_machine; } ;
struct TYPE_8__ {TYPE_2__* domain; TYPE_1__ parent; int starting_substate_machine; } ;
struct TYPE_7__ {int controller; } ;
typedef scalar_t__ SCI_STATUS ;
typedef TYPE_3__ SCIF_SAS_REMOTE_DEVICE_T ;


 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE_CONFIG ;
 int SCIF_LOG_WARNING (int ) ;
 int SCIF_SAS_REMOTE_DEVICE_STARTING_SUBSTATE_AWAIT_READY ;
 int SCI_BASE_REMOTE_DEVICE_STATE_FAILED ;
 int SCI_CONTROLLER_REMOTE_DEVICE_ERROR ;
 scalar_t__ SCI_SUCCESS ;
 int sci_base_object_get_logger (TYPE_3__*) ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int scif_cb_controller_error (int ,int ) ;

__attribute__((used)) static
void scif_sas_remote_device_starting_await_complete_start_complete_handler(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device,
   SCI_STATUS completion_status
)
{
   if (completion_status == SCI_SUCCESS)
   {





      sci_base_state_machine_change_state(
         &fw_device->starting_substate_machine,
         SCIF_SAS_REMOTE_DEVICE_STARTING_SUBSTATE_AWAIT_READY
      );
   }
   else
   {
      SCIF_LOG_WARNING((
         sci_base_object_get_logger(fw_device),
         SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_REMOTE_DEVICE_CONFIG,
         "Device:0x%x Status:0x%x failed to start core device\n",
         fw_device
      ));

      sci_base_state_machine_change_state(
         &fw_device->parent.state_machine,
         SCI_BASE_REMOTE_DEVICE_STATE_FAILED
      );



      scif_cb_controller_error(fw_device->domain->controller,
              SCI_CONTROLLER_REMOTE_DEVICE_ERROR);
   }
}
