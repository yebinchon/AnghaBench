
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U16 ;
typedef int SCI_STATUS ;
typedef int SCI_BASE_REQUEST_T ;
typedef int SCI_BASE_REMOTE_DEVICE_T ;
typedef int SCI_BASE_CONTROLLER_T ;


 int SCIF_LOG_OBJECT_CONTROLLER ;
 int SCIF_LOG_OBJECT_IO_REQUEST ;
 int SCIF_LOG_TRACE (int ) ;
 int sci_base_object_get_logger (int *) ;
 int scif_sas_controller_common_start_high_priority_io_handler (int *,int *,int *,int ) ;

__attribute__((used)) static
SCI_STATUS scif_sas_controller_stopping_start_high_priority_io_handler(
   SCI_BASE_CONTROLLER_T * controller,
   SCI_BASE_REMOTE_DEVICE_T * remote_device,
   SCI_BASE_REQUEST_T * io_request,
   U16 io_tag
)
{
   SCIF_LOG_TRACE((
      sci_base_object_get_logger(controller),
      SCIF_LOG_OBJECT_CONTROLLER | SCIF_LOG_OBJECT_IO_REQUEST,
      "scif_sas_controller_stopping_start_high_priority_io_handler(0x%x, 0x%x, 0x%x, 0x%x) enter\n",
      controller, remote_device, io_request, io_tag
   ));

   return scif_sas_controller_common_start_high_priority_io_handler(
             controller, remote_device, io_request, io_tag);
}
