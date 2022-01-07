
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int * list_head; } ;
struct TYPE_17__ {TYPE_5__* curr_config_route_destination_smp_phy; TYPE_1__ smp_phy_list; } ;
struct TYPE_15__ {TYPE_6__ smp_device; } ;
struct TYPE_19__ {TYPE_4__ protocol_device; } ;
struct TYPE_14__ {TYPE_2__* attached_phy; } ;
struct TYPE_18__ {scalar_t__ routing_attribute; scalar_t__ attached_device_type; TYPE_3__ u; } ;
struct TYPE_16__ {scalar_t__ owning_device; } ;
struct TYPE_13__ {TYPE_8__* owning_device; } ;
typedef int SCI_FAST_LIST_ELEMENT_T ;
typedef TYPE_6__ SCIF_SAS_SMP_REMOTE_DEVICE_T ;
typedef TYPE_7__ SCIF_SAS_SMP_PHY_T ;
typedef TYPE_8__ SCIF_SAS_REMOTE_DEVICE_T ;


 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_LOG_TRACE (int ) ;
 scalar_t__ SMP_EDGE_EXPANDER_DEVICE ;
 scalar_t__ TABLE_ROUTING_ATTRIBUTE ;
 int sci_base_object_get_logger (TYPE_8__*) ;
 int * sci_fast_list_get_next (int *) ;
 scalar_t__ sci_fast_list_get_object (int *) ;

SCIF_SAS_REMOTE_DEVICE_T * scif_sas_remote_device_find_downstream_expander(
   SCIF_SAS_REMOTE_DEVICE_T * this_device
)
{
   SCIF_SAS_SMP_REMOTE_DEVICE_T * this_smp_remote_device =
      &this_device->protocol_device.smp_device;

   SCIF_SAS_REMOTE_DEVICE_T * downstream_expander = ((void*)0);

   SCI_FAST_LIST_ELEMENT_T * element = this_smp_remote_device->smp_phy_list.list_head;
   SCIF_SAS_SMP_PHY_T * curr_smp_phy = ((void*)0);

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(this_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_remote_device_find_downstream_expander(0x%x) enter\n",
      this_device
   ));

   while (element != ((void*)0))
   {
      curr_smp_phy = (SCIF_SAS_SMP_PHY_T*) sci_fast_list_get_object(element);
      element = sci_fast_list_get_next(element);

      if ( curr_smp_phy->routing_attribute == TABLE_ROUTING_ATTRIBUTE
          && curr_smp_phy->attached_device_type == SMP_EDGE_EXPANDER_DEVICE
          && curr_smp_phy->u.attached_phy != ((void*)0))
      {


         downstream_expander = curr_smp_phy->u.attached_phy->owning_device;

         if ( downstream_expander->protocol_device.smp_device.curr_config_route_destination_smp_phy != ((void*)0)
             && downstream_expander->protocol_device.smp_device.curr_config_route_destination_smp_phy->owning_device ==
                this_smp_remote_device->curr_config_route_destination_smp_phy->owning_device )
            return downstream_expander;
      }
   }

   return ((void*)0);
}
