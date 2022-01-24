#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int invalid_phy_mask; } ;
struct TYPE_9__ {int phy_index; } ;
typedef  int /*<<< orphan*/  SCIC_SDS_PORT_T ;
typedef  TYPE_1__ SCIC_SDS_PHY_T ;
typedef  TYPE_2__ SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(
   SCIC_SDS_PORT_T * this_port,
   SCIC_SDS_PHY_T  * the_phy
)
{
   SCIC_SDS_CONTROLLER_T * controller = FUNC2(this_port);

   // Check to see if we have alreay reported this link as bad and if not go
   // ahead and tell the SCI_USER that we have discovered an invalid link.
   if ((controller->invalid_phy_mask & (1 << the_phy->phy_index)) == 0)
   {
      FUNC1(controller, the_phy);

      FUNC0(controller, this_port, the_phy);
   }
}