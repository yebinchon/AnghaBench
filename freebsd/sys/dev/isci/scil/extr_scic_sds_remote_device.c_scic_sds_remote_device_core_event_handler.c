
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_4__ {int rnc; } ;
typedef int SCI_STATUS ;
typedef TYPE_1__ SCIC_SDS_REMOTE_DEVICE_T ;
typedef int BOOL ;


 int SCI_FAILURE_INVALID_STATE ;
 int SCI_SOFTWARE_SUSPENSION ;
 int SCI_SUCCESS ;
 int SCU_EVENT_IT_NEXUS_TIMEOUT ;




 int scic_sds_emit_event_log_message (TYPE_1__*,int ,char*,int ) ;
 int scic_sds_remote_node_context_event_handler (int ,int ) ;
 int scic_sds_remote_node_context_suspend (int ,int ,int *,int *) ;
 int scu_get_event_code (int ) ;
 int scu_get_event_type (int ) ;

__attribute__((used)) static
SCI_STATUS scic_sds_remote_device_core_event_handler(
   SCIC_SDS_REMOTE_DEVICE_T *this_device,
   U32 event_code,
   BOOL is_ready_state
)
{
   SCI_STATUS status;

   switch (scu_get_event_type(event_code))
   {
   case 130:
   case 129:
   case 128:
      status = scic_sds_remote_node_context_event_handler(this_device->rnc, event_code);
   break;
   case 131:

       if( scu_get_event_code(event_code) == SCU_EVENT_IT_NEXUS_TIMEOUT )
       {
           status = SCI_SUCCESS;


           scic_sds_remote_node_context_suspend( this_device->rnc,
                                                 SCI_SOFTWARE_SUSPENSION,
                                                 ((void*)0), ((void*)0) );

           scic_sds_emit_event_log_message(
              this_device, event_code,
                   (is_ready_state)
            ? "I_T_Nexus_Timeout event"
            : "I_T_Nexus_Timeout event in wrong state",
                   is_ready_state );

           break;
       }


   default:
      scic_sds_emit_event_log_message( this_device, event_code,
                                       (is_ready_state)
                                          ? "unexpected event"
                                          : "unexpected event in wrong state",
                                       is_ready_state );
      status = SCI_FAILURE_INVALID_STATE;
   break;
   }

   return status;
}
