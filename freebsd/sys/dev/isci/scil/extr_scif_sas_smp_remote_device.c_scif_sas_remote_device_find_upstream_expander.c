
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_25__ {int phy_identifier; } ;
struct TYPE_18__ {int * list_head; } ;
struct TYPE_22__ {TYPE_9__* config_route_smp_phy_anchor; int current_activity_phy_index; int current_smp_request; TYPE_1__ smp_phy_list; } ;
struct TYPE_21__ {TYPE_5__ smp_device; } ;
struct TYPE_24__ {TYPE_4__ protocol_device; } ;
struct TYPE_20__ {TYPE_2__* attached_phy; } ;
struct TYPE_23__ {scalar_t__ routing_attribute; scalar_t__ attached_device_type; TYPE_3__ u; } ;
struct TYPE_19__ {scalar_t__ routing_attribute; TYPE_7__* owning_device; int phy_identifier; } ;
typedef int SCI_FAST_LIST_ELEMENT_T ;
typedef TYPE_5__ SCIF_SAS_SMP_REMOTE_DEVICE_T ;
typedef TYPE_6__ SCIF_SAS_SMP_PHY_T ;
typedef TYPE_7__ SCIF_SAS_REMOTE_DEVICE_T ;


 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_LOG_TRACE (int ) ;
 scalar_t__ SCIF_SAS_CONFIG_ROUTE_TABLE_HIGHEST_PHY_ONLY ;
 scalar_t__ SCIF_SAS_CONFIG_ROUTE_TABLE_MIDDLE_PHY_ONLY ;
 scalar_t__ SMP_EDGE_EXPANDER_DEVICE ;
 scalar_t__ SMP_FANOUT_EXPANDER_DEVICE ;
 int SMP_FUNCTION_CONFIGURE_ROUTE_INFORMATION ;
 scalar_t__ SUBTRACTIVE_ROUTING_ATTRIBUTE ;
 scalar_t__ TABLE_ROUTING_ATTRIBUTE ;
 int sci_base_object_get_logger (TYPE_7__*) ;
 int * sci_fast_list_get_next (int *) ;
 scalar_t__ sci_fast_list_get_object (int *) ;
 TYPE_9__* scif_sas_smp_phy_find_highest_phy_in_wide_port (TYPE_9__*) ;
 TYPE_9__* scif_sas_smp_phy_find_middle_phy_in_wide_port (TYPE_9__*) ;
 TYPE_9__* scif_sas_smp_remote_device_find_smp_phy_by_id (int ,TYPE_5__*) ;
 scalar_t__ scif_sas_smp_remote_device_get_config_route_table_method (TYPE_7__*) ;

SCIF_SAS_REMOTE_DEVICE_T * scif_sas_remote_device_find_upstream_expander(
   SCIF_SAS_REMOTE_DEVICE_T * this_device
)
{
   SCIF_SAS_SMP_REMOTE_DEVICE_T * smp_remote_device =
      &this_device->protocol_device.smp_device;

   SCIF_SAS_REMOTE_DEVICE_T * upstream_expander = ((void*)0);

   SCI_FAST_LIST_ELEMENT_T * element = smp_remote_device->smp_phy_list.list_head;
   SCIF_SAS_SMP_PHY_T * curr_smp_phy = ((void*)0);

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(this_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_smp_remote_device_configure_upstream_expander_route_info(0x%x) enter\n",
      this_device
   ));

   while (element != ((void*)0))
   {
      curr_smp_phy = (SCIF_SAS_SMP_PHY_T*) sci_fast_list_get_object(element);
      element = sci_fast_list_get_next(element);

      if ( curr_smp_phy->routing_attribute == SUBTRACTIVE_ROUTING_ATTRIBUTE
          && ( curr_smp_phy->attached_device_type == SMP_EDGE_EXPANDER_DEVICE
              || curr_smp_phy->attached_device_type == SMP_FANOUT_EXPANDER_DEVICE)
          && curr_smp_phy->u.attached_phy != ((void*)0)
          && curr_smp_phy->u.attached_phy->routing_attribute == TABLE_ROUTING_ATTRIBUTE )
      {


         upstream_expander = curr_smp_phy->u.attached_phy->owning_device;

         upstream_expander->protocol_device.smp_device.current_smp_request =
            SMP_FUNCTION_CONFIGURE_ROUTE_INFORMATION;



         upstream_expander->protocol_device.smp_device.config_route_smp_phy_anchor =
            scif_sas_smp_remote_device_find_smp_phy_by_id(
               curr_smp_phy->u.attached_phy->phy_identifier,
               &(curr_smp_phy->u.attached_phy->owning_device->protocol_device.smp_device)
            );



         if ( scif_sas_smp_remote_device_get_config_route_table_method(upstream_expander)
                 == SCIF_SAS_CONFIG_ROUTE_TABLE_MIDDLE_PHY_ONLY )
         {
            upstream_expander->protocol_device.smp_device.config_route_smp_phy_anchor =
               scif_sas_smp_phy_find_middle_phy_in_wide_port (
                  upstream_expander->protocol_device.smp_device.config_route_smp_phy_anchor
               );
         }
         else if ( scif_sas_smp_remote_device_get_config_route_table_method(upstream_expander)
                      == SCIF_SAS_CONFIG_ROUTE_TABLE_HIGHEST_PHY_ONLY )
         {
            upstream_expander->protocol_device.smp_device.config_route_smp_phy_anchor =
               scif_sas_smp_phy_find_highest_phy_in_wide_port (
                  upstream_expander->protocol_device.smp_device.config_route_smp_phy_anchor
               );
         }

         upstream_expander->protocol_device.smp_device.current_activity_phy_index =
            upstream_expander->protocol_device.smp_device.config_route_smp_phy_anchor->phy_identifier;

         return upstream_expander;
      }
   }

   return ((void*)0);
}
