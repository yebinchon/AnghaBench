
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_6__ {scalar_t__ destination_state; } ;
struct TYPE_5__ {TYPE_3__* rnc; } ;
typedef scalar_t__ SCI_STATUS ;
typedef TYPE_1__ SCIC_SDS_REMOTE_DEVICE_T ;


 scalar_t__ SCIC_SDS_REMOTE_NODE_DESTINATION_STATE_READY ;
 scalar_t__ SCI_SUCCESS ;
 scalar_t__ SCU_EVENT_TYPE_RNC_SUSPEND_TX ;
 scalar_t__ SCU_EVENT_TYPE_RNC_SUSPEND_TX_RX ;
 scalar_t__ scic_sds_remote_device_general_event_handler (TYPE_1__*,int ) ;
 scalar_t__ scic_sds_remote_node_context_resume (TYPE_3__*,int *,int *) ;
 scalar_t__ scu_get_event_type (int ) ;

__attribute__((used)) static
SCI_STATUS scic_sds_stp_remote_device_ready_idle_substate_event_handler(
   SCIC_SDS_REMOTE_DEVICE_T * this_device,
   U32 event_code
)
{
   SCI_STATUS status;

   status = scic_sds_remote_device_general_event_handler(this_device, event_code);

   if (status == SCI_SUCCESS)
   {
      if ((scu_get_event_type(event_code) == SCU_EVENT_TYPE_RNC_SUSPEND_TX
          || scu_get_event_type(event_code) == SCU_EVENT_TYPE_RNC_SUSPEND_TX_RX)
          && (this_device->rnc->destination_state != SCIC_SDS_REMOTE_NODE_DESTINATION_STATE_READY))
      {
         status = scic_sds_remote_node_context_resume(
                  this_device->rnc, ((void*)0), ((void*)0));
      }
   }

   return status;
}
