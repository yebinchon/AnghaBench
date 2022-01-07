
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_BASE_OBJECT_T ;
typedef int SCIF_SAS_REMOTE_DEVICE_T ;


 int SCI_BASE_REMOTE_DEVICE_STATE_FINAL ;
 int SET_STATE_HANDLER (int *,int ,int ) ;
 int scif_sas_remote_device_state_handler_table ;

__attribute__((used)) static
void scif_sas_remote_device_final_state_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = (SCIF_SAS_REMOTE_DEVICE_T *)object;

   SET_STATE_HANDLER(
      fw_device,
      scif_sas_remote_device_state_handler_table,
      SCI_BASE_REMOTE_DEVICE_STATE_FINAL
   );
}
