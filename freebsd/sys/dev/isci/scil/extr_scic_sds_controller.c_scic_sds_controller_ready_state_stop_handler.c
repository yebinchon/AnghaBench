
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_3__ {int timeout_timer; } ;
typedef int SCI_STATUS ;
typedef int SCI_BASE_CONTROLLER_T ;
typedef TYPE_1__ SCIC_SDS_CONTROLLER_T ;


 int SCI_BASE_CONTROLLER_STATE_STOPPING ;
 int SCI_SUCCESS ;
 int sci_base_state_machine_change_state (int ,int ) ;
 int scic_cb_timer_start (int *,int ,int ) ;
 int scic_sds_controller_get_base_state_machine (TYPE_1__*) ;

__attribute__((used)) static
SCI_STATUS scic_sds_controller_ready_state_stop_handler(
   SCI_BASE_CONTROLLER_T *controller,
   U32 timeout
)
{
   SCIC_SDS_CONTROLLER_T *this_controller;
   this_controller = (SCIC_SDS_CONTROLLER_T *)controller;


   if (timeout != 0)
      scic_cb_timer_start(controller, this_controller->timeout_timer, timeout);

   sci_base_state_machine_change_state(
      scic_sds_controller_get_base_state_machine(this_controller),
      SCI_BASE_CONTROLLER_STATE_STOPPING
   );

   return SCI_SUCCESS;
}
