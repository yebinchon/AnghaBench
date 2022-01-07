
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_BASE_OBJECT_T ;
typedef int SCIC_SDS_REMOTE_DEVICE_T ;
typedef int SCIC_SDS_CONTROLLER_T ;


 int SCIC_REMOTE_DEVICE_NOT_READY_START_REQUESTED ;
 int SCI_BASE_REMOTE_DEVICE_STATE_STARTING ;
 int SET_STATE_HANDLER (int *,int ,int ) ;
 int scic_cb_remote_device_not_ready (int *,int *,int ) ;
 int * scic_sds_remote_device_get_controller (int *) ;
 int scic_sds_remote_device_state_handler_table ;

__attribute__((used)) static
void scic_sds_remote_device_starting_state_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_CONTROLLER_T * the_controller;
   SCIC_SDS_REMOTE_DEVICE_T * this_device = (SCIC_SDS_REMOTE_DEVICE_T *)object;

   the_controller = scic_sds_remote_device_get_controller(this_device);

   SET_STATE_HANDLER(
      this_device,
      scic_sds_remote_device_state_handler_table,
      SCI_BASE_REMOTE_DEVICE_STATE_STARTING
   );

   scic_cb_remote_device_not_ready(
      the_controller,
      this_device,
      SCIC_REMOTE_DEVICE_NOT_READY_START_REQUESTED
   );
}
