
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int affected_request_count; } ;
typedef TYPE_1__ SCIF_SAS_TASK_REQUEST_T ;


 int SCIF_LOG_INFO (int ) ;
 int SCIF_LOG_OBJECT_TASK_MANAGEMENT ;
 int SCIF_LOG_TRACE (int ) ;
 int sci_base_object_get_logger (TYPE_1__*) ;

void scif_sas_task_request_operation_complete(
   SCIF_SAS_TASK_REQUEST_T * fw_task
)
{
   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_task),
      SCIF_LOG_OBJECT_TASK_MANAGEMENT,
      "scif_sas_task_request_operation_complete(0x%x) enter\n",
      fw_task
   ));

   fw_task->affected_request_count--;

   SCIF_LOG_INFO((
      sci_base_object_get_logger(fw_task),
      SCIF_LOG_OBJECT_TASK_MANAGEMENT,
      "TaskRequest:0x%x current affected request count:0x%x\n",
      fw_task, fw_task->affected_request_count
   ));
}
