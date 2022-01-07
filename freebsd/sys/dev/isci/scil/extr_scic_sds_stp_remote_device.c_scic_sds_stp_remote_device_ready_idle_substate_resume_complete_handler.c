
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ previous_state_id; } ;
struct TYPE_6__ {TYPE_1__ ready_substate_machine; } ;
typedef TYPE_2__ SCIC_SDS_REMOTE_DEVICE_T ;


 scalar_t__ SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_NCQ ;
 int scic_cb_remote_device_ready (int ,TYPE_2__*) ;
 int scic_sds_remote_device_get_controller (TYPE_2__*) ;

__attribute__((used)) static
void scic_sds_stp_remote_device_ready_idle_substate_resume_complete_handler(
   void * user_cookie
)
{
   SCIC_SDS_REMOTE_DEVICE_T * this_device;
   this_device = (SCIC_SDS_REMOTE_DEVICE_T *)user_cookie;




   if (this_device->ready_substate_machine.previous_state_id
       != SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_NCQ)
   {
      scic_cb_remote_device_ready(
         scic_sds_remote_device_get_controller(this_device), this_device
      );
   }
}
