
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rnc; } ;
typedef scalar_t__ SCI_STATUS ;
typedef int SCI_BASE_REMOTE_DEVICE_T ;
typedef TYPE_1__ SCIC_SDS_REMOTE_DEVICE_T ;


 int SCI_BASE_REMOTE_DEVICE_STATE_STARTING ;
 scalar_t__ SCI_SUCCESS ;
 int sci_base_state_machine_change_state (int ,int ) ;
 int scic_sds_remote_device_get_base_state_machine (TYPE_1__*) ;
 int scic_sds_remote_device_resume_complete_handler ;
 scalar_t__ scic_sds_remote_node_context_resume (int ,int ,TYPE_1__*) ;

__attribute__((used)) static
SCI_STATUS scic_sds_remote_device_stopped_state_start_handler(
   SCI_BASE_REMOTE_DEVICE_T *device
)
{
   SCI_STATUS status;
   SCIC_SDS_REMOTE_DEVICE_T *this_device = (SCIC_SDS_REMOTE_DEVICE_T *)device;

   status = scic_sds_remote_node_context_resume(
               this_device->rnc,
               scic_sds_remote_device_resume_complete_handler,
               this_device
            );

   if (status == SCI_SUCCESS)
   {
      sci_base_state_machine_change_state(
         scic_sds_remote_device_get_base_state_machine(this_device),
         SCI_BASE_REMOTE_DEVICE_STATE_STARTING
      );
   }

   return status;
}
