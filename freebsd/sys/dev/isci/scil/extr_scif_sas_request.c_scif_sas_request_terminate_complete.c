
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * terminate_requestor; } ;
typedef TYPE_1__ SCIF_SAS_REQUEST_T ;


 int SCIF_LOG_OBJECT_TASK_MANAGEMENT ;
 int SCIF_LOG_TRACE (int ) ;
 int sci_base_object_get_logger (TYPE_1__*) ;
 int scif_sas_task_request_operation_complete (int *) ;

void scif_sas_request_terminate_complete(
   SCIF_SAS_REQUEST_T * fw_request
)
{
   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_request),
      SCIF_LOG_OBJECT_TASK_MANAGEMENT,
      "scif_sas_request_terminate_complete(0x%x) enter\n",
      fw_request
   ));



   if (fw_request->terminate_requestor != ((void*)0))
      scif_sas_task_request_operation_complete(fw_request->terminate_requestor);
}
