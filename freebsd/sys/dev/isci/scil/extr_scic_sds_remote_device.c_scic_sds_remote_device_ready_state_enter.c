
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ready_substate_machine; scalar_t__ has_ready_substate_machine; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_1__ SCIC_SDS_REMOTE_DEVICE_T ;
typedef int SCIC_SDS_CONTROLLER_T ;


 int SCI_BASE_REMOTE_DEVICE_STATE_READY ;
 int SCI_SUCCESS ;
 int SET_STATE_HANDLER (TYPE_1__*,int ,int ) ;
 int sci_base_state_machine_start (int *) ;
 int scic_cb_remote_device_ready (int *,TYPE_1__*) ;
 int scic_cb_remote_device_start_complete (int *,TYPE_1__*,int ) ;
 int scic_sds_controller_remote_device_started (int *,TYPE_1__*) ;
 int * scic_sds_remote_device_get_controller (TYPE_1__*) ;
 int scic_sds_remote_device_state_handler_table ;

__attribute__((used)) static
void scic_sds_remote_device_ready_state_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_CONTROLLER_T * the_controller;
   SCIC_SDS_REMOTE_DEVICE_T * this_device = (SCIC_SDS_REMOTE_DEVICE_T *)object;

   the_controller = scic_sds_remote_device_get_controller(this_device);

   SET_STATE_HANDLER(
      this_device,
      scic_sds_remote_device_state_handler_table,
      SCI_BASE_REMOTE_DEVICE_STATE_READY
   );



   scic_cb_remote_device_start_complete(
      the_controller, this_device, SCI_SUCCESS
   );

   scic_sds_controller_remote_device_started(
      the_controller, this_device
   );

   if (this_device->has_ready_substate_machine)
   {
      sci_base_state_machine_start(&this_device->ready_substate_machine);
   }
   else
   {
      scic_cb_remote_device_ready(the_controller, this_device);
   }
}
