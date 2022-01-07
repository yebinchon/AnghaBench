
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SCIC_SDS_REMOTE_NODE_CONTEXT {int device; int state_machine; } ;
typedef int U32 ;
typedef int SCI_STATUS ;


 int SCIC_LOG_OBJECT_SMP_REMOTE_TARGET ;
 int SCIC_LOG_OBJECT_SSP_REMOTE_TARGET ;
 int SCIC_LOG_OBJECT_STP_REMOTE_TARGET ;
 int SCIC_LOG_WARNING (int ) ;
 int SCIC_SDS_REMOTE_NODE_CONTEXT_READY_STATE ;
 int SCI_FAILURE ;
 int SCI_SUCCESS ;

 int sci_base_object_get_logger (int ) ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int scu_get_event_code (int ) ;

__attribute__((used)) static
SCI_STATUS scic_sds_remote_node_context_posting_state_event_handler(
   struct SCIC_SDS_REMOTE_NODE_CONTEXT * this_rnc,
   U32 event_code
)
{
   SCI_STATUS status;

   switch (scu_get_event_code(event_code))
   {
      case 128:
         status = SCI_SUCCESS;

         sci_base_state_machine_change_state(
            &this_rnc->state_machine,
            SCIC_SDS_REMOTE_NODE_CONTEXT_READY_STATE
               );
         break;

      default:
         status = SCI_FAILURE;
         SCIC_LOG_WARNING((
            sci_base_object_get_logger(this_rnc->device),
            SCIC_LOG_OBJECT_SSP_REMOTE_TARGET |
               SCIC_LOG_OBJECT_SMP_REMOTE_TARGET |
               SCIC_LOG_OBJECT_STP_REMOTE_TARGET,
            "SCIC Remote Node Context 0x%x requested to process unexpected event 0x%x while in posting state\n",
            this_rnc, event_code
               ));
         break;
   }

   return status;
}
