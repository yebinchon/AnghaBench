
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state_machine; } ;
struct TYPE_4__ {TYPE_1__ parent; } ;
typedef TYPE_2__ SCIC_SDS_REMOTE_DEVICE_T ;


 scalar_t__ SCI_BASE_REMOTE_DEVICE_STATE_READY ;
 int sci_base_state_machine_change_state (int *,scalar_t__) ;
 scalar_t__ sci_base_state_machine_get_state (int *) ;

__attribute__((used)) static
void scic_sds_remote_device_resume_complete_handler(
   void * user_parameter
)
{
   SCIC_SDS_REMOTE_DEVICE_T * this_device;
   this_device = (SCIC_SDS_REMOTE_DEVICE_T *)user_parameter;

   if (
         sci_base_state_machine_get_state(&this_device->parent.state_machine)
      != SCI_BASE_REMOTE_DEVICE_STATE_READY
      )
   {
      sci_base_state_machine_change_state(
         &this_device->parent.state_machine,
         SCI_BASE_REMOTE_DEVICE_STATE_READY
      );
   }
}
