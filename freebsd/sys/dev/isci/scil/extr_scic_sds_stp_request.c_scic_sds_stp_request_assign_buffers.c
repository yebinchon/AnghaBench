
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ was_tag_assigned_by_user; int task_context_buffer; int sgl_element_pair_buffer; int response_buffer; int command_buffer; } ;
struct TYPE_8__ {TYPE_1__ parent; } ;
typedef TYPE_2__ SCIC_SDS_STP_REQUEST_T ;
typedef int SCIC_SDS_REQUEST_T ;


 scalar_t__ FALSE ;
 int scic_sds_request_align_sgl_element_buffer (int ) ;
 int scic_sds_stp_request_get_h2d_reg_buffer (TYPE_2__*) ;
 int scic_sds_stp_request_get_response_buffer (TYPE_2__*) ;
 int scic_sds_stp_request_get_sgl_element_buffer (TYPE_2__*) ;
 int scic_sds_stp_request_get_task_context_buffer (TYPE_2__*) ;

void scic_sds_stp_request_assign_buffers(
   SCIC_SDS_REQUEST_T * request
)
{
   SCIC_SDS_STP_REQUEST_T * this_request = (SCIC_SDS_STP_REQUEST_T *)request;

   this_request->parent.command_buffer =
      scic_sds_stp_request_get_h2d_reg_buffer(this_request);
   this_request->parent.response_buffer =
      scic_sds_stp_request_get_response_buffer(this_request);
   this_request->parent.sgl_element_pair_buffer =
      scic_sds_stp_request_get_sgl_element_buffer(this_request);
   this_request->parent.sgl_element_pair_buffer =
      scic_sds_request_align_sgl_element_buffer(this_request->parent.sgl_element_pair_buffer);

   if (this_request->parent.was_tag_assigned_by_user == FALSE)
   {
      this_request->parent.task_context_buffer =
         scic_sds_stp_request_get_task_context_buffer(this_request);
   }
}
