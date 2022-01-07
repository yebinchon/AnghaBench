
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int curr_config_route_index; int current_activity_phy_index; } ;
struct TYPE_11__ {TYPE_4__ smp_device; } ;
struct TYPE_14__ {TYPE_1__* domain; TYPE_2__ protocol_device; } ;
struct TYPE_12__ {scalar_t__ low; scalar_t__ high; } ;
struct TYPE_10__ {int controller; } ;
typedef TYPE_3__ SCI_SAS_ADDRESS_T ;
typedef TYPE_4__ SCIF_SAS_SMP_REMOTE_DEVICE_T ;
typedef TYPE_5__ SCIF_SAS_REMOTE_DEVICE_T ;


 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_LOG_TRACE (int ) ;
 int TRUE ;
 int sci_base_object_get_logger (TYPE_5__*) ;
 int scif_cb_start_internal_io_task_schedule (int ,int ,int ) ;
 int scif_sas_controller_start_high_priority_io ;
 int scif_sas_smp_request_construct_config_route_info (int ,TYPE_5__*,int ,int ,TYPE_3__,int ) ;

void scif_sas_smp_remote_device_clean_route_table_entry(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device
)
{
   SCI_SAS_ADDRESS_T empty_sas_address;
   SCIF_SAS_SMP_REMOTE_DEVICE_T * smp_remote_device =
      &(fw_device->protocol_device.smp_device);

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_smp_remote_device_clean_route_table(0x%x) enter\n",
      fw_device
   ));

   empty_sas_address.high = 0;
   empty_sas_address.low = 0;

   scif_sas_smp_request_construct_config_route_info(
      fw_device->domain->controller,
      fw_device,
      smp_remote_device->current_activity_phy_index,
      smp_remote_device->curr_config_route_index,
      empty_sas_address,
      TRUE
   );


   scif_cb_start_internal_io_task_schedule(
      fw_device->domain->controller,
      scif_sas_controller_start_high_priority_io,
      fw_device->domain->controller
   );
}
