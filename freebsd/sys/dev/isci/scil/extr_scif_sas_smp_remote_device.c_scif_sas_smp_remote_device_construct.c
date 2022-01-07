
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int smp_phy_list; void* is_able_to_config_others; void* is_externally_configurable; void* is_table_to_table_supported; scalar_t__ expander_route_indexes; scalar_t__ number_of_phys; } ;
struct TYPE_8__ {TYPE_1__ smp_device; } ;
struct TYPE_9__ {TYPE_2__ protocol_device; } ;
typedef TYPE_3__ SCIF_SAS_REMOTE_DEVICE_T ;


 void* FALSE ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_LOG_TRACE (int ) ;
 int sci_base_object_get_logger (TYPE_3__*) ;
 int sci_fast_list_init (int *) ;
 int scif_sas_smp_remote_device_clear (TYPE_3__*) ;

void scif_sas_smp_remote_device_construct(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device
)
{
   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE,
      "scif_sas_smp_remote_device_construct(0x%x) enter\n",
      fw_device
   ));

   fw_device->protocol_device.smp_device.number_of_phys = 0;
   fw_device->protocol_device.smp_device.expander_route_indexes = 0;
   fw_device->protocol_device.smp_device.is_table_to_table_supported = FALSE;
   fw_device->protocol_device.smp_device.is_externally_configurable = FALSE;
   fw_device->protocol_device.smp_device.is_able_to_config_others = FALSE;

   sci_fast_list_init(&fw_device->protocol_device.smp_device.smp_phy_list);

   scif_sas_smp_remote_device_clear(fw_device);
}
