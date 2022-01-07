
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ started_request_count; } ;
typedef TYPE_1__ SCIC_SDS_REMOTE_DEVICE_T ;


 int ASSERT (int) ;
 int SCI_BASE_REMOTE_DEVICE_STATE_STOPPED ;
 int sci_base_state_machine_change_state (int ,int ) ;
 int scic_sds_remote_device_get_base_state_machine (TYPE_1__*) ;

__attribute__((used)) static
void scic_sds_cb_remote_device_rnc_destruct_complete(
   void * user_parameter
)
{
   SCIC_SDS_REMOTE_DEVICE_T * this_device;
   this_device = (SCIC_SDS_REMOTE_DEVICE_T *)user_parameter;

   ASSERT(this_device->started_request_count == 0);

   sci_base_state_machine_change_state(
      scic_sds_remote_device_get_base_state_machine(this_device),
      SCI_BASE_REMOTE_DEVICE_STATE_STOPPED
   );
}
