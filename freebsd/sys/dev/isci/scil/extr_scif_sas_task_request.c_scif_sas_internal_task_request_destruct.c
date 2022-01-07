
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* device; } ;
struct TYPE_10__ {TYPE_3__ parent; } ;
struct TYPE_8__ {TYPE_1__* domain; } ;
struct TYPE_7__ {int * controller; } ;
typedef TYPE_4__ SCIF_SAS_TASK_REQUEST_T ;
typedef int SCIF_SAS_CONTROLLER_T ;


 int scif_sas_controller_free_internal_request (int *,TYPE_4__*) ;

void scif_sas_internal_task_request_destruct(
   SCIF_SAS_TASK_REQUEST_T * fw_internal_task
)
{
   SCIF_SAS_CONTROLLER_T * fw_controller =
      fw_internal_task->parent.device->domain->controller;
   scif_sas_controller_free_internal_request(fw_controller, fw_internal_task);
}
