
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SCIC_SDS_REMOTE_NODE_CONTEXT {int state_machine; int device; } ;
typedef int U32 ;
typedef int SCI_STATUS ;


 int SCIC_LOG_INFO (int ) ;
 int SCIC_LOG_OBJECT_SMP_REMOTE_TARGET ;
 int SCIC_LOG_OBJECT_SSP_REMOTE_TARGET ;
 int SCIC_LOG_OBJECT_STP_REMOTE_TARGET ;
 int SCIC_LOG_WARNING (int ) ;
 int SCIC_SDS_REMOTE_NODE_CONTEXT_READY_STATE ;
 int SCI_FAILURE ;
 int SCI_SUCCESS ;
 scalar_t__ SCU_EVENT_POST_RCN_RELEASE ;


 int sci_base_object_get_logger (int ) ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int sci_base_state_machine_get_state (int *) ;
 scalar_t__ scu_get_event_code (int ) ;
 int scu_get_event_type (int ) ;

__attribute__((used)) static
SCI_STATUS scic_sds_remote_node_context_resuming_state_event_handler(
   struct SCIC_SDS_REMOTE_NODE_CONTEXT * this_rnc,
   U32 event_code
)
{
   SCI_STATUS status;

   if (scu_get_event_code(event_code) == SCU_EVENT_POST_RCN_RELEASE)
   {
      status = SCI_SUCCESS;

      sci_base_state_machine_change_state(
         &this_rnc->state_machine,
         SCIC_SDS_REMOTE_NODE_CONTEXT_READY_STATE
            );
   }
   else
   {
      switch (scu_get_event_type(event_code))
      {
         case 129:
         case 128:


            SCIC_LOG_INFO((
               sci_base_object_get_logger(this_rnc->device),
               SCIC_LOG_OBJECT_SSP_REMOTE_TARGET |
                  SCIC_LOG_OBJECT_SMP_REMOTE_TARGET |
                  SCIC_LOG_OBJECT_STP_REMOTE_TARGET,
               "SCIC Remote Node Context 0x%x was suspeneded by hardware while being resumed.\n",
               this_rnc
                  ));
            status = SCI_SUCCESS;
            break;

         default:
            SCIC_LOG_WARNING((
               sci_base_object_get_logger(this_rnc->device),
               SCIC_LOG_OBJECT_SSP_REMOTE_TARGET |
                  SCIC_LOG_OBJECT_SMP_REMOTE_TARGET |
                  SCIC_LOG_OBJECT_STP_REMOTE_TARGET,
               "SCIC Remote Node Context 0x%x requested to process event 0x%x while in state %d.\n",
               this_rnc, event_code, sci_base_state_machine_get_state(&this_rnc->state_machine)
                  ));
            status = SCI_FAILURE;
            break;
      }
   }

   return status;
}
