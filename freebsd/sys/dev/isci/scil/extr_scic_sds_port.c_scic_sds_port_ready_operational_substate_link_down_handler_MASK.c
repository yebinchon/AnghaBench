#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ active_phy_mask; } ;
typedef  TYPE_1__ SCIC_SDS_PORT_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_PHY_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIC_SDS_PORT_READY_SUBSTATE_WAITING ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static
void FUNC3(
   SCIC_SDS_PORT_T *this_port,
   SCIC_SDS_PHY_T  *the_phy
)
{
   FUNC1(this_port, the_phy, TRUE);

   // If there are no active phys left in the port, then transition
   // the port to the WAITING state until such time as a phy goes
   // link up.
   if (this_port->active_phy_mask == 0)
   {
      FUNC0(
         FUNC2(this_port),
         SCIC_SDS_PORT_READY_SUBSTATE_WAITING
      );
   }
}