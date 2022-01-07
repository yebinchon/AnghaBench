
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {TYPE_4__* device; TYPE_1__* terminate_requestor; } ;
struct TYPE_11__ {int core_object; TYPE_3__* domain; } ;
struct TYPE_10__ {TYPE_2__* controller; } ;
struct TYPE_9__ {int core_object; } ;
struct TYPE_8__ {int affected_request_count; } ;
typedef int SCI_STATUS ;
typedef int SCI_IO_REQUEST_HANDLE_T ;
typedef TYPE_5__ SCIF_SAS_REQUEST_T ;


 int SCIF_LOG_OBJECT_TASK_MANAGEMENT ;
 int SCIF_LOG_TRACE (int ) ;
 int sci_base_object_get_logger (TYPE_5__*) ;
 int scic_controller_terminate_request (int ,int ,int ) ;

SCI_STATUS scif_sas_request_terminate_start(
   SCIF_SAS_REQUEST_T * fw_request,
   SCI_IO_REQUEST_HANDLE_T core_request
)
{
   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_request),
      SCIF_LOG_OBJECT_TASK_MANAGEMENT,
      "scif_sas_request_terminate_start(0x%x) enter\n",
      fw_request
   ));



   if (fw_request->terminate_requestor != ((void*)0))
      fw_request->terminate_requestor->affected_request_count++;

   return scic_controller_terminate_request(
             fw_request->device->domain->controller->core_object,
             fw_request->device->core_object,
             core_request
          );
}
