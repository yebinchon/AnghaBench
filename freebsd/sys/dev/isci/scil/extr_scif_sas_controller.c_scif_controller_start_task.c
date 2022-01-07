
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int U16 ;
struct TYPE_4__ {TYPE_1__* state_handlers; } ;
struct TYPE_3__ {int (* start_task_handler ) (int *,int *,int *,int ) ;} ;
typedef int SCI_TASK_STATUS ;
typedef scalar_t__ SCI_TASK_REQUEST_HANDLE_T ;
typedef int SCI_STATUS ;
typedef scalar_t__ SCI_REMOTE_DEVICE_HANDLE_T ;
typedef scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef int SCI_BASE_REQUEST_T ;
typedef int SCI_BASE_REMOTE_DEVICE_T ;
typedef int SCI_BASE_CONTROLLER_T ;
typedef TYPE_2__ SCIF_SAS_CONTROLLER_T ;


 int SCIF_LOG_OBJECT_CONTROLLER ;
 int SCIF_LOG_OBJECT_TASK_MANAGEMENT ;
 int SCIF_LOG_TRACE (int ) ;
 int SCI_FAILURE_INSUFFICIENT_RESOURCES ;
 scalar_t__ SCI_INVALID_HANDLE ;
 int SCI_TASK_FAILURE_INVALID_PARAMETER_VALUE ;
 int sci_base_object_get_logger (scalar_t__) ;
 scalar_t__ scif_sas_controller_sufficient_resource (scalar_t__) ;
 int stub1 (int *,int *,int *,int ) ;

SCI_TASK_STATUS scif_controller_start_task(
   SCI_CONTROLLER_HANDLE_T controller,
   SCI_REMOTE_DEVICE_HANDLE_T remote_device,
   SCI_TASK_REQUEST_HANDLE_T task_request,
   U16 io_tag
)
{
   SCIF_SAS_CONTROLLER_T * fw_controller = (SCIF_SAS_CONTROLLER_T*) controller;
   SCI_STATUS status;


   if ( (controller == SCI_INVALID_HANDLE)
      || (remote_device == SCI_INVALID_HANDLE)
      || (task_request == SCI_INVALID_HANDLE) )
   {
      return SCI_TASK_FAILURE_INVALID_PARAMETER_VALUE;
   }

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(controller),
      SCIF_LOG_OBJECT_CONTROLLER | SCIF_LOG_OBJECT_TASK_MANAGEMENT,
      "scif_controller_start_task(0x%x, 0x%x, 0x%x, 0x%x) enter\n",
      controller, remote_device, task_request, io_tag
   ));

   if (scif_sas_controller_sufficient_resource(controller))
   {
      status = fw_controller->state_handlers->start_task_handler(
             (SCI_BASE_CONTROLLER_T*) controller,
             (SCI_BASE_REMOTE_DEVICE_T*) remote_device,
             (SCI_BASE_REQUEST_T*) task_request,
             io_tag
          );
   }
   else
      status = SCI_FAILURE_INSUFFICIENT_RESOURCES;

   return (SCI_TASK_STATUS)status;
}
