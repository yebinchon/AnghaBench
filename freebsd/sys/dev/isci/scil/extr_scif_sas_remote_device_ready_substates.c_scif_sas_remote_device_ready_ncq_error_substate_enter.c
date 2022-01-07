
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int * list_head; } ;
struct TYPE_14__ {TYPE_1__ request_list; int * controller; } ;
struct TYPE_13__ {TYPE_5__* domain; } ;
struct TYPE_12__ {int is_waiting_for_abort_task_set; TYPE_4__* device; } ;
struct TYPE_11__ {TYPE_3__ parent; } ;
typedef int SCI_TASK_REQUEST_HANDLE_T ;
typedef int SCI_STATUS ;
typedef int SCI_FAST_LIST_ELEMENT_T ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_2__ SCIF_SAS_TASK_REQUEST_T ;
typedef TYPE_3__ SCIF_SAS_REQUEST_T ;
typedef TYPE_4__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef TYPE_5__ SCIF_SAS_DOMAIN_T ;
typedef int SCIF_SAS_CONTROLLER_T ;


 int ASSERT (int ) ;
 int SCIF_SAS_REMOTE_DEVICE_READY_SUBSTATE_NCQ_ERROR ;
 int SCI_CONTROLLER_INVALID_IO_TAG ;
 int SCI_SAS_ABORT_TASK_SET ;
 int SCI_SUCCESS ;
 int SET_STATE_HANDLER (TYPE_4__*,int ,int ) ;
 int TRUE ;
 int * sci_fast_list_get_next (int *) ;
 scalar_t__ sci_fast_list_get_object (int *) ;
 int scif_controller_start_task (int *,TYPE_4__*,TYPE_3__*,int ) ;
 void* scif_sas_controller_allocate_internal_request (int *) ;
 int scif_sas_internal_task_request_construct (int *,TYPE_4__*,int ,void*,int *,int ) ;
 int scif_sas_remote_device_ready_substate_handler_table ;

__attribute__((used)) static
void scif_sas_remote_device_ready_ncq_error_substate_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = (SCIF_SAS_REMOTE_DEVICE_T *)object;
   SCI_STATUS status = SCI_SUCCESS;
   SCI_TASK_REQUEST_HANDLE_T handle;
   SCIF_SAS_CONTROLLER_T * fw_controller = fw_device->domain->controller;
   SCIF_SAS_TASK_REQUEST_T * fw_task_request;
   SCIF_SAS_REQUEST_T * fw_request;
   void * internal_task_memory;
   SCIF_SAS_DOMAIN_T * fw_domain = fw_device->domain;
   SCI_FAST_LIST_ELEMENT_T * pending_request_element;
   SCIF_SAS_REQUEST_T * pending_request = ((void*)0);

   SET_STATE_HANDLER(
      fw_device,
      scif_sas_remote_device_ready_substate_handler_table,
      SCIF_SAS_REMOTE_DEVICE_READY_SUBSTATE_NCQ_ERROR
   );

   internal_task_memory = scif_sas_controller_allocate_internal_request(fw_controller);
   ASSERT(internal_task_memory != ((void*)0));

   fw_task_request = (SCIF_SAS_TASK_REQUEST_T*)internal_task_memory;

   fw_request = &fw_task_request->parent;


   status = scif_sas_internal_task_request_construct(
      fw_controller,
      fw_device,
      SCI_CONTROLLER_INVALID_IO_TAG,
      (void *)fw_task_request,
      &handle,
      SCI_SAS_ABORT_TASK_SET
   );

   pending_request_element = fw_domain->request_list.list_head;





   while (pending_request_element != ((void*)0))
   {
      pending_request =
         (SCIF_SAS_REQUEST_T*) sci_fast_list_get_object(pending_request_element);



      pending_request_element = sci_fast_list_get_next(pending_request_element);

      if (pending_request->device == fw_device)
      {
         pending_request->is_waiting_for_abort_task_set = TRUE;
      }
   }

   scif_controller_start_task(
      fw_controller,
      fw_device,
      fw_request,
      SCI_CONTROLLER_INVALID_IO_TAG
   );
}
