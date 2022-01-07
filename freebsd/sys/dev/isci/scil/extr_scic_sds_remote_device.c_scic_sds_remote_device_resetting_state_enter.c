
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rnc; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_1__ SCIC_SDS_REMOTE_DEVICE_T ;


 int SCI_BASE_REMOTE_DEVICE_STATE_RESETTING ;
 int SCI_SOFTWARE_SUSPENSION ;
 int SET_STATE_HANDLER (TYPE_1__*,int ,int ) ;
 int scic_sds_remote_device_state_handler_table ;
 int scic_sds_remote_node_context_suspend (int ,int ,int *,int *) ;

__attribute__((used)) static
void scic_sds_remote_device_resetting_state_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_REMOTE_DEVICE_T *this_device = (SCIC_SDS_REMOTE_DEVICE_T *)object;

   SET_STATE_HANDLER(
      this_device,
      scic_sds_remote_device_state_handler_table,
      SCI_BASE_REMOTE_DEVICE_STATE_RESETTING
   );

   scic_sds_remote_node_context_suspend(
      this_device->rnc, SCI_SOFTWARE_SUSPENSION, ((void*)0), ((void*)0));
}
