
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int rnc; int * working_request; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_1__ SCIC_SDS_REMOTE_DEVICE_T ;


 int SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_IDLE ;
 int SET_STATE_HANDLER (TYPE_1__*,int ,int ) ;
 scalar_t__ scic_sds_remote_node_context_is_ready (int ) ;
 int scic_sds_remote_node_context_resume (int ,int (*) (TYPE_1__*),TYPE_1__*) ;
 int scic_sds_stp_remote_device_ready_idle_substate_resume_complete_handler (TYPE_1__*) ;
 int scic_sds_stp_remote_device_ready_substate_handler_table ;

__attribute__((used)) static
void scic_sds_stp_remote_device_ready_idle_substate_enter(
   SCI_BASE_OBJECT_T * device
)
{
   SCIC_SDS_REMOTE_DEVICE_T * this_device;

   this_device = (SCIC_SDS_REMOTE_DEVICE_T *)device;

   SET_STATE_HANDLER(
      this_device,
      scic_sds_stp_remote_device_ready_substate_handler_table,
      SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_IDLE
   );

   this_device->working_request = ((void*)0);

   if (scic_sds_remote_node_context_is_ready(this_device->rnc))
   {


      scic_sds_stp_remote_device_ready_idle_substate_resume_complete_handler(
         this_device
      );
   }
   else
   {
      scic_sds_remote_node_context_resume(
         this_device->rnc,
         scic_sds_stp_remote_device_ready_idle_substate_resume_complete_handler,
         this_device
      );
   }
}
