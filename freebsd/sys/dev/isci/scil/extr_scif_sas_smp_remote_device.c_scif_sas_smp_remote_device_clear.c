
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * smp_activity_timer; int * curr_clear_affiliation_phy; scalar_t__ io_retry_count; void* scheduled_activity; int * curr_config_route_destination_smp_phy; int is_route_table_cleaned; int * config_route_smp_phy_anchor; scalar_t__ curr_config_route_index; scalar_t__ current_activity_phy_index; int current_smp_request; void* current_activity; } ;
struct TYPE_8__ {TYPE_2__ smp_device; } ;
struct TYPE_9__ {TYPE_3__ protocol_device; TYPE_1__* domain; } ;
struct TYPE_6__ {int controller; } ;
typedef TYPE_4__ SCIF_SAS_REMOTE_DEVICE_T ;


 int FALSE ;
 int NOT_IN_SMP_ACTIVITY ;
 void* SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_NONE ;
 int scif_cb_timer_destroy (int ,int *) ;
 int scif_cb_timer_stop (int ,int *) ;

void scif_sas_smp_remote_device_clear(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device
)
{


   fw_device->protocol_device.smp_device.current_activity =
      SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_NONE;

   fw_device->protocol_device.smp_device.current_smp_request =
      NOT_IN_SMP_ACTIVITY;

   fw_device->protocol_device.smp_device.current_activity_phy_index = 0;

   fw_device->protocol_device.smp_device.curr_config_route_index = 0;

   fw_device->protocol_device.smp_device.config_route_smp_phy_anchor = ((void*)0);

   fw_device->protocol_device.smp_device.is_route_table_cleaned = FALSE;

   fw_device->protocol_device.smp_device.curr_config_route_destination_smp_phy = ((void*)0);

   fw_device->protocol_device.smp_device.scheduled_activity =
      SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_NONE;

   fw_device->protocol_device.smp_device.io_retry_count = 0;

   fw_device->protocol_device.smp_device.curr_clear_affiliation_phy = ((void*)0);

   if (fw_device->protocol_device.smp_device.smp_activity_timer != ((void*)0))
   {

      scif_cb_timer_stop(
         fw_device->domain->controller,
         fw_device->protocol_device.smp_device.smp_activity_timer
      );


      scif_cb_timer_destroy(
         fw_device->domain->controller,
         fw_device->protocol_device.smp_device.smp_activity_timer
      );

      fw_device->protocol_device.smp_device.smp_activity_timer = ((void*)0);
   }
}
