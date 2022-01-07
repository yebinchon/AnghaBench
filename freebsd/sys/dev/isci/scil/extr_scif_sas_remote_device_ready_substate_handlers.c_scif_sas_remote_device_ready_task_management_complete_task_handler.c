
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ task_request_count; int ready_substate_machine; int request_count; } ;
struct TYPE_3__ {scalar_t__ affected_request_count; } ;
typedef int SCI_STATUS ;
typedef int SCI_BASE_REQUEST_T ;
typedef int SCI_BASE_REMOTE_DEVICE_T ;
typedef TYPE_1__ SCIF_SAS_TASK_REQUEST_T ;
typedef TYPE_2__ SCIF_SAS_REMOTE_DEVICE_T ;


 int SCIF_SAS_REMOTE_DEVICE_READY_SUBSTATE_OPERATIONAL ;
 int SCI_SUCCESS ;
 int sci_base_state_machine_change_state (int *,int ) ;

SCI_STATUS scif_sas_remote_device_ready_task_management_complete_task_handler(
   SCI_BASE_REMOTE_DEVICE_T * remote_device,
   SCI_BASE_REQUEST_T * task_request
)
{
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = (SCIF_SAS_REMOTE_DEVICE_T*)
                                          remote_device;

   SCIF_SAS_TASK_REQUEST_T * fw_task = (SCIF_SAS_TASK_REQUEST_T *)
                                       task_request;

   fw_device->request_count--;
   fw_device->task_request_count--;





   if ( (fw_device->task_request_count == 0)
      && (fw_task->affected_request_count == 0) )
   {
      sci_base_state_machine_change_state(
         &fw_device->ready_substate_machine,
         SCIF_SAS_REMOTE_DEVICE_READY_SUBSTATE_OPERATIONAL
      );
   }

   return SCI_SUCCESS;
}
