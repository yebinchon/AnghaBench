
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * list_head; } ;
struct TYPE_11__ {TYPE_1__ request_list; } ;
struct TYPE_10__ {scalar_t__ is_waiting_for_abort_task_set; int parent; TYPE_2__* state_handlers; int * terminate_requestor; int * device; } ;
struct TYPE_9__ {int (* abort_handler ) (int *) ;} ;
typedef int SCI_FAST_LIST_ELEMENT_T ;
typedef int SCIF_SAS_TASK_REQUEST_T ;
typedef TYPE_3__ SCIF_SAS_REQUEST_T ;
typedef int SCIF_SAS_REMOTE_DEVICE_T ;
typedef TYPE_4__ SCIF_SAS_DOMAIN_T ;


 scalar_t__ FALSE ;
 int SCIF_LOG_OBJECT_DOMAIN ;
 int SCIF_LOG_OBJECT_TASK_MANAGEMENT ;
 int SCIF_LOG_TRACE (int ) ;
 int sci_base_object_get_logger (TYPE_4__*) ;
 int * sci_fast_list_get_next (int *) ;
 scalar_t__ sci_fast_list_get_object (int *) ;
 int stub1 (int *) ;
 int stub2 (int *) ;

void scif_sas_domain_terminate_requests(
   SCIF_SAS_DOMAIN_T * fw_domain,
   SCIF_SAS_REMOTE_DEVICE_T * fw_device,
   SCIF_SAS_REQUEST_T * fw_request,
   SCIF_SAS_TASK_REQUEST_T * fw_requestor
)
{
   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_domain),
      SCIF_LOG_OBJECT_DOMAIN | SCIF_LOG_OBJECT_TASK_MANAGEMENT,
      "scif_sas_domain_terminate_requests(0x%x, 0x%x, 0x%x, 0x%x) enter\n",
      fw_domain, fw_device, fw_request, fw_requestor
   ));

   if (fw_request != ((void*)0))
   {
      fw_request->terminate_requestor = fw_requestor;
      fw_request->state_handlers->abort_handler(&fw_request->parent);
   }
   else
   {
      SCI_FAST_LIST_ELEMENT_T * element = fw_domain->request_list.list_head;
      SCIF_SAS_REQUEST_T * request = ((void*)0);




      while (element != ((void*)0))
      {
         request = (SCIF_SAS_REQUEST_T*) sci_fast_list_get_object(element);


         element = sci_fast_list_get_next(element);



         if (
               (fw_device == ((void*)0))
            || (
                  (request->device == fw_device)
               && (fw_requestor != (SCIF_SAS_TASK_REQUEST_T*) request)
               )
            )
         {
            if (
                  (request->is_waiting_for_abort_task_set == FALSE) ||
                  (request->terminate_requestor == ((void*)0))
               )
            {
               request->terminate_requestor = fw_requestor;
               request->state_handlers->abort_handler(&request->parent);
            }
         }
      }
   }
}
