
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* U8 ;
typedef int U32 ;
struct TYPE_7__ {TYPE_1__* task_context_buffer; } ;
struct TYPE_6__ {void* task_type; int transfer_length_bytes; } ;
typedef TYPE_1__ SCU_TASK_CONTEXT_T ;
typedef scalar_t__ SCI_IO_REQUEST_DATA_DIRECTION ;
typedef TYPE_2__ SCIC_SDS_REQUEST_T ;


 scalar_t__ SCI_IO_REQUEST_DATA_OUT ;
 void* SCU_TASK_TYPE_DMA_IN ;
 void* SCU_TASK_TYPE_DMA_OUT ;
 int scu_sata_reqeust_construct_task_context (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static
void scic_sds_stp_optimized_request_construct(
   SCIC_SDS_REQUEST_T * this_request,
   U8 optimized_task_type,
   U32 transfer_length,
   SCI_IO_REQUEST_DATA_DIRECTION data_direction
)
{
   SCU_TASK_CONTEXT_T * task_context = this_request->task_context_buffer;


   scu_sata_reqeust_construct_task_context(this_request, task_context);


   task_context->transfer_length_bytes = transfer_length;

   if ( data_direction == SCI_IO_REQUEST_DATA_OUT )
   {





      task_context->task_type = optimized_task_type + (SCU_TASK_TYPE_DMA_OUT
                                                     - SCU_TASK_TYPE_DMA_IN);
   }
   else
   {


      task_context->task_type = optimized_task_type;
   }
}
