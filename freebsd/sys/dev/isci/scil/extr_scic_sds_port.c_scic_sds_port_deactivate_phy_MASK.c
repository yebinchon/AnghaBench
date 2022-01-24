#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ mode_type; } ;
struct TYPE_14__ {TYPE_1__ controller; } ;
struct TYPE_15__ {TYPE_2__ sds1; } ;
struct TYPE_18__ {TYPE_3__ oem_parameters; } ;
struct TYPE_17__ {int phy_index; int /*<<< orphan*/  max_negotiated_speed; } ;
struct TYPE_16__ {int active_phy_mask; int enabled_phy_mask; TYPE_8__* owning_controller; } ;
typedef  TYPE_4__ SCIC_SDS_PORT_T ;
typedef  TYPE_5__ SCIC_SDS_PHY_T ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  SCIC_LOG_OBJECT_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SCIC_PORT_AUTOMATIC_CONFIGURATION_MODE ; 
 int /*<<< orphan*/  SCI_SAS_NO_LINK_RATE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int,int) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*,TYPE_4__*,TYPE_5__*) ; 

void FUNC4(
   SCIC_SDS_PORT_T * this_port,
   SCIC_SDS_PHY_T  * the_phy,
   BOOL              do_notify_user
)
{
   FUNC0((
      FUNC2(this_port),
      SCIC_LOG_OBJECT_PORT,
      "scic_sds_port_deactivate_phy(0x%x,0x%x,0x%x) enter\n",
      this_port, the_phy, do_notify_user
   ));

   this_port->active_phy_mask &= ~(1 << the_phy->phy_index);
   this_port->enabled_phy_mask  &= ~(1 << the_phy->phy_index);

   the_phy->max_negotiated_speed = SCI_SAS_NO_LINK_RATE;

   // Re-assign the phy back to the LP as if it were a narrow port for APC mode.
   // For MPC mode, the phy will remain in the port
   if (this_port->owning_controller->oem_parameters.sds1.controller.mode_type
       == SCIC_PORT_AUTOMATIC_CONFIGURATION_MODE)
   {
   FUNC1(this_port, the_phy->phy_index, the_phy->phy_index);
   }

   if (do_notify_user == TRUE)
      FUNC3(this_port->owning_controller, this_port, the_phy);
}