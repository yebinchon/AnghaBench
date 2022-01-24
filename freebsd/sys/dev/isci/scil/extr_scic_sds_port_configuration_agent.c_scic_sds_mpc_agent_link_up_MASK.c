#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int phy_ready_mask; int phy_configured_mask; } ;
struct TYPE_7__ {int active_phy_mask; } ;
typedef  TYPE_1__ SCIC_SDS_PORT_T ;
typedef  TYPE_2__ SCIC_SDS_PORT_CONFIGURATION_AGENT_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_PHY_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 int SCIC_LOG_OBJECT_CONTROLLER ; 
 int SCIC_LOG_OBJECT_PHY ; 
 int SCIC_LOG_OBJECT_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* SCI_INVALID_HANDLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
void FUNC4(
   SCIC_SDS_CONTROLLER_T               * controller,
   SCIC_SDS_PORT_CONFIGURATION_AGENT_T * port_agent,
   SCIC_SDS_PORT_T                     * port,
   SCIC_SDS_PHY_T                      * phy
)
{
   FUNC0(*(
      FUNC1(controller),
      SCIC_LOG_OBJECT_CONTROLLER | SCIC_LOG_OBJECT_PORT | SCIC_LOG_OBJECT_PHY,
      "scic_sds_mpc_agent_link_up(0x%08x, 0x%08x, 0x%08x, 0x%08x) enter\n",
      controller, port_agent, port, phy
   ));

   // If the port has an invalid handle then the phy was not assigned to
   // a port.  This is because the phy was not given the same SAS Address
   // as the other PHYs in the port.
   if (port != SCI_INVALID_HANDLE)
   {
      port_agent->phy_ready_mask |= (1 << FUNC2(phy));

      FUNC3(port, phy);

      if ((port->active_phy_mask & (1 << FUNC2(phy))) != 0)
      {
         port_agent->phy_configured_mask |= (1 << FUNC2(phy));
      }
   }
}