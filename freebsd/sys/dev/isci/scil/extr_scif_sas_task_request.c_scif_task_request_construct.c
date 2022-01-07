
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int U16 ;
typedef int SCI_TASK_REQUEST_HANDLE_T ;
typedef int SCI_STATUS ;
typedef int SCI_REMOTE_DEVICE_HANDLE_T ;
typedef int SCI_CONTROLLER_HANDLE_T ;


 int scif_cb_task_request_get_function (void*) ;
 int scif_sas_task_request_generic_construct (int ,int ,int ,void*,void*,int *,int ) ;

SCI_STATUS scif_task_request_construct(
   SCI_CONTROLLER_HANDLE_T scif_controller,
   SCI_REMOTE_DEVICE_HANDLE_T scif_remote_device,
   U16 io_tag,
   void * user_task_request_object,
   void * task_request_memory,
   SCI_TASK_REQUEST_HANDLE_T * scif_task_request
)
{
   SCI_STATUS status;
   U8 task_function =
                scif_cb_task_request_get_function(user_task_request_object);

   status = scif_sas_task_request_generic_construct(
               scif_controller,
               scif_remote_device,
               io_tag,
               user_task_request_object,
               task_request_memory,
               scif_task_request,
               task_function
            );

   return status;
}
