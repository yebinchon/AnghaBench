
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int core_object; int status; } ;
struct TYPE_4__ {TYPE_2__ parent; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_1__ SCIF_SAS_TASK_REQUEST_T ;


 int SCI_BASE_REQUEST_STATE_ABORTING ;
 int SET_STATE_HANDLER (TYPE_2__*,int ,int ) ;
 int scif_sas_request_terminate_start (TYPE_2__*,int ) ;
 int scif_sas_task_request_state_handler_table ;

__attribute__((used)) static
void scif_sas_task_request_aborting_state_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIF_SAS_TASK_REQUEST_T * fw_task = (SCIF_SAS_TASK_REQUEST_T *)object;

   SET_STATE_HANDLER(
      &fw_task->parent,
      scif_sas_task_request_state_handler_table,
      SCI_BASE_REQUEST_STATE_ABORTING
   );


   fw_task->parent.status = scif_sas_request_terminate_start(
                               &fw_task->parent, fw_task->parent.core_object
                            );
}
