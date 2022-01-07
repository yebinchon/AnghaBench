
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_10__ {TYPE_3__* working_request; int rnc; } ;
struct TYPE_9__ {TYPE_2__* state_handlers; } ;
struct TYPE_7__ {scalar_t__ complete_handler; } ;
struct TYPE_8__ {TYPE_1__ parent; } ;
typedef scalar_t__ SCI_STATUS ;
typedef int SCIC_SDS_REMOTE_NODE_CONTEXT_CALLBACK ;
typedef TYPE_4__ SCIC_SDS_REMOTE_DEVICE_T ;


 scalar_t__ SCI_SUCCESS ;
 scalar_t__ SCU_EVENT_TYPE_RNC_SUSPEND_TX ;
 scalar_t__ SCU_EVENT_TYPE_RNC_SUSPEND_TX_RX ;
 scalar_t__ scic_sds_remote_device_general_event_handler (TYPE_4__*,int ) ;
 scalar_t__ scic_sds_remote_node_context_resume (int ,int ,void*) ;
 scalar_t__ scu_get_event_type (int ) ;

__attribute__((used)) static
SCI_STATUS scic_sds_stp_remote_device_ready_atapi_error_substate_event_handler(
   SCIC_SDS_REMOTE_DEVICE_T * this_device,
   U32 event_code
)
{
   SCI_STATUS status;

   status = scic_sds_remote_device_general_event_handler(this_device, event_code);

   if (status == SCI_SUCCESS)
   {
      if (scu_get_event_type(event_code) == SCU_EVENT_TYPE_RNC_SUSPEND_TX
          || scu_get_event_type(event_code) == SCU_EVENT_TYPE_RNC_SUSPEND_TX_RX)
      {
         status = scic_sds_remote_node_context_resume(
                     this_device->rnc,
                     (SCIC_SDS_REMOTE_NODE_CONTEXT_CALLBACK)
                        this_device->working_request->state_handlers->parent.complete_handler,
                     (void *)this_device->working_request
                  );
      }
   }

   return status;
}
