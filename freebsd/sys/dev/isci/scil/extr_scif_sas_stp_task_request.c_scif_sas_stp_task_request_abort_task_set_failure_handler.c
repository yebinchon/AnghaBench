
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int core_object; } ;
struct TYPE_9__ {int * list_head; } ;
struct TYPE_12__ {TYPE_6__* controller; TYPE_1__ request_list; } ;
struct TYPE_11__ {int core_object; TYPE_4__* domain; } ;
struct TYPE_10__ {scalar_t__ is_waiting_for_abort_task_set; int core_object; TYPE_3__* device; } ;
typedef scalar_t__ SCI_STATUS ;
typedef int SCI_FAST_LIST_ELEMENT_T ;
typedef int SCIF_SAS_TASK_REQUEST_T ;
typedef TYPE_2__ SCIF_SAS_REQUEST_T ;
typedef TYPE_3__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef TYPE_4__ SCIF_SAS_DOMAIN_T ;


 scalar_t__ FALSE ;
 scalar_t__ SCI_FAILURE_INVALID_STATE ;
 int SCI_IO_FAILURE_TERMINATED ;
 scalar_t__ TRUE ;
 int * sci_fast_list_get_next (int *) ;
 scalar_t__ sci_fast_list_get_object (int *) ;
 scalar_t__ scic_controller_terminate_request (int ,int ,int ) ;
 int scif_cb_io_request_complete (TYPE_6__*,TYPE_3__*,TYPE_2__*,int ) ;

void scif_sas_stp_task_request_abort_task_set_failure_handler(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device,
   SCIF_SAS_TASK_REQUEST_T * fw_task
)
{

   SCIF_SAS_DOMAIN_T * fw_domain = fw_device->domain;
   SCI_FAST_LIST_ELEMENT_T * pending_request_element;
   SCIF_SAS_REQUEST_T * pending_request = ((void*)0);

   pending_request_element = fw_domain->request_list.list_head;




   while (pending_request_element != ((void*)0))
   {
      pending_request =
         (SCIF_SAS_REQUEST_T*) sci_fast_list_get_object(pending_request_element);



      pending_request_element = sci_fast_list_get_next(pending_request_element);

      if ( pending_request->device == fw_device
           && pending_request->is_waiting_for_abort_task_set == TRUE )
      {


         SCI_STATUS abort_status;


         pending_request->is_waiting_for_abort_task_set = FALSE;

         abort_status = scic_controller_terminate_request(
                           fw_domain->controller->core_object,
                           fw_device->core_object,
                           pending_request->core_object
                        );

         if (abort_status == SCI_FAILURE_INVALID_STATE)
         {

            scif_cb_io_request_complete(
               fw_domain->controller,
               fw_device,
               pending_request,
               SCI_IO_FAILURE_TERMINATED
            );
         }


      }
   }

}
