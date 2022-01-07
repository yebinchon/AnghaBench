
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_STATUS ;
typedef int SCI_REMOTE_DEVICE_HANDLE_T ;
typedef int SCI_IO_REQUEST_HANDLE_T ;
typedef int SCI_CONTROLLER_HANDLE_T ;
typedef int SCIF_SAS_REQUEST_T ;
typedef int SCIF_SAS_REMOTE_DEVICE_T ;
typedef int SCIF_SAS_IO_REQUEST_T ;
typedef int SCIF_SAS_CONTROLLER_T ;


 int FALSE ;
 int SCIF_LOG_OBJECT_IO_REQUEST ;
 int SCIF_LOG_TRACE (int ) ;
 int SCI_CONTROLLER_INVALID_IO_TAG ;
 int sci_base_object_get_logger (int *) ;
 scalar_t__ sci_object_get_association (int *) ;
 int scif_controller_complete_io (int *,int *,int *) ;
 int scif_controller_start_io (int ,int ,int ,int ) ;
 int scif_sas_io_request_construct (int *,int *,int ,void*,int *,int ) ;

SCI_STATUS scif_sas_io_request_continue(
   SCIF_SAS_CONTROLLER_T * fw_controller,
   SCIF_SAS_REMOTE_DEVICE_T * fw_device,
   SCIF_SAS_REQUEST_T * fw_request
)
{
   SCI_IO_REQUEST_HANDLE_T dummy_handle;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_request),
      SCIF_LOG_OBJECT_IO_REQUEST,
      "scif_sas_io_request_continue(0x%x, 0x%x, 0x%x) enter\n",
      fw_controller,
      fw_device,
      fw_request
   ));


   scif_controller_complete_io(fw_controller, fw_device, fw_request);




   scif_sas_io_request_construct(
      fw_device,
      (SCIF_SAS_IO_REQUEST_T*)fw_request,
      SCI_CONTROLLER_INVALID_IO_TAG,
      (void *)sci_object_get_association(fw_request),
      &dummy_handle,
      FALSE
   );


   return (SCI_STATUS)scif_controller_start_io(
             (SCI_CONTROLLER_HANDLE_T) fw_controller,
             (SCI_REMOTE_DEVICE_HANDLE_T) fw_device,
             (SCI_IO_REQUEST_HANDLE_T) fw_request,
             SCI_CONTROLLER_INVALID_IO_TAG
          );
}
