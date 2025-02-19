
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_1__ SCIF_SAS_TASK_REQUEST_T ;


 int SCI_BASE_REQUEST_STATE_COMPLETED ;
 int SET_STATE_HANDLER (int *,int ,int ) ;
 int scif_sas_task_request_operation_complete (TYPE_1__*) ;
 int scif_sas_task_request_state_handler_table ;

__attribute__((used)) static
void scif_sas_task_request_completed_state_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIF_SAS_TASK_REQUEST_T * fw_task = (SCIF_SAS_TASK_REQUEST_T *)object;

   SET_STATE_HANDLER(
      &fw_task->parent,
      scif_sas_task_request_state_handler_table,
      SCI_BASE_REQUEST_STATE_COMPLETED
   );




   scif_sas_task_request_operation_complete(fw_task);
}
