
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_11__ {int parent; } ;
struct TYPE_8__ {int fis_type; } ;
struct TYPE_9__ {TYPE_1__ stp; } ;
struct TYPE_10__ {int transfer_length_bytes; TYPE_2__ type; int task_type; int priority; scalar_t__ control_frame; } ;
typedef TYPE_3__ SCU_TASK_CONTEXT_T ;
typedef TYPE_4__ SCIC_SDS_STP_REQUEST_T ;
typedef int SATA_FIS_REG_H2D_T ;


 int SATA_FIS_TYPE_REGH2D ;
 int SCU_TASK_PRIORITY_NORMAL ;
 int SCU_TASK_TYPE_SATA_RAW_FRAME ;
 int scu_sata_reqeust_construct_task_context (int *,TYPE_3__*) ;

void scu_stp_raw_request_construct_task_context(
   SCIC_SDS_STP_REQUEST_T * this_request,
   SCU_TASK_CONTEXT_T * task_context
)
{
   scu_sata_reqeust_construct_task_context(&this_request->parent, task_context);

   task_context->control_frame = 0;
   task_context->priority = SCU_TASK_PRIORITY_NORMAL;
   task_context->task_type = SCU_TASK_TYPE_SATA_RAW_FRAME;
   task_context->type.stp.fis_type = SATA_FIS_TYPE_REGH2D;
   task_context->transfer_length_bytes = sizeof(SATA_FIS_REG_H2D_T) - sizeof(U32);
}
