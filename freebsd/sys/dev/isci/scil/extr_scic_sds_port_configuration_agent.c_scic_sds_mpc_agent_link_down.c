
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int phy_ready_mask; int phy_configured_mask; int timer; scalar_t__ timer_pending; } ;
typedef int SCIC_SDS_PORT_T ;
typedef TYPE_1__ SCIC_SDS_PORT_CONFIGURATION_AGENT_T ;
typedef int SCIC_SDS_PHY_T ;
typedef int SCIC_SDS_CONTROLLER_T ;


 int SCIC_LOG_OBJECT_CONTROLLER ;
 int SCIC_LOG_OBJECT_PHY ;
 int SCIC_LOG_OBJECT_PORT ;
 int SCIC_LOG_TRACE (int ) ;
 int SCIC_SDS_MPC_RECONFIGURATION_TIMEOUT ;
 int * SCI_INVALID_HANDLE ;
 scalar_t__ TRUE ;
 int sci_base_object_get_logger (int *) ;
 int scic_cb_timer_start (int *,int ,int ) ;
 int scic_sds_phy_get_index (int *) ;
 int scic_sds_port_link_down (int *,int *) ;

__attribute__((used)) static
void scic_sds_mpc_agent_link_down(
   SCIC_SDS_CONTROLLER_T * controller,
   SCIC_SDS_PORT_CONFIGURATION_AGENT_T * port_agent,
   SCIC_SDS_PORT_T * port,
   SCIC_SDS_PHY_T * phy
)
{
   SCIC_LOG_TRACE((
      sci_base_object_get_logger(controller),
      SCIC_LOG_OBJECT_CONTROLLER | SCIC_LOG_OBJECT_PORT | SCIC_LOG_OBJECT_PHY,
      "scic_sds_mpc_agent_link_down(0x%08x, 0x%08x, 0x%08x, 0x%08x) enter\n",
      controller, port_agent, port, phy
   ));

   if (port != SCI_INVALID_HANDLE)
   {




      port_agent->phy_ready_mask &= ~(1 << scic_sds_phy_get_index(phy));
      port_agent->phy_configured_mask &= ~(1 << scic_sds_phy_get_index(phy));




      if (
            (port_agent->phy_configured_mask == 0x0000)
         && (port_agent->phy_ready_mask != 0x0000)
         && !port_agent->timer_pending
         )
      {
         port_agent->timer_pending = TRUE;

         scic_cb_timer_start(
            controller,
            port_agent->timer,
            SCIC_SDS_MPC_RECONFIGURATION_TIMEOUT
         );
      }

      scic_sds_port_link_down(port, phy);
   }
}
