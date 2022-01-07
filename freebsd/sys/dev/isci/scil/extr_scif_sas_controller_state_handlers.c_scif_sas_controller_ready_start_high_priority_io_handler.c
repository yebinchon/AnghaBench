
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int U16 ;
struct TYPE_6__ {int internal_io_timer; } ;
struct TYPE_4__ {scalar_t__ is_internal; } ;
struct TYPE_5__ {TYPE_1__ parent; } ;
typedef scalar_t__ SCI_STATUS ;
typedef int SCI_CONTROLLER_HANDLE_T ;
typedef int SCI_BASE_REQUEST_T ;
typedef int SCI_BASE_REMOTE_DEVICE_T ;
typedef int SCI_BASE_CONTROLLER_T ;
typedef TYPE_2__ SCIF_SAS_IO_REQUEST_T ;
typedef TYPE_3__ SCIF_SAS_INTERNAL_IO_REQUEST_T ;


 int SCIF_LOG_OBJECT_CONTROLLER ;
 int SCIF_LOG_OBJECT_IO_REQUEST ;
 int SCIF_LOG_TRACE (int ) ;
 int SCIF_SAS_INTERNAL_REQUEST_TIMEOUT ;
 scalar_t__ SCI_SUCCESS ;
 int sci_base_object_get_logger (int *) ;
 int scif_cb_timer_start (int ,int ,int ) ;
 scalar_t__ scif_sas_controller_common_start_high_priority_io_handler (int *,int *,int *,int ) ;

__attribute__((used)) static
SCI_STATUS scif_sas_controller_ready_start_high_priority_io_handler(
   SCI_BASE_CONTROLLER_T * controller,
   SCI_BASE_REMOTE_DEVICE_T * remote_device,
   SCI_BASE_REQUEST_T * io_request,
   U16 io_tag
)
{
   SCI_STATUS status;
   SCIF_SAS_IO_REQUEST_T * fw_io = (SCIF_SAS_IO_REQUEST_T *)io_request;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(controller),
      SCIF_LOG_OBJECT_CONTROLLER | SCIF_LOG_OBJECT_IO_REQUEST,
      "scif_sas_controller_ready_start_high_priority_io_handler(0x%x, 0x%x, 0x%x, 0x%x) enter\n",
      controller, remote_device, io_request, io_tag
   ));

   status = scif_sas_controller_common_start_high_priority_io_handler(
               controller, remote_device, io_request, io_tag);

   if (status == SCI_SUCCESS)
   {


      if (fw_io->parent.is_internal)
      {
         SCIF_SAS_INTERNAL_IO_REQUEST_T * fw_internal_io =
            (SCIF_SAS_INTERNAL_IO_REQUEST_T *)fw_io;


         scif_cb_timer_start(
            (SCI_CONTROLLER_HANDLE_T)controller,
             fw_internal_io->internal_io_timer,
             SCIF_SAS_INTERNAL_REQUEST_TIMEOUT
         );
      }
   }
   else
   {





      SCIF_LOG_TRACE((
         sci_base_object_get_logger(controller),
         SCIF_LOG_OBJECT_CONTROLLER | SCIF_LOG_OBJECT_IO_REQUEST,
         "scif_controller_start_high_priority_io(0x%x, 0x%x), starting io failed\n",
         controller, fw_io
      ));
   }

   return status;
}
