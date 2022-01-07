
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ started_request_count; int rnc; } ;
typedef int SCI_STATUS ;
typedef int SCI_BASE_REMOTE_DEVICE_T ;
typedef TYPE_1__ SCIC_SDS_REMOTE_DEVICE_T ;


 int SCI_BASE_REMOTE_DEVICE_STATE_STOPPING ;
 int SCI_SUCCESS ;
 int sci_base_state_machine_change_state (int ,int ) ;
 int scic_sds_cb_remote_device_rnc_destruct_complete ;
 int scic_sds_remote_device_get_base_state_machine (TYPE_1__*) ;
 int scic_sds_remote_device_terminate_requests (TYPE_1__*) ;
 int scic_sds_remote_node_context_destruct (int ,int ,TYPE_1__*) ;

SCI_STATUS scic_sds_remote_device_ready_state_stop_handler(
   SCI_BASE_REMOTE_DEVICE_T *device
)
{
   SCIC_SDS_REMOTE_DEVICE_T *this_device = (SCIC_SDS_REMOTE_DEVICE_T *)device;
   SCI_STATUS status = SCI_SUCCESS;


   sci_base_state_machine_change_state(
      scic_sds_remote_device_get_base_state_machine(this_device),
      SCI_BASE_REMOTE_DEVICE_STATE_STOPPING
   );

   if (this_device->started_request_count == 0)
   {
      scic_sds_remote_node_context_destruct(
         this_device->rnc,
         scic_sds_cb_remote_device_rnc_destruct_complete,
         this_device
      );
   }
   else
      status = scic_sds_remote_device_terminate_requests(this_device);

   return status;
}
