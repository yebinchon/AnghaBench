
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SCIC_SDS_REMOTE_NODE_CONTEXT {int state_machine; int device; void* suspension_code; } ;
typedef int U32 ;
typedef int SCI_STATUS ;


 int SCIC_LOG_OBJECT_SMP_REMOTE_TARGET ;
 int SCIC_LOG_OBJECT_SSP_REMOTE_TARGET ;
 int SCIC_LOG_OBJECT_STP_REMOTE_TARGET ;
 int SCIC_LOG_WARNING (int ) ;
 int SCIC_SDS_REMOTE_NODE_CONTEXT_TX_RX_SUSPENDED_STATE ;
 int SCIC_SDS_REMOTE_NODE_CONTEXT_TX_SUSPENDED_STATE ;
 int SCI_FAILURE ;
 int SCI_SUCCESS ;


 int sci_base_object_get_logger (int ) ;
 int sci_base_state_machine_change_state (int *,int ) ;
 int sci_base_state_machine_get_state (int *) ;
 void* scu_get_event_specifier (int ) ;
 int scu_get_event_type (int ) ;

__attribute__((used)) static
SCI_STATUS scic_sds_remote_node_context_ready_state_event_handler(
   struct SCIC_SDS_REMOTE_NODE_CONTEXT * this_rnc,
   U32 event_code
)
{
   SCI_STATUS status;

   switch (scu_get_event_type(event_code))
   {
      case 129:
         sci_base_state_machine_change_state(
            &this_rnc->state_machine,
            SCIC_SDS_REMOTE_NODE_CONTEXT_TX_SUSPENDED_STATE
               );

         this_rnc->suspension_code = scu_get_event_specifier(event_code);
         status = SCI_SUCCESS;
         break;

      case 128:
         sci_base_state_machine_change_state(
            &this_rnc->state_machine,
            SCIC_SDS_REMOTE_NODE_CONTEXT_TX_RX_SUSPENDED_STATE
               );

         this_rnc->suspension_code = scu_get_event_specifier(event_code);
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

   return status;
}
