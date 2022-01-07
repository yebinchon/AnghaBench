
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* U8 ;
struct TYPE_10__ {int * end_device; } ;
struct TYPE_12__ {scalar_t__ phy_identifier; scalar_t__ attached_device_type; TYPE_3__ u; scalar_t__ config_route_table_index_anchor; int attached_sas_address; void* routing_attribute; int * owning_device; } ;
struct TYPE_8__ {scalar_t__ attached_device_type; } ;
struct TYPE_9__ {TYPE_1__ sas1_1; } ;
struct TYPE_11__ {scalar_t__ phy_identifier; int attached_sas_address; scalar_t__ routing_attribute; TYPE_2__ u2; } ;
typedef TYPE_4__ SMP_RESPONSE_DISCOVER_T ;
typedef TYPE_5__ SCIF_SAS_SMP_PHY_T ;
typedef int SCIF_SAS_REMOTE_DEVICE_T ;


 int ASSERT (int) ;
 scalar_t__ SMP_EDGE_EXPANDER_DEVICE ;
 scalar_t__ SMP_FANOUT_EXPANDER_DEVICE ;

void scif_sas_smp_phy_save_information(
   SCIF_SAS_SMP_PHY_T * this_smp_phy,
   SCIF_SAS_REMOTE_DEVICE_T * attached_device,
   SMP_RESPONSE_DISCOVER_T * discover_response
)
{
   ASSERT (this_smp_phy->owning_device != ((void*)0));
   ASSERT (this_smp_phy->phy_identifier == discover_response->phy_identifier);

   this_smp_phy->attached_device_type = (U8)discover_response->u2.sas1_1.attached_device_type;
   this_smp_phy->routing_attribute = (U8)discover_response->routing_attribute;
   this_smp_phy->attached_sas_address = discover_response->attached_sas_address;
   this_smp_phy->config_route_table_index_anchor = 0;

   if (this_smp_phy->attached_device_type != SMP_EDGE_EXPANDER_DEVICE
       && this_smp_phy->attached_device_type != SMP_FANOUT_EXPANDER_DEVICE)
   {

      this_smp_phy->u.end_device = attached_device;
   }
   else
   {


      ;
   }
}
