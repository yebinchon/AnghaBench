
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ U8 ;
struct TYPE_15__ {scalar_t__ retry_count; } ;
struct TYPE_12__ {int current_smp_request; int current_activity_phy_index; scalar_t__ io_retry_count; } ;
struct TYPE_13__ {TYPE_2__ smp_device; } ;
struct TYPE_14__ {TYPE_3__ protocol_device; TYPE_1__* domain; } ;
struct TYPE_11__ {int * controller; } ;
typedef int SCI_STATUS ;
typedef TYPE_4__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef TYPE_5__ SCIF_SAS_IO_REQUEST_T ;
typedef int SCIF_SAS_CONTROLLER_T ;


 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_OBJECT_IO_REQUEST ;
 int SCIF_LOG_TRACE (int ) ;
 int SCI_FAILURE_INSUFFICIENT_RESOURCES ;
 int SCI_SUCCESS ;



 int sci_base_object_get_logger (TYPE_4__*) ;
 int scif_cb_start_internal_io_task_schedule (int *,int ,int *) ;
 int scif_sas_controller_start_high_priority_io ;
 void* scif_sas_smp_request_construct_discover (int *,TYPE_4__*,int ,int *,int *) ;
 void* scif_sas_smp_request_construct_report_general (int *,TYPE_4__*) ;
 void* scif_sas_smp_request_construct_report_phy_sata (int *,TYPE_4__*,int ) ;

SCI_STATUS scif_sas_smp_internal_request_retry(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device
)
{
   SCIF_SAS_CONTROLLER_T * fw_controller;
   SCIF_SAS_IO_REQUEST_T * new_io;
   void * new_request_memory = ((void*)0);
   U8 retry_count = fw_device->protocol_device.smp_device.io_retry_count;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_device),
      SCIF_LOG_OBJECT_IO_REQUEST | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_smp_internal_request_retry(0x%x, 0x%x) time %d!\n",
      fw_device, retry_count
   ));

   fw_controller = fw_device->domain->controller;

   switch (fw_device->protocol_device.smp_device.current_smp_request)
   {
      case 129:
         new_request_memory = scif_sas_smp_request_construct_report_general(
            fw_controller, fw_device
         );
         break;

      case 130:


         new_request_memory = scif_sas_smp_request_construct_discover(
            fw_controller, fw_device,
            fw_device->protocol_device.smp_device.current_activity_phy_index,
            ((void*)0), ((void*)0)
         );

         break;

      case 128:
         new_request_memory = scif_sas_smp_request_construct_report_phy_sata(
            fw_controller, fw_device,
            fw_device->protocol_device.smp_device.current_activity_phy_index
         );
         break;

      default:

         break;
   }

   if (new_request_memory != ((void*)0))
   {

      new_io = (SCIF_SAS_IO_REQUEST_T *) new_request_memory;
      new_io->retry_count = ++retry_count;


      scif_cb_start_internal_io_task_schedule(
            fw_controller,
            scif_sas_controller_start_high_priority_io,
            fw_controller
         );

      return SCI_SUCCESS;
   }
   else
      return SCI_FAILURE_INSUFFICIENT_RESOURCES;

}
