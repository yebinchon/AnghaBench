
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int U8 ;
typedef int U16 ;
struct TYPE_3__ {int is_internal; } ;
struct TYPE_4__ {TYPE_1__ parent; } ;
typedef int SCI_TASK_REQUEST_HANDLE_T ;
typedef int SCI_STATUS ;
typedef int SCI_REMOTE_DEVICE_HANDLE_T ;
typedef int SCI_CONTROLLER_HANDLE_T ;
typedef TYPE_2__ SCIF_SAS_TASK_REQUEST_T ;


 int TRUE ;
 int scif_sas_task_request_generic_construct (int ,int ,int ,int *,void*,int *,int ) ;

SCI_STATUS scif_sas_internal_task_request_construct(
   SCI_CONTROLLER_HANDLE_T scif_controller,
   SCI_REMOTE_DEVICE_HANDLE_T scif_remote_device,
   U16 io_tag,
   void * task_request_memory,
   SCI_TASK_REQUEST_HANDLE_T * scif_task_request,
   U8 task_function
)
{
   SCI_STATUS status;
   SCIF_SAS_TASK_REQUEST_T * fw_task;

   status = scif_sas_task_request_generic_construct(
               scif_controller,
               scif_remote_device,
               io_tag,
               ((void*)0),
               task_request_memory,
               scif_task_request,
               task_function
            );

   fw_task = (SCIF_SAS_TASK_REQUEST_T *)task_request_memory;

   fw_task->parent.is_internal = TRUE;

   return status;
}
