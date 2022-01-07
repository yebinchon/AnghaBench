
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ U8 ;
struct TYPE_16__ {scalar_t__ element_count; } ;
struct TYPE_17__ {int expander_route_indexes; TYPE_3__ smp_phy_list; void* is_able_to_config_others; void* is_externally_configurable; void* is_table_to_table_supported; scalar_t__ number_of_phys; } ;
struct TYPE_18__ {TYPE_4__ smp_device; } ;
struct TYPE_22__ {TYPE_5__ protocol_device; TYPE_2__* domain; int * containing_device; } ;
struct TYPE_21__ {scalar_t__ function_result; } ;
struct TYPE_20__ {int expander_route_indexes; scalar_t__ configuring; scalar_t__ configures_others; scalar_t__ configurable_route_table; scalar_t__ table_to_table_supported; scalar_t__ number_of_phys; } ;
struct TYPE_14__ {TYPE_7__ report_general; } ;
struct TYPE_19__ {TYPE_8__ header; TYPE_1__ response; } ;
struct TYPE_15__ {int is_config_route_table_needed; } ;
typedef TYPE_6__ SMP_RESPONSE_T ;
typedef TYPE_7__ SMP_RESPONSE_REPORT_GENERAL_T ;
typedef TYPE_8__ SMP_RESPONSE_HEADER_T ;
typedef int SCI_STATUS ;
typedef TYPE_9__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef void* BOOL ;


 int SCIF_LOG_ERROR (int ) ;
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_LOG_TRACE (int ) ;
 int SCI_FAILURE ;
 int SCI_FAILURE_RETRY_REQUIRED ;
 int SCI_SUCCESS ;
 scalar_t__ SMP_RESULT_FUNCTION_ACCEPTED ;
 int TRUE ;
 int sci_base_object_get_logger (TYPE_9__*) ;
 int scif_sas_smp_remote_device_populate_smp_phy_list (TYPE_9__*) ;

SCI_STATUS scif_sas_smp_remote_device_decode_report_general_response(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device,
   SMP_RESPONSE_T * smp_response
)
{
   SMP_RESPONSE_REPORT_GENERAL_T * report_general_response =
      &smp_response->response.report_general;

   SMP_RESPONSE_HEADER_T * response_header = &smp_response->header;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_smp_remote_device_decode_report_general_response(0x%x, 0x%x) enter\n",
      fw_device, smp_response
   ));

   if (response_header->function_result != SMP_RESULT_FUNCTION_ACCEPTED)
   {



      SCIF_LOG_ERROR((
         sci_base_object_get_logger(fw_device),
         SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
         "Report General function result(0x%x)\n",
         response_header->function_result
      ));

      return SCI_FAILURE;
   }


   fw_device->protocol_device.smp_device.number_of_phys =
      (U8)report_general_response->number_of_phys;


   fw_device->protocol_device.smp_device.expander_route_indexes =
      ((report_general_response->expander_route_indexes & 0xff) << 8) |
      ((report_general_response->expander_route_indexes & 0xff00) >> 8);

   fw_device->protocol_device.smp_device.is_table_to_table_supported =
      (BOOL)report_general_response->table_to_table_supported;

   fw_device->protocol_device.smp_device.is_externally_configurable =
      (BOOL)report_general_response->configurable_route_table;

   fw_device->protocol_device.smp_device.is_able_to_config_others =
      (BOOL)report_general_response->configures_others;





   if (fw_device->containing_device == ((void*)0)
       && ! fw_device->protocol_device.smp_device.is_able_to_config_others)
      fw_device->domain->is_config_route_table_needed = TRUE;



   if (fw_device->protocol_device.smp_device.smp_phy_list.element_count == 0)
      scif_sas_smp_remote_device_populate_smp_phy_list(fw_device);

   if (report_general_response->configuring)
      return SCI_FAILURE_RETRY_REQUIRED;

   return SCI_SUCCESS;
}
