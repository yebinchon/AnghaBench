
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_3__ {int function; } ;
typedef TYPE_1__ SCIF_SAS_TASK_REQUEST_T ;



U8 scif_sas_task_request_get_function(
   SCIF_SAS_TASK_REQUEST_T *fw_task
)
{
   return fw_task->function;
}
