#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  SCI_BASE_OBJECT_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_PHY_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIC_SDS_PHY_STARTING_SUBSTATE_FINAL ; 
 int /*<<< orphan*/  SCI_BASE_PHY_STATE_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void FUNC3(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_PHY_T *this_phy;
   this_phy = (SCIC_SDS_PHY_T *)object;

   FUNC2(
      this_phy, SCIC_SDS_PHY_STARTING_SUBSTATE_FINAL
      );

   // State machine has run to completion so exit out and change
   // the base state machine to the ready state
   FUNC0(
      FUNC1(this_phy),
      SCI_BASE_PHY_STATE_READY);
}