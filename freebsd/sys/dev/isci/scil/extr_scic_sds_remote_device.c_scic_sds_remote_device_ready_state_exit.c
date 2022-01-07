
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ready_substate_machine; scalar_t__ has_ready_substate_machine; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_1__ SCIC_SDS_REMOTE_DEVICE_T ;
typedef int SCIC_SDS_CONTROLLER_T ;


 int SCIC_REMOTE_DEVICE_NOT_READY_STOP_REQUESTED ;
 int sci_base_state_machine_stop (int *) ;
 int scic_cb_remote_device_not_ready (int *,TYPE_1__*,int ) ;
 int * scic_sds_remote_device_get_controller (TYPE_1__*) ;

__attribute__((used)) static
void scic_sds_remote_device_ready_state_exit(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_CONTROLLER_T * the_controller;
   SCIC_SDS_REMOTE_DEVICE_T * this_device = (SCIC_SDS_REMOTE_DEVICE_T *)object;

   the_controller = scic_sds_remote_device_get_controller(this_device);

   if (this_device->has_ready_substate_machine)
   {
      sci_base_state_machine_stop(&this_device->ready_substate_machine);
   }
   else
   {
      scic_cb_remote_device_not_ready(
         the_controller,
         this_device,
         SCIC_REMOTE_DEVICE_NOT_READY_STOP_REQUESTED
      );
   }
}
