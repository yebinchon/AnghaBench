
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int list_head; } ;
struct TYPE_14__ {scalar_t__ scheduled_activity; scalar_t__ is_able_to_config_others; int curr_config_route_index; TYPE_4__* config_route_smp_phy_anchor; scalar_t__ is_externally_configurable; TYPE_1__ smp_phy_list; TYPE_4__* curr_config_route_destination_smp_phy; } ;
struct TYPE_15__ {TYPE_2__ smp_device; } ;
struct TYPE_17__ {TYPE_3__ protocol_device; } ;
struct TYPE_16__ {int config_route_table_index_anchor; } ;
typedef TYPE_4__ SCIF_SAS_SMP_PHY_T ;
typedef TYPE_5__ SCIF_SAS_REMOTE_DEVICE_T ;


 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_LOG_TRACE (int ) ;
 scalar_t__ SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_CONFIG_ROUTE_TABLE ;
 scalar_t__ SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_NONE ;
 int sci_base_object_get_logger (TYPE_5__*) ;
 scalar_t__ sci_fast_list_get_object (int ) ;
 TYPE_5__* scif_sas_remote_device_find_downstream_expander (TYPE_5__*) ;
 TYPE_5__* scif_sas_remote_device_find_upstream_expander (TYPE_5__*) ;
 int scif_sas_smp_remote_device_clear (TYPE_5__*) ;

void scif_sas_smp_remote_device_configure_upstream_expander_route_info(
   SCIF_SAS_REMOTE_DEVICE_T * this_device
)
{
   SCIF_SAS_REMOTE_DEVICE_T * curr_child_expander = this_device;
   SCIF_SAS_REMOTE_DEVICE_T * curr_parent_expander =
      scif_sas_remote_device_find_upstream_expander(this_device);

   SCIF_SAS_REMOTE_DEVICE_T * curr_config_route_info_expander = ((void*)0);

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(this_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_smp_remote_device_configure_upstream_expander_route_info(0x%x) enter\n",
      this_device
   ));


   while(curr_parent_expander != ((void*)0) )
   {


      curr_parent_expander->protocol_device.smp_device.curr_config_route_destination_smp_phy =
         (SCIF_SAS_SMP_PHY_T*)sci_fast_list_get_object(
             this_device->protocol_device.smp_device.smp_phy_list.list_head);

      curr_child_expander = curr_parent_expander;
      curr_parent_expander = scif_sas_remote_device_find_upstream_expander(curr_child_expander);
   }



   curr_config_route_info_expander = curr_child_expander;

   while ( curr_config_route_info_expander != ((void*)0)
          && curr_config_route_info_expander != this_device
          && curr_config_route_info_expander->protocol_device.smp_device.scheduled_activity
                == SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_NONE
         )
   {
      if (curr_config_route_info_expander->protocol_device.smp_device.is_externally_configurable)
      {
         SCIF_SAS_SMP_PHY_T * phy_being_config =
            curr_config_route_info_expander->protocol_device.smp_device.config_route_smp_phy_anchor;

         curr_config_route_info_expander->protocol_device.smp_device.curr_config_route_index =
            phy_being_config->config_route_table_index_anchor;

         if (curr_config_route_info_expander->protocol_device.smp_device.curr_config_route_index != 0)
            curr_config_route_info_expander->protocol_device.smp_device.curr_config_route_index++;

         curr_config_route_info_expander->protocol_device.smp_device.scheduled_activity =
            SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_CONFIG_ROUTE_TABLE;



         curr_config_route_info_expander = scif_sas_remote_device_find_downstream_expander(
            curr_config_route_info_expander);
      }
      else if (curr_config_route_info_expander->protocol_device.smp_device.is_able_to_config_others)
      {


         SCIF_SAS_REMOTE_DEVICE_T * curr_downstream_expander =
            scif_sas_remote_device_find_downstream_expander(
               curr_config_route_info_expander);

         scif_sas_smp_remote_device_clear(curr_config_route_info_expander);

         while ( curr_downstream_expander != ((void*)0)
                && curr_downstream_expander != this_device )
         {
            scif_sas_smp_remote_device_clear(curr_downstream_expander);
            curr_downstream_expander =
               scif_sas_remote_device_find_downstream_expander(
                  curr_config_route_info_expander);
         }

         break;
      }
      else
      {


         curr_config_route_info_expander = scif_sas_remote_device_find_downstream_expander(
            curr_config_route_info_expander);
      }
   }
}
