
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t U32 ;
struct TYPE_5__ {int phy_configured_mask; int phy_ready_mask; TYPE_1__* phy_valid_port_range; int * timer; int timer_pending; int * link_down_handler; int * link_up_handler; } ;
struct TYPE_4__ {scalar_t__ max_index; scalar_t__ min_index; } ;
typedef TYPE_2__ SCIC_SDS_PORT_CONFIGURATION_AGENT_T ;


 int FALSE ;
 size_t SCI_MAX_PORTS ;

void scic_sds_port_configuration_agent_construct(
   SCIC_SDS_PORT_CONFIGURATION_AGENT_T * port_agent
)
{
   U32 index;

   port_agent->phy_configured_mask = 0x00;
   port_agent->phy_ready_mask = 0x00;

   port_agent->link_up_handler = ((void*)0);
   port_agent->link_down_handler = ((void*)0);

   port_agent->timer_pending = FALSE;
   port_agent->timer = ((void*)0);

   for (index = 0; index < SCI_MAX_PORTS; index++)
   {
      port_agent->phy_valid_port_range[index].min_index = 0;
      port_agent->phy_valid_port_range[index].max_index = 0;
   }
}
