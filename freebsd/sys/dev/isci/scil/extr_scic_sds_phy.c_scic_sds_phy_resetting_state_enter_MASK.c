#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  state_machine; } ;
struct TYPE_7__ {scalar_t__ protocol; TYPE_1__ parent; int /*<<< orphan*/  owning_port; } ;
typedef  int /*<<< orphan*/  SCI_BASE_OBJECT_T ;
typedef  TYPE_2__ SCIC_SDS_PHY_T ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ SCIC_SDS_PHY_PROTOCOL_SAS ; 
 int /*<<< orphan*/  SCI_BASE_PHY_STATE_RESETTING ; 
 int /*<<< orphan*/  SCI_BASE_PHY_STATE_STARTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static
void FUNC4(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_PHY_T * this_phy;
   this_phy = (SCIC_SDS_PHY_T *)object;

   FUNC1(this_phy, SCI_BASE_PHY_STATE_RESETTING);

   // The phy is being reset, therefore deactivate it from the port.
   // In the resetting state we don't notify the user regarding
   // link up and link down notifications.
   FUNC2(this_phy->owning_port, this_phy, FALSE);

   if (this_phy->protocol == SCIC_SDS_PHY_PROTOCOL_SAS)
   {
      FUNC3(this_phy);
   }
   else
   {
      // The SCU does not need to have a descrete reset state so just go back to
      // the starting state.
      FUNC0(
         &this_phy->parent.state_machine,
         SCI_BASE_PHY_STATE_STARTING
      );
   }
}