
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int scheduled_activity; } ;
struct TYPE_8__ {TYPE_1__ smp_device; } ;
struct TYPE_9__ {TYPE_2__ protocol_device; } ;
typedef TYPE_3__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef int SCIF_SAS_DOMAIN_T ;


 int SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_CONFIG_ROUTE_TABLE ;
 int SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_DISCOVER ;
 int SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_NONE ;
 TYPE_3__* scif_sas_domain_find_device_has_scheduled_activity (int *,int ) ;
 int scif_sas_smp_remote_device_configure_route_table (TYPE_3__*) ;
 int scif_sas_smp_remote_device_start_discover (TYPE_3__*) ;

void scif_sas_domain_start_smp_activity(
  SCIF_SAS_DOMAIN_T * fw_domain
)
{
   SCIF_SAS_REMOTE_DEVICE_T * device_has_scheduled_activity = ((void*)0);



   device_has_scheduled_activity =
      scif_sas_domain_find_device_has_scheduled_activity(
         fw_domain,
         SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_CONFIG_ROUTE_TABLE
      );

   if (device_has_scheduled_activity != ((void*)0))
   {
      scif_sas_smp_remote_device_configure_route_table(device_has_scheduled_activity);
      device_has_scheduled_activity->protocol_device.smp_device.scheduled_activity =
         SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_NONE;
      return;
   }



   device_has_scheduled_activity =
      scif_sas_domain_find_device_has_scheduled_activity(
         fw_domain,
         SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_DISCOVER
      );

   if (device_has_scheduled_activity != ((void*)0))
      scif_sas_smp_remote_device_start_discover(device_has_scheduled_activity);
}
