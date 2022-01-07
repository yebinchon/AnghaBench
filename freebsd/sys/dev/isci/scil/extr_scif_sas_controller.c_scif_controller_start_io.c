
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int U16 ;
struct TYPE_4__ {int pool; } ;
struct TYPE_6__ {TYPE_2__* state_handlers; TYPE_1__ hprq; } ;
struct TYPE_5__ {int (* start_io_handler ) (int *,int *,int *,int ) ;} ;
typedef int SCI_STATUS ;
typedef scalar_t__ SCI_REMOTE_DEVICE_HANDLE_T ;
typedef int SCI_IO_STATUS ;
typedef scalar_t__ SCI_IO_REQUEST_HANDLE_T ;
typedef scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef int SCI_BASE_REQUEST_T ;
typedef int SCI_BASE_REMOTE_DEVICE_T ;
typedef int SCI_BASE_CONTROLLER_T ;
typedef TYPE_3__ SCIF_SAS_CONTROLLER_T ;


 int SCIF_LOG_OBJECT_CONTROLLER ;
 int SCIF_LOG_OBJECT_IO_REQUEST ;
 int SCIF_LOG_TRACE (int ) ;
 int SCI_FAILURE_INSUFFICIENT_RESOURCES ;
 int sci_base_object_get_logger (scalar_t__) ;
 scalar_t__ sci_pool_empty (int ) ;
 scalar_t__ scif_sas_controller_sufficient_resource (scalar_t__) ;
 int stub1 (int *,int *,int *,int ) ;

SCI_IO_STATUS scif_controller_start_io(
   SCI_CONTROLLER_HANDLE_T controller,
   SCI_REMOTE_DEVICE_HANDLE_T remote_device,
   SCI_IO_REQUEST_HANDLE_T io_request,
   U16 io_tag
)
{
   SCIF_SAS_CONTROLLER_T * fw_controller = (SCIF_SAS_CONTROLLER_T*) controller;
   SCI_STATUS status;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(controller),
      SCIF_LOG_OBJECT_CONTROLLER | SCIF_LOG_OBJECT_IO_REQUEST,
      "scif_controller_start_io(0x%x, 0x%x, 0x%x, 0x%x) enter\n",
      controller, remote_device, io_request, io_tag
   ));

   if (
         sci_pool_empty(fw_controller->hprq.pool)
      || scif_sas_controller_sufficient_resource(controller)
      )
   {
      status = fw_controller->state_handlers->start_io_handler(
                (SCI_BASE_CONTROLLER_T*) controller,
                (SCI_BASE_REMOTE_DEVICE_T*) remote_device,
                (SCI_BASE_REQUEST_T*) io_request,
                io_tag
             );
   }
   else
      status = SCI_FAILURE_INSUFFICIENT_RESOURCES;

   return (SCI_IO_STATUS)status;
}
