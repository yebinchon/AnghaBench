
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ function_result; } ;
struct TYPE_4__ {TYPE_2__ header; } ;
typedef TYPE_1__ SMP_RESPONSE_T ;
typedef TYPE_2__ SMP_RESPONSE_HEADER_T ;
typedef int SCI_STATUS ;
typedef int SCIF_SAS_REMOTE_DEVICE_T ;


 int SCIF_LOG_ERROR (int ) ;
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_LOG_TRACE (int ) ;
 int SCI_FAILURE ;
 int SCI_FAILURE_EXCEED_MAX_ROUTE_INDEX ;
 int SCI_SUCCESS ;
 scalar_t__ SMP_RESULT_FUNCTION_ACCEPTED ;
 scalar_t__ SMP_RESULT_INDEX_DOES_NOT_EXIST ;
 int sci_base_object_get_logger (int *) ;
 int scif_sas_smp_remote_device_cancel_config_route_table_activity (int *) ;

SCI_STATUS scif_sas_smp_remote_device_decode_config_route_info_response(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device,
   SMP_RESPONSE_T * smp_response
)
{
   SMP_RESPONSE_HEADER_T * response_header = &smp_response->header;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_smp_remote_device_decode_config_route_info_response(0x%x, 0x%x) enter\n",
      fw_device, smp_response
   ));

   if (response_header->function_result == SMP_RESULT_INDEX_DOES_NOT_EXIST)
   {



      scif_sas_smp_remote_device_cancel_config_route_table_activity(fw_device);

      return SCI_FAILURE_EXCEED_MAX_ROUTE_INDEX;
   }
   else if (response_header->function_result != SMP_RESULT_FUNCTION_ACCEPTED)
   {



      SCIF_LOG_ERROR((
         sci_base_object_get_logger(fw_device),
         SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
         "Discover function result(0x%x)\n",
         response_header->function_result
      ));

      return SCI_FAILURE;
   }

   return SCI_SUCCESS;
}
