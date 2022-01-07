
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int * list_head; } ;
struct TYPE_14__ {TYPE_2__ request_list; } ;
struct TYPE_13__ {int core_object; TYPE_5__* domain; } ;
struct TYPE_10__ {TYPE_4__* device; } ;
struct TYPE_12__ {TYPE_1__ parent; } ;
typedef int SCI_TASK_STATUS ;
typedef scalar_t__ SCI_STATUS ;
typedef int SCI_PORT_HANDLE_T ;
typedef int SCI_FAST_LIST_ELEMENT_T ;
typedef int SCI_CONTROLLER_HANDLE_T ;
typedef TYPE_3__ SCIF_SAS_TASK_REQUEST_T ;
typedef TYPE_4__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef TYPE_5__ SCIF_SAS_DOMAIN_T ;


 int SCIF_LOG_OBJECT_DOMAIN ;
 int SCIF_LOG_TRACE (int ) ;
 scalar_t__ SCI_SAS_HARD_RESET ;
 int sci_base_object_get_logger (TYPE_5__*) ;
 int * sci_fast_list_get_next (int *) ;
 scalar_t__ sci_fast_list_get_object (int *) ;
 scalar_t__ sci_object_get_association (int ) ;
 int scic_remote_device_reset_complete (int ) ;
 int scif_cb_task_request_complete (scalar_t__,TYPE_4__*,TYPE_3__*,int ) ;
 scalar_t__ scif_sas_task_request_get_function (TYPE_3__*) ;

void scic_cb_port_hard_reset_complete(
   SCI_CONTROLLER_HANDLE_T controller,
   SCI_PORT_HANDLE_T port,
   SCI_STATUS completion_status
)
{
   SCIF_SAS_DOMAIN_T * fw_domain = (SCIF_SAS_DOMAIN_T*)
                                   sci_object_get_association(port);
   SCIF_SAS_REMOTE_DEVICE_T * fw_device;
   SCI_FAST_LIST_ELEMENT_T * element = fw_domain->request_list.list_head;
   SCIF_SAS_TASK_REQUEST_T * task_request = ((void*)0);

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_domain),
      SCIF_LOG_OBJECT_DOMAIN,
      "scic_cb_port_hard_reset_complete(0x%x, 0x%x, 0x%x) enter\n",
      controller, port, completion_status
   ));

   while (element != ((void*)0))
   {
      task_request = (SCIF_SAS_TASK_REQUEST_T*) sci_fast_list_get_object(element);
      element = sci_fast_list_get_next(element);

      if (scif_sas_task_request_get_function(task_request)
             == SCI_SAS_HARD_RESET)
      {
         fw_device = task_request->parent.device;

         if (fw_device->domain == fw_domain)
         {
            scic_remote_device_reset_complete(fw_device->core_object);

            scif_cb_task_request_complete(
               sci_object_get_association(controller),
               fw_device,
               task_request,
               (SCI_TASK_STATUS) completion_status
            );

            break;
         }
      }
   }
}
