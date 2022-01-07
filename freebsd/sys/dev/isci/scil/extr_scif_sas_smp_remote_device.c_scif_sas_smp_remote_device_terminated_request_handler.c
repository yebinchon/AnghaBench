
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCIF_SAS_REQUEST_T ;
typedef int SCIF_SAS_REMOTE_DEVICE_T ;


 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_LOG_TRACE (int ) ;
 int SCI_IO_FAILURE_RETRY_REQUIRED ;
 int sci_base_object_get_logger (int *) ;
 int scif_sas_smp_remote_device_decode_smp_response (int *,int *,int *,int ) ;

void scif_sas_smp_remote_device_terminated_request_handler(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device,
   SCIF_SAS_REQUEST_T * fw_request
)
{
   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_smp_remote_device_terminated_request_handler(0x%x, 0x%x) enter\n",
      fw_device, fw_request
   ));

   scif_sas_smp_remote_device_decode_smp_response(
      fw_device, fw_request, ((void*)0), SCI_IO_FAILURE_RETRY_REQUIRED
   );
}
