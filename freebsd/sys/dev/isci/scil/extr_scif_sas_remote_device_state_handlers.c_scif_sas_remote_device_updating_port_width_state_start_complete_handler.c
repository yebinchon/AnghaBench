
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int state_machine; } ;
struct TYPE_6__ {scalar_t__ destination_state; scalar_t__ device_port_width; TYPE_1__ parent; int core_object; } ;
typedef int SCI_STATUS ;
typedef TYPE_2__ SCIF_SAS_REMOTE_DEVICE_T ;


 int SCIF_LOG_INFO (int ) ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_SAS_REMOTE_DEVICE_CORE_OP_TIMEOUT ;
 scalar_t__ SCIF_SAS_REMOTE_DEVICE_DESTINATION_STATE_STOPPING ;
 int SCI_BASE_REMOTE_DEVICE_STATE_READY ;
 int SCI_BASE_REMOTE_DEVICE_STATE_STOPPING ;
 int sci_base_object_get_logger (TYPE_2__*) ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int sci_base_state_machine_get_state (int *) ;
 scalar_t__ scic_remote_device_get_port_width (int ) ;
 int scic_remote_device_stop (int ,int ) ;

__attribute__((used)) static
void scif_sas_remote_device_updating_port_width_state_start_complete_handler(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device,
   SCI_STATUS completion_status
)
{
   SCIF_LOG_INFO((
      sci_base_object_get_logger(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE,
      "RemoteDevice:0x%x updating port width state start complete handler\n",
      fw_device,
      sci_base_state_machine_get_state(&fw_device->parent.state_machine)
   ));

   if ( fw_device->destination_state
           == SCIF_SAS_REMOTE_DEVICE_DESTINATION_STATE_STOPPING )
   {



      sci_base_state_machine_change_state(
         &fw_device->parent.state_machine,
         SCI_BASE_REMOTE_DEVICE_STATE_STOPPING
      );
   }
   else if ( scic_remote_device_get_port_width(fw_device->core_object)
                != fw_device->device_port_width
            && fw_device->device_port_width != 0)
   {
      scic_remote_device_stop(
         fw_device->core_object,
         SCIF_SAS_REMOTE_DEVICE_CORE_OP_TIMEOUT
      );
   }
   else
   {

      sci_base_state_machine_change_state(
         &fw_device->parent.state_machine,
         SCI_BASE_REMOTE_DEVICE_STATE_READY
      );
   }
}
