
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * list_head; } ;
struct TYPE_10__ {void* is_able_to_config_others; void* is_externally_configurable; void* is_table_to_table_supported; scalar_t__ expander_route_indexes; scalar_t__ number_of_phys; TYPE_1__ smp_phy_list; } ;
struct TYPE_9__ {TYPE_3__ smp_device; } ;
struct TYPE_11__ {TYPE_2__ protocol_device; } ;
typedef int SCI_FAST_LIST_ELEMENT_T ;
typedef TYPE_3__ SCIF_SAS_SMP_REMOTE_DEVICE_T ;
typedef int SCIF_SAS_SMP_PHY_T ;
typedef TYPE_4__ SCIF_SAS_REMOTE_DEVICE_T ;


 void* FALSE ;
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_LOG_TRACE (int ) ;
 int sci_base_object_get_logger (TYPE_4__*) ;
 int * sci_fast_list_get_next (int *) ;
 scalar_t__ sci_fast_list_get_object (int *) ;
 int scif_sas_smp_phy_destruct (int *) ;
 int scif_sas_smp_remote_device_clear (TYPE_4__*) ;

void scif_sas_smp_remote_device_removed(
   SCIF_SAS_REMOTE_DEVICE_T * this_device
)
{
   SCIF_SAS_SMP_REMOTE_DEVICE_T * smp_remote_device =
      &this_device->protocol_device.smp_device;

   SCI_FAST_LIST_ELEMENT_T * element = smp_remote_device->smp_phy_list.list_head;
   SCIF_SAS_SMP_PHY_T * curr_smp_phy = ((void*)0);

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(this_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_smp_remote_device_removed(0x%x) enter\n",
      this_device
   ));



   while (element != ((void*)0))
   {
      curr_smp_phy = (SCIF_SAS_SMP_PHY_T*) sci_fast_list_get_object(element);
      element = sci_fast_list_get_next(element);

      scif_sas_smp_phy_destruct(curr_smp_phy);
   }

   this_device->protocol_device.smp_device.number_of_phys = 0;
   this_device->protocol_device.smp_device.expander_route_indexes = 0;
   this_device->protocol_device.smp_device.is_table_to_table_supported = FALSE;
   this_device->protocol_device.smp_device.is_externally_configurable = FALSE;
   this_device->protocol_device.smp_device.is_able_to_config_others = FALSE;

   scif_sas_smp_remote_device_clear(this_device);
}
