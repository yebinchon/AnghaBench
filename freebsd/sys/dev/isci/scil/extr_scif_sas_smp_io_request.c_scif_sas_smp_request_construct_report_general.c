
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_6__ {scalar_t__ crc; } ;
struct TYPE_7__ {TYPE_1__ report_general; } ;
struct TYPE_8__ {TYPE_2__ request; } ;
typedef int SMP_RESPONSE_REPORT_GENERAL_T ;
typedef TYPE_3__ SMP_REQUEST_T ;
typedef int SCIF_SAS_REMOTE_DEVICE_T ;
typedef int SCIF_SAS_CONTROLLER_T ;


 int SCIF_LOG_INFO (int ) ;
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_OBJECT_IO_REQUEST ;
 int SMP_FUNCTION_REPORT_GENERAL ;
 int sci_base_object_get_logger (int *) ;
 int scif_sas_smp_protocol_request_construct (TYPE_3__*,int ,int,int ) ;
 void* scif_sas_smp_request_build (int *,int *,TYPE_3__*,int *,int *) ;

void * scif_sas_smp_request_construct_report_general(
   SCIF_SAS_CONTROLLER_T * fw_controller,
   SCIF_SAS_REMOTE_DEVICE_T * fw_device
)
{
   SMP_REQUEST_T smp_report_general;


   scif_sas_smp_protocol_request_construct(
      &smp_report_general,
      SMP_FUNCTION_REPORT_GENERAL,
      sizeof(SMP_RESPONSE_REPORT_GENERAL_T) / sizeof(U32),
      0
   );

   smp_report_general.request.report_general.crc = 0;

   SCIF_LOG_INFO((
      sci_base_object_get_logger(fw_device),
      SCIF_LOG_OBJECT_IO_REQUEST | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "SMP REPORT GENERAL -  Device:0x%x\n",
      fw_device
   ));

   return scif_sas_smp_request_build(
             fw_controller, fw_device, &smp_report_general, ((void*)0), ((void*)0));
}
