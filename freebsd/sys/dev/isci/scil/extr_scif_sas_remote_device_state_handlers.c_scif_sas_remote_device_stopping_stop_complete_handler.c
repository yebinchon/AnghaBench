
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int state_machine; } ;
struct TYPE_8__ {TYPE_2__* domain; TYPE_1__ parent; } ;
struct TYPE_7__ {int controller; } ;
typedef scalar_t__ SCI_STATUS ;
typedef TYPE_3__ SCIF_SAS_REMOTE_DEVICE_T ;


 int SCIF_LOG_ERROR (int ) ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE_CONFIG ;
 int SCI_BASE_REMOTE_DEVICE_STATE_STOPPED ;
 int SCI_CONTROLLER_REMOTE_DEVICE_ERROR ;
 scalar_t__ SCI_SUCCESS ;
 int sci_base_object_get_logger (TYPE_3__*) ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int scif_cb_controller_error (int ,int ) ;

__attribute__((used)) static
void scif_sas_remote_device_stopping_stop_complete_handler(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device,
   SCI_STATUS completion_status
)
{


   sci_base_state_machine_change_state(
      &fw_device->parent.state_machine,
      SCI_BASE_REMOTE_DEVICE_STATE_STOPPED
   );

   if (completion_status != SCI_SUCCESS)
   {
      SCIF_LOG_ERROR((
         sci_base_object_get_logger(fw_device),
         SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_REMOTE_DEVICE_CONFIG,
         "Device:0x%x Status:0x%x failed to stop core device\n",
         fw_device, completion_status
      ));



      scif_cb_controller_error(fw_device->domain->controller,
              SCI_CONTROLLER_REMOTE_DEVICE_ERROR);
   }
}
