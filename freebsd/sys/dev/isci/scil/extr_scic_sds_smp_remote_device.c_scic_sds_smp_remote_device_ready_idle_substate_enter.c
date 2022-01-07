
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_BASE_OBJECT_T ;
typedef int SCIC_SDS_REMOTE_DEVICE_T ;


 int SCIC_SDS_SMP_REMOTE_DEVICE_READY_SUBSTATE_IDLE ;
 int SET_STATE_HANDLER (int *,int ,int ) ;
 int scic_cb_remote_device_ready (int ,int *) ;
 int scic_sds_remote_device_get_controller (int *) ;
 int scic_sds_smp_remote_device_ready_substate_handler_table ;

__attribute__((used)) static
void scic_sds_smp_remote_device_ready_idle_substate_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_REMOTE_DEVICE_T *this_device = (SCIC_SDS_REMOTE_DEVICE_T *)object;

   SET_STATE_HANDLER(
      this_device,
      scic_sds_smp_remote_device_ready_substate_handler_table,
      SCIC_SDS_SMP_REMOTE_DEVICE_READY_SUBSTATE_IDLE
   );

   scic_cb_remote_device_ready(
      scic_sds_remote_device_get_controller(this_device), this_device);
}
