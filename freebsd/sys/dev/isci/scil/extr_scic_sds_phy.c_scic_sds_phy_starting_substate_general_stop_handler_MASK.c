#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  starting_substate_machine; } ;
struct TYPE_4__ {int /*<<< orphan*/  state_machine; } ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  TYPE_1__ SCI_BASE_PHY_T ;
typedef  TYPE_2__ SCIC_SDS_PHY_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCI_BASE_PHY_STATE_STOPPED ; 
 int /*<<< orphan*/  SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
SCI_STATUS FUNC2(
   SCI_BASE_PHY_T *phy
)
{
   SCIC_SDS_PHY_T *this_phy;
   this_phy = (SCIC_SDS_PHY_T *)phy;

   FUNC1(
      &this_phy->starting_substate_machine
   );

   FUNC0(
      &phy->state_machine,
      SCI_BASE_PHY_STATE_STOPPED
   );

   return SCI_SUCCESS;
}