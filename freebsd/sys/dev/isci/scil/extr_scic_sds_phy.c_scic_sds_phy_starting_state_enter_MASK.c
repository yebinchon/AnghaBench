#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ previous_state_id; } ;
struct TYPE_11__ {TYPE_1__ state_machine; } ;
struct TYPE_12__ {TYPE_2__ parent; int /*<<< orphan*/  starting_substate_machine; int /*<<< orphan*/  bcn_received_while_port_unassigned; int /*<<< orphan*/  protocol; } ;
typedef  int /*<<< orphan*/  SCI_BASE_OBJECT_T ;
typedef  TYPE_3__ SCIC_SDS_PHY_T ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SCIC_SDS_PHY_PROTOCOL_UNKNOWN ; 
 scalar_t__ SCI_BASE_PHY_STATE_READY ; 
 int /*<<< orphan*/  SCI_BASE_PHY_STATE_STARTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 

__attribute__((used)) static
void FUNC7(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_PHY_T *this_phy;
   this_phy = (SCIC_SDS_PHY_T *)object;

   FUNC4(this_phy, SCI_BASE_PHY_STATE_STARTING);

   FUNC6(this_phy);
   FUNC5(this_phy);

   // We don't know what kind of phy we are going to be just yet
   this_phy->protocol = SCIC_SDS_PHY_PROTOCOL_UNKNOWN;
   this_phy->bcn_received_while_port_unassigned = FALSE;

   // Change over to the starting substate machine to continue
   FUNC0(&this_phy->starting_substate_machine);

   if (this_phy->parent.state_machine.previous_state_id
       == SCI_BASE_PHY_STATE_READY)
   {
      FUNC1(
         FUNC2(this_phy),
         FUNC3(this_phy),
         this_phy
      );
   }
}