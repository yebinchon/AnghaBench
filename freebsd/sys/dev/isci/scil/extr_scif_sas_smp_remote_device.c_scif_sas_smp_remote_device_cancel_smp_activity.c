
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ current_activity; } ;
struct TYPE_10__ {TYPE_1__ smp_device; } ;
struct TYPE_11__ {TYPE_2__ protocol_device; int domain; } ;
typedef TYPE_3__ SCIF_SAS_REMOTE_DEVICE_T ;


 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_LOG_TRACE (int ) ;
 scalar_t__ SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_CONFIG_ROUTE_TABLE ;
 int sci_base_object_get_logger (TYPE_3__*) ;
 int scif_sas_domain_terminate_requests (int ,TYPE_3__*,int *,int *) ;
 int scif_sas_smp_remote_device_cancel_config_route_table_activity (TYPE_3__*) ;
 int scif_sas_smp_remote_device_clear (TYPE_3__*) ;

void scif_sas_smp_remote_device_cancel_smp_activity(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device
)
{
   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_smp_remote_device_cancel_smp_activity(0x%x) enter\n",
      fw_device
   ));


   scif_sas_domain_terminate_requests(
      fw_device->domain, fw_device, ((void*)0), ((void*)0)
   );

   if (fw_device->protocol_device.smp_device.current_activity ==
          SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_CONFIG_ROUTE_TABLE)
      scif_sas_smp_remote_device_cancel_config_route_table_activity(fw_device);


   scif_sas_smp_remote_device_clear(fw_device);
}
