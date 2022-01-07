
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ U32 ;
struct TYPE_6__ {int frame_type; } ;
struct TYPE_7__ {TYPE_1__ ssp; } ;
struct TYPE_8__ {int ssp_command_iu_length; scalar_t__ transfer_length_bytes; int task_type; TYPE_2__ type; } ;
typedef TYPE_3__ SCU_TASK_CONTEXT_T ;
typedef int SCI_SSP_COMMAND_IU_T ;
typedef int SCI_IO_REQUEST_DATA_DIRECTION ;
typedef int SCIC_SDS_REQUEST_T ;





 int SCI_SAS_COMMAND_FRAME ;
 int SCU_TASK_TYPE_IOREAD ;
 int SCU_TASK_TYPE_IOWRITE ;
 int scic_sds_request_build_sgl (int *) ;
 TYPE_3__* scic_sds_request_get_task_context (int *) ;
 int scu_ssp_reqeust_construct_task_context (int *,TYPE_3__*) ;

__attribute__((used)) static
void scu_ssp_io_request_construct_task_context(
   SCIC_SDS_REQUEST_T *this_request,
   SCI_IO_REQUEST_DATA_DIRECTION data_direction,
   U32 transfer_length_bytes
)
{
   SCU_TASK_CONTEXT_T *task_context;

   task_context = scic_sds_request_get_task_context(this_request);

   scu_ssp_reqeust_construct_task_context(this_request, task_context);

   task_context->ssp_command_iu_length = sizeof(SCI_SSP_COMMAND_IU_T) / sizeof(U32);
   task_context->type.ssp.frame_type = SCI_SAS_COMMAND_FRAME;

   switch (data_direction)
   {
   case 130:
   case 128:
      task_context->task_type = SCU_TASK_TYPE_IOREAD;
      break;
   case 129:
      task_context->task_type = SCU_TASK_TYPE_IOWRITE;
      break;
   }

   task_context->transfer_length_bytes = transfer_length_bytes;

   if (task_context->transfer_length_bytes > 0)
   {
      scic_sds_request_build_sgl(this_request);
   }
}
