
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_18__ {TYPE_1__* state_handlers; } ;
struct TYPE_17__ {int rnc; int ready_substate_machine; TYPE_4__* working_request; TYPE_6__* owning_port; } ;
struct TYPE_16__ {TYPE_3__* state_handlers; } ;
struct TYPE_14__ {scalar_t__ (* start_handler ) (int *) ;} ;
struct TYPE_15__ {TYPE_2__ parent; } ;
struct TYPE_13__ {scalar_t__ (* start_io_handler ) (TYPE_6__*,TYPE_5__*,TYPE_4__*) ;} ;
typedef scalar_t__ SCI_STATUS ;
typedef int SCI_BASE_REQUEST_T ;
typedef int SCI_BASE_REMOTE_DEVICE_T ;
typedef TYPE_4__ SCIC_SDS_REQUEST_T ;
typedef int SCIC_SDS_REMOTE_NODE_CONTEXT_CALLBACK ;
typedef TYPE_5__ SCIC_SDS_REMOTE_DEVICE_T ;


 int SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_CMD ;
 scalar_t__ SCI_FAILURE_RESET_DEVICE_PARTIAL_SUCCESS ;
 int SCI_SOFTWARE_SUSPENSION ;
 scalar_t__ SCI_SUCCESS ;
 int sci_base_state_machine_change_state (int *,int ) ;
 scalar_t__ scic_sds_remote_device_continue_request ;
 int scic_sds_remote_device_start_request (TYPE_5__*,TYPE_4__*,scalar_t__) ;
 int scic_sds_remote_node_context_resume (int ,int ,TYPE_5__*) ;
 scalar_t__ scic_sds_remote_node_context_start_task (int ,TYPE_4__*) ;
 int scic_sds_remote_node_context_suspend (int ,int ,int *,int *) ;
 scalar_t__ stub1 (TYPE_6__*,TYPE_5__*,TYPE_4__*) ;
 scalar_t__ stub2 (int *) ;

__attribute__((used)) static
SCI_STATUS scic_sds_stp_remote_device_ready_substate_start_request_handler(
   SCI_BASE_REMOTE_DEVICE_T * device,
   SCI_BASE_REQUEST_T * request
)
{
   SCI_STATUS status;
   SCIC_SDS_REMOTE_DEVICE_T * this_device = (SCIC_SDS_REMOTE_DEVICE_T *)device;
   SCIC_SDS_REQUEST_T * this_request = (SCIC_SDS_REQUEST_T *)request;


   status = this_device->owning_port->state_handlers->start_io_handler(
      this_device->owning_port,
      this_device,
      this_request
   );

   if (SCI_SUCCESS == status)
   {
      status =
         scic_sds_remote_node_context_start_task(this_device->rnc, this_request);

      if (SCI_SUCCESS == status)
      {
         status = this_request->state_handlers->parent.start_handler(request);
      }

      if (status == SCI_SUCCESS)
      {



         this_device->working_request = this_request;

         sci_base_state_machine_change_state(
            &this_device->ready_substate_machine,
            SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_CMD
         );






         scic_sds_remote_node_context_suspend(
            this_device->rnc, SCI_SOFTWARE_SUSPENSION, ((void*)0), ((void*)0));

         scic_sds_remote_node_context_resume(
            this_device->rnc,
            (SCIC_SDS_REMOTE_NODE_CONTEXT_CALLBACK)
                scic_sds_remote_device_continue_request,
            this_device);
      }

      scic_sds_remote_device_start_request(this_device,this_request,status);




      return SCI_FAILURE_RESET_DEVICE_PARTIAL_SUCCESS;
   }

   return status;
}
