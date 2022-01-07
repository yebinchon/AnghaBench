
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_BASE_OBJECT_T ;
typedef int SCIC_SDS_REMOTE_DEVICE_T ;


 int SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_AWAIT_RESET ;
 int SET_STATE_HANDLER (int *,int ,int ) ;
 int scic_sds_stp_remote_device_ready_substate_handler_table ;

__attribute__((used)) static
void scic_sds_stp_remote_device_ready_await_reset_substate_enter(
   SCI_BASE_OBJECT_T * device
)
{
   SCIC_SDS_REMOTE_DEVICE_T * this_device;

   this_device = (SCIC_SDS_REMOTE_DEVICE_T *)device;

   SET_STATE_HANDLER(
      this_device,
      scic_sds_stp_remote_device_ready_substate_handler_table,
      SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_AWAIT_RESET
   );
}
