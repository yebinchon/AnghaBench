
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int task_context_buffer; int io_tag; } ;
typedef TYPE_1__ SCIC_SDS_REQUEST_T ;
typedef int SCIC_SDS_CONTROLLER_T ;


 int SCI_FIELD_OFFSET (int,int ) ;
 int SCU_TASK_CONTEXT_T ;
 int memcpy (int,int ,int ) ;
 int scic_sds_controller_get_task_context_buffer (int *,int ) ;
 int sgl_snapshot_ac ;
 int task_context_buffer ;

void scic_sds_controller_copy_task_context(
   SCIC_SDS_CONTROLLER_T *this_controller,
   SCIC_SDS_REQUEST_T *this_request
)
{
   SCU_TASK_CONTEXT_T *task_context_buffer;

   task_context_buffer = scic_sds_controller_get_task_context_buffer(
                            this_controller, this_request->io_tag
                         );

   memcpy(
      task_context_buffer,
      this_request->task_context_buffer,
      SCI_FIELD_OFFSET(SCU_TASK_CONTEXT_T, sgl_snapshot_ac)
   );




   this_request->task_context_buffer = task_context_buffer;
}
