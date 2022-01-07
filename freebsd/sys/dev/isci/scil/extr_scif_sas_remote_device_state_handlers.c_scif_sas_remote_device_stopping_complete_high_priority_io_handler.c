
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* domain; int request_count; } ;
struct TYPE_5__ {scalar_t__ is_internal; } ;
struct TYPE_4__ {int controller; } ;
typedef int SCI_STATUS ;
typedef int SCI_IO_STATUS ;
typedef int SCI_BASE_REQUEST_T ;
typedef int SCI_BASE_REMOTE_DEVICE_T ;
typedef TYPE_2__ SCIF_SAS_REQUEST_T ;
typedef TYPE_3__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef int SCIF_SAS_INTERNAL_IO_REQUEST_T ;


 int SCIF_LOG_OBJECT_IO_REQUEST ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_LOG_TRACE (int ) ;
 int SCI_SUCCESS ;
 scalar_t__ TRUE ;
 int sci_base_object_get_logger (int *) ;
 int scif_sas_internal_io_request_complete (int ,int *,int ) ;

__attribute__((used)) static
SCI_STATUS scif_sas_remote_device_stopping_complete_high_priority_io_handler(
   SCI_BASE_REMOTE_DEVICE_T * remote_device,
   SCI_BASE_REQUEST_T * io_request,
   void * response_data,
   SCI_IO_STATUS completion_status
)
{
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = (SCIF_SAS_REMOTE_DEVICE_T *)
                                          remote_device;
   SCIF_SAS_REQUEST_T * fw_request = (SCIF_SAS_REQUEST_T *) io_request;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(remote_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_IO_REQUEST,
      "scif_sas_remote_device_stopping_complete_high_priority_io_handler(0x%x,0x%x,0x%x) enter\n",
      remote_device, io_request, response_data
   ));

   fw_device->request_count--;

   if (fw_request->is_internal == TRUE)
   {
      scif_sas_internal_io_request_complete(
         fw_device->domain->controller,
         (SCIF_SAS_INTERNAL_IO_REQUEST_T *) io_request,
         SCI_SUCCESS
      );
   }

   return SCI_SUCCESS;
}
