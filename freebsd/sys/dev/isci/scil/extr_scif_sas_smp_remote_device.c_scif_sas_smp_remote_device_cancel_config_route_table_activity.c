
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* curr_config_route_destination_smp_phy; } ;
struct TYPE_12__ {TYPE_2__ smp_device; } ;
struct TYPE_14__ {int is_currently_discovered; int domain; TYPE_3__ protocol_device; } ;
struct TYPE_13__ {int attached_sas_address; } ;
struct TYPE_10__ {int list_element; } ;
typedef int SCI_FAST_LIST_ELEMENT_T ;
typedef TYPE_4__ SCIF_SAS_SMP_PHY_T ;
typedef TYPE_5__ SCIF_SAS_REMOTE_DEVICE_T ;


 int FALSE ;
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_LOG_TRACE (int ) ;
 scalar_t__ TRUE ;
 int sci_base_object_get_logger (TYPE_5__*) ;
 int * sci_fast_list_get_next (int *) ;
 scalar_t__ sci_fast_list_get_object (int *) ;
 scalar_t__ scif_domain_get_device_by_sas_address (int ,int *) ;
 scalar_t__ scif_sas_smp_remote_device_do_config_route_info (TYPE_5__*,TYPE_4__*) ;

void scif_sas_smp_remote_device_cancel_config_route_table_activity(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device
)
{

   SCI_FAST_LIST_ELEMENT_T * element =
      &(fw_device->protocol_device.smp_device.curr_config_route_destination_smp_phy->list_element);
   SCIF_SAS_SMP_PHY_T * curr_smp_phy = ((void*)0);
   SCIF_SAS_REMOTE_DEVICE_T * curr_attached_device = ((void*)0);

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_smp_remote_device_cancel_config_route_table_activity(0x%x) enter\n",
      fw_device
   ));

   while (element != ((void*)0))
   {
      curr_smp_phy = (SCIF_SAS_SMP_PHY_T*) sci_fast_list_get_object(element);
      element = sci_fast_list_get_next(element);



      if (scif_sas_smp_remote_device_do_config_route_info(
             fw_device, curr_smp_phy) == TRUE )
      {


         curr_attached_device = (SCIF_SAS_REMOTE_DEVICE_T *)
            scif_domain_get_device_by_sas_address(
               fw_device->domain, &(curr_smp_phy->attached_sas_address));

         if (curr_attached_device != ((void*)0))
            curr_attached_device->is_currently_discovered = FALSE;
      }
   }
}
