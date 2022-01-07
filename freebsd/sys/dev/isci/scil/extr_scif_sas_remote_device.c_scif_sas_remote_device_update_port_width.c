
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ U8 ;
struct TYPE_8__ {scalar_t__ current_state_id; } ;
struct TYPE_6__ {TYPE_4__ state_machine; } ;
struct TYPE_7__ {scalar_t__ device_port_width; int destination_state; TYPE_1__ parent; } ;
typedef int SCI_STATUS ;
typedef TYPE_2__ SCIF_SAS_REMOTE_DEVICE_T ;


 int SCIF_LOG_INFO (int ) ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_SAS_REMOTE_DEVICE_DESTINATION_STATE_UPDATING_PORT_WIDTH ;
 scalar_t__ SCI_BASE_REMOTE_DEVICE_STATE_READY ;
 scalar_t__ SCI_BASE_REMOTE_DEVICE_STATE_STARTING ;
 int SCI_BASE_REMOTE_DEVICE_STATE_UPDATING_PORT_WIDTH ;
 int SCI_FAILURE_INVALID_STATE ;
 int SCI_SUCCESS ;
 int sci_base_object_get_logger (TYPE_2__*) ;
 int sci_base_state_machine_change_state (TYPE_4__*,int ) ;

SCI_STATUS scif_sas_remote_device_update_port_width(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device,
   U8 new_port_width
)
{
   SCIF_LOG_INFO((
      sci_base_object_get_logger(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE,
      "scif_sas_remote_device_update_port_width (0x%x, 0x%x) enter\n",
      fw_device, new_port_width
   ));

   fw_device->device_port_width = new_port_width;



   if (fw_device->parent.state_machine.current_state_id == SCI_BASE_REMOTE_DEVICE_STATE_READY)
   {
      if (fw_device->device_port_width != 0)
      {

         sci_base_state_machine_change_state(
            &fw_device->parent.state_machine,
            SCI_BASE_REMOTE_DEVICE_STATE_UPDATING_PORT_WIDTH
         );
      }

      return SCI_SUCCESS;
   }
   else if (fw_device->parent.state_machine.current_state_id ==
               SCI_BASE_REMOTE_DEVICE_STATE_STARTING)
   {
      fw_device->destination_state =
         SCIF_SAS_REMOTE_DEVICE_DESTINATION_STATE_UPDATING_PORT_WIDTH;
   }

   return SCI_FAILURE_INVALID_STATE;
}
