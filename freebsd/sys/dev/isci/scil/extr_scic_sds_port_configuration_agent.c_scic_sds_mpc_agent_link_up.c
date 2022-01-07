
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int phy_ready_mask; int phy_configured_mask; } ;
struct TYPE_7__ {int active_phy_mask; } ;
typedef TYPE_1__ SCIC_SDS_PORT_T ;
typedef TYPE_2__ SCIC_SDS_PORT_CONFIGURATION_AGENT_T ;
typedef int SCIC_SDS_PHY_T ;
typedef int SCIC_SDS_CONTROLLER_T ;


 int SCIC_LOG_OBJECT_CONTROLLER ;
 int SCIC_LOG_OBJECT_PHY ;
 int SCIC_LOG_OBJECT_PORT ;
 int SCIC_LOG_TRACE (int ) ;
 TYPE_1__* SCI_INVALID_HANDLE ;
 int sci_base_object_get_logger (int *) ;
 int scic_sds_phy_get_index (int *) ;
 int scic_sds_port_link_up (TYPE_1__*,int *) ;

__attribute__((used)) static
void scic_sds_mpc_agent_link_up(
   SCIC_SDS_CONTROLLER_T * controller,
   SCIC_SDS_PORT_CONFIGURATION_AGENT_T * port_agent,
   SCIC_SDS_PORT_T * port,
   SCIC_SDS_PHY_T * phy
)
{
   SCIC_LOG_TRACE((
      sci_base_object_get_logger(controller),
      SCIC_LOG_OBJECT_CONTROLLER | SCIC_LOG_OBJECT_PORT | SCIC_LOG_OBJECT_PHY,
      "scic_sds_mpc_agent_link_up(0x%08x, 0x%08x, 0x%08x, 0x%08x) enter\n",
      controller, port_agent, port, phy
   ));




   if (port != SCI_INVALID_HANDLE)
   {
      port_agent->phy_ready_mask |= (1 << scic_sds_phy_get_index(phy));

      scic_sds_port_link_up(port, phy);

      if ((port->active_phy_mask & (1 << scic_sds_phy_get_index(phy))) != 0)
      {
         port_agent->phy_configured_mask |= (1 << scic_sds_phy_get_index(phy));
      }
   }
}
