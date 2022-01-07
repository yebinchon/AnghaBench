
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int scheduled_activity; int current_smp_request; int current_activity; } ;
struct TYPE_10__ {TYPE_3__ smp_device; } ;
struct TYPE_12__ {TYPE_2__ protocol_device; TYPE_1__* domain; } ;
struct TYPE_9__ {int * controller; } ;
typedef TYPE_4__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef int SCIF_SAS_CONTROLLER_T ;


 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_LOG_TRACE (int ) ;
 int SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_DISCOVER ;
 int SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_NONE ;
 int SMP_FUNCTION_REPORT_GENERAL ;
 int sci_base_object_get_logger (TYPE_4__*) ;
 int scif_cb_start_internal_io_task_schedule (int *,int ,int *) ;
 int scif_sas_controller_start_high_priority_io ;
 int scif_sas_smp_remote_device_clear (TYPE_4__*) ;
 int scif_sas_smp_request_construct_report_general (int *,TYPE_4__*) ;

void scif_sas_smp_remote_device_start_discover(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device
)
{
   SCIF_SAS_CONTROLLER_T * fw_controller = fw_device->domain->controller;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_smp_remote_device_start_discover(0x%x) enter\n",
      fw_device
   ));



   scif_sas_smp_remote_device_clear(fw_device);


   fw_device->protocol_device.smp_device.current_activity =
      SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_DISCOVER;


   fw_device->protocol_device.smp_device.current_smp_request =
      SMP_FUNCTION_REPORT_GENERAL;


   fw_device->protocol_device.smp_device.scheduled_activity =
      SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_NONE;


   scif_sas_smp_request_construct_report_general(fw_controller, fw_device);


   scif_cb_start_internal_io_task_schedule(
      fw_controller,
      scif_sas_controller_start_high_priority_io,
      fw_controller
   );
}
