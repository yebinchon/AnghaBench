
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ current_state_id; } ;
struct TYPE_4__ {int task_request_count; int request_count; TYPE_3__ ready_substate_machine; } ;
typedef int SCI_STATUS ;
typedef int SCIF_SAS_TASK_REQUEST_T ;
typedef TYPE_1__ SCIF_SAS_REMOTE_DEVICE_T ;


 scalar_t__ SCIF_SAS_REMOTE_DEVICE_READY_SUBSTATE_TASK_MGMT ;
 int SCI_SUCCESS ;
 int sci_base_state_machine_change_state (TYPE_3__*,scalar_t__) ;

__attribute__((used)) static
SCI_STATUS scif_sas_remote_device_start_task_request(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device,
   SCIF_SAS_TASK_REQUEST_T * fw_task
)
{

   if (fw_device->ready_substate_machine.current_state_id
       != SCIF_SAS_REMOTE_DEVICE_READY_SUBSTATE_TASK_MGMT)
   {
      sci_base_state_machine_change_state(
         &fw_device->ready_substate_machine,
         SCIF_SAS_REMOTE_DEVICE_READY_SUBSTATE_TASK_MGMT
      );
   }

   fw_device->request_count++;
   fw_device->task_request_count++;

   return SCI_SUCCESS;
}
