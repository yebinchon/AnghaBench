
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int state_machine; } ;
struct TYPE_7__ {TYPE_2__ parent; TYPE_1__* domain; } ;
struct TYPE_5__ {int device_start_in_progress_count; } ;
typedef int SCI_STATUS ;
typedef int SCI_BASE_REMOTE_DEVICE_T ;
typedef TYPE_3__ SCIF_SAS_REMOTE_DEVICE_T ;


 int SCIF_LOG_INFO (int ) ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCI_BASE_REMOTE_DEVICE_STATE_STOPPING ;
 int SCI_SUCCESS ;
 int sci_base_object_get_logger (TYPE_3__*) ;
 int sci_base_state_machine_change_state (int *,int ) ;

__attribute__((used)) static
SCI_STATUS
scif_sas_remote_device_starting_state_general_stop_handler(
   SCI_BASE_REMOTE_DEVICE_T * remote_device
)
{
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = (SCIF_SAS_REMOTE_DEVICE_T *)
                                          remote_device;

   SCIF_LOG_INFO((
      sci_base_object_get_logger(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE,
      "RemoteDevice:0x%x starting device requested to stop\n",
      fw_device
   ));

   fw_device->domain->device_start_in_progress_count--;

   sci_base_state_machine_change_state(
      &fw_device->parent.state_machine, SCI_BASE_REMOTE_DEVICE_STATE_STOPPING
   );

   return SCI_SUCCESS;
}
