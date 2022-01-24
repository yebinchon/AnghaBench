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
typedef  int /*<<< orphan*/  U32 ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  int /*<<< orphan*/  SCIC_SDS_PHY_T ;

/* Variables and functions */
 int /*<<< orphan*/  ENABLE ; 
 int /*<<< orphan*/  SCIC_SDS_PHY_STARTING_SUBSTATE_FINAL ; 
 int /*<<< orphan*/  SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
SCI_STATUS FUNC5(
   SCIC_SDS_PHY_T *this_phy
)
{
   U32 enable_spinup;

   enable_spinup = FUNC1(this_phy);
   enable_spinup |= FUNC0(ENABLE);
   FUNC2(this_phy, enable_spinup);

   // Change state to the final state this substate machine has run to completion
   FUNC3(
      FUNC4(this_phy),
      SCIC_SDS_PHY_STARTING_SUBSTATE_FINAL
      );

   return SCI_SUCCESS;
}