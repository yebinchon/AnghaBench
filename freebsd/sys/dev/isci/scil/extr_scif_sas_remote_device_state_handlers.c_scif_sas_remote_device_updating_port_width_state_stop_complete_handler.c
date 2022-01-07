
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int state_machine; } ;
struct TYPE_8__ {scalar_t__ destination_state; int core_object; int device_port_width; TYPE_2__ parent; TYPE_1__* domain; } ;
struct TYPE_6__ {int device_start_count; } ;
typedef int SCI_STATUS ;
typedef TYPE_3__ SCIF_SAS_REMOTE_DEVICE_T ;


 int SCIF_LOG_INFO (int ) ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_SAS_REMOTE_DEVICE_CORE_OP_TIMEOUT ;
 scalar_t__ SCIF_SAS_REMOTE_DEVICE_DESTINATION_STATE_STOPPING ;
 int SCI_BASE_REMOTE_DEVICE_STATE_STOPPED ;
 int sci_base_object_get_logger (TYPE_3__*) ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int sci_base_state_machine_get_state (int *) ;
 int scic_remote_device_set_port_width (int ,int ) ;
 int scic_remote_device_start (int ,int ) ;

__attribute__((used)) static
void scif_sas_remote_device_updating_port_width_state_stop_complete_handler(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device,
   SCI_STATUS completion_status
)
{
   SCIF_LOG_INFO((
      sci_base_object_get_logger(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE,
      "RemoteDevice:0x%x updating port width state stop complete handler\n",
      fw_device,
      sci_base_state_machine_get_state(&fw_device->parent.state_machine)
   ));

   if ( fw_device->destination_state
           == SCIF_SAS_REMOTE_DEVICE_DESTINATION_STATE_STOPPING )
   {

      fw_device->domain->device_start_count--;




      sci_base_state_machine_change_state(
         &fw_device->parent.state_machine,
         SCI_BASE_REMOTE_DEVICE_STATE_STOPPED
      );
   }
   else
   {
      scic_remote_device_set_port_width(
         fw_device->core_object,
         fw_device->device_port_width
      );



      scic_remote_device_start(
         fw_device->core_object, SCIF_SAS_REMOTE_DEVICE_CORE_OP_TIMEOUT);
   }
}
