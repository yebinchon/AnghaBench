#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int U32 ;
typedef  int U16 ;
struct TYPE_11__ {int next_phy_to_start; scalar_t__ phy_startup_timer_pending; int /*<<< orphan*/ * phy_table; } ;
struct TYPE_10__ {int phy_configured_mask; int phy_ready_mask; scalar_t__ timer_pending; } ;
typedef  TYPE_1__ SCIC_SDS_PORT_CONFIGURATION_AGENT_T ;
typedef  TYPE_2__ SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int SCIC_LOG_OBJECT_CONTROLLER ; 
 int SCIC_LOG_OBJECT_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SCI_MAX_PHYS ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_1__* FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static
void FUNC6(
   void * object
)
{
   U32 index;
   SCIC_SDS_PORT_CONFIGURATION_AGENT_T * port_agent;
   SCIC_SDS_CONTROLLER_T * controller = (SCIC_SDS_CONTROLLER_T *)object;
   U16 configure_phy_mask;

   port_agent = FUNC3(controller);

   FUNC0((
      FUNC1(controller),
      SCIC_LOG_OBJECT_CONTROLLER | SCIC_LOG_OBJECT_PORT,
      "scic_sds_apc_agent_timeout_handler(0x%08x) enter\n",
      controller
   ));

   port_agent->timer_pending = FALSE;

   configure_phy_mask = ~port_agent->phy_configured_mask & port_agent->phy_ready_mask;

   if (configure_phy_mask != 0x00)
   {
      for (index = 0; index < SCI_MAX_PHYS; index++)
      {
         if (configure_phy_mask & (1 << index))
         {
            FUNC2(
               controller, port_agent, &controller->phy_table[index], FALSE
            );
         }
      }

      //Notify the controller ports are configured.
      if (
            (port_agent->phy_ready_mask == port_agent->phy_configured_mask) &&
            (controller->next_phy_to_start == SCI_MAX_PHYS) &&
            (controller->phy_startup_timer_pending == FALSE)
         )
      {
         // The controller has successfully finished the start process.
         // Inform the SCI Core user and transition to the READY state.
         if (FUNC4(controller) == TRUE)
         {
            FUNC5(controller);
         }
      }
   }
}