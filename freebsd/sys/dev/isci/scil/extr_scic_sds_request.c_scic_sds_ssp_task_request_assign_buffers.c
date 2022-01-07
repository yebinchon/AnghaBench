
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ was_tag_assigned_by_user; int task_context_buffer; int * sgl_element_pair_buffer; int response_buffer; int command_buffer; } ;
typedef TYPE_1__ SCIC_SDS_REQUEST_T ;


 scalar_t__ FALSE ;
 int scic_sds_request_align_task_context_buffer (int ) ;
 int scic_sds_ssp_task_request_get_command_buffer (TYPE_1__*) ;
 int scic_sds_ssp_task_request_get_response_buffer (TYPE_1__*) ;
 int scic_sds_ssp_task_request_get_task_context_buffer (TYPE_1__*) ;

void scic_sds_ssp_task_request_assign_buffers(
   SCIC_SDS_REQUEST_T *this_request
)
{

   this_request->command_buffer =
      scic_sds_ssp_task_request_get_command_buffer(this_request);
   this_request->response_buffer =
      scic_sds_ssp_task_request_get_response_buffer(this_request);
   this_request->sgl_element_pair_buffer = ((void*)0);

   if (this_request->was_tag_assigned_by_user == FALSE)
   {
      this_request->task_context_buffer =
         scic_sds_ssp_task_request_get_task_context_buffer(this_request);
      this_request->task_context_buffer =
         scic_sds_request_align_task_context_buffer(this_request->task_context_buffer);
   }
}
