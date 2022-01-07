
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int state_machine; } ;
struct TYPE_11__ {scalar_t__ io_tag; scalar_t__ was_tag_assigned_by_user; TYPE_3__ parent; int post_context; int owning_controller; TYPE_4__* task_context_buffer; } ;
struct TYPE_7__ {scalar_t__ tag; int target_port_transfer_tag; } ;
struct TYPE_8__ {TYPE_1__ ssp; } ;
struct TYPE_10__ {int protocol_type; TYPE_2__ type; int task_index; } ;
typedef TYPE_4__ SCU_TASK_CONTEXT_T ;
typedef int SCI_STATUS ;
typedef int SCI_BASE_REQUEST_T ;
typedef TYPE_5__ SCIC_SDS_REQUEST_T ;


 scalar_t__ FALSE ;
 int SCI_BASE_REQUEST_STATE_STARTED ;
 scalar_t__ SCI_CONTROLLER_INVALID_IO_TAG ;
 int SCI_FAILURE_INSUFFICIENT_RESOURCES ;
 int SCI_SUCCESS ;




 int sci_base_state_machine_change_state (int *,int ) ;
 scalar_t__ scic_controller_allocate_io_tag (int ) ;
 int scic_sds_controller_copy_task_context (int ,TYPE_5__*) ;
 int scic_sds_io_tag_get_index (scalar_t__) ;

__attribute__((used)) static
SCI_STATUS scic_sds_request_constructed_state_start_handler(
   SCI_BASE_REQUEST_T *request
)
{
   SCU_TASK_CONTEXT_T *task_context;
   SCIC_SDS_REQUEST_T *this_request = (SCIC_SDS_REQUEST_T *)request;

   if (this_request->io_tag == SCI_CONTROLLER_INVALID_IO_TAG)
   {
      this_request->io_tag =
         scic_controller_allocate_io_tag(this_request->owning_controller);
   }


   if (this_request->io_tag != SCI_CONTROLLER_INVALID_IO_TAG)
   {
      task_context = this_request->task_context_buffer;

      task_context->task_index = scic_sds_io_tag_get_index(this_request->io_tag);

      switch (task_context->protocol_type)
      {
      case 130:
      case 129:

         task_context->type.ssp.tag = this_request->io_tag;
         task_context->type.ssp.target_port_transfer_tag = 0xFFFF;
         break;

      case 128:


         break;

      case 131:

         break;

      default:

         break;
      }



      if (this_request->was_tag_assigned_by_user == FALSE)
      {
         scic_sds_controller_copy_task_context(
            this_request->owning_controller, this_request
         );
      }


      this_request->post_context |= scic_sds_io_tag_get_index(this_request->io_tag);


      sci_base_state_machine_change_state(
         &this_request->parent.state_machine,
         SCI_BASE_REQUEST_STATE_STARTED
      );

      return SCI_SUCCESS;
   }

   return SCI_FAILURE_INSUFFICIENT_RESOURCES;
}
