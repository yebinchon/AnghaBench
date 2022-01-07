
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_BASE_OBJECT_T ;
typedef int SCIC_SDS_REMOTE_DEVICE_T ;


 int SCI_BASE_REMOTE_DEVICE_STATE_STOPPING ;
 int SET_STATE_HANDLER (int *,int ,int ) ;
 int scic_sds_remote_device_state_handler_table ;

__attribute__((used)) static
void scic_sds_remote_device_stopping_state_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_REMOTE_DEVICE_T *this_device = (SCIC_SDS_REMOTE_DEVICE_T *)object;

   SET_STATE_HANDLER(
      this_device,
      scic_sds_remote_device_state_handler_table,
      SCI_BASE_REMOTE_DEVICE_STATE_STOPPING
   );
}
