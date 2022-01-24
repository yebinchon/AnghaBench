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
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  int /*<<< orphan*/  SCI_BASE_PHY_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_PHY_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCI_BASE_PHY_STATE_RESETTING ; 
 int /*<<< orphan*/  SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
SCI_STATUS FUNC2(
   SCI_BASE_PHY_T * phy
)
{
   SCIC_SDS_PHY_T * this_phy;
   this_phy = (SCIC_SDS_PHY_T *)phy;

   FUNC0(
      FUNC1(this_phy),
      SCI_BASE_PHY_STATE_RESETTING
   );

   return SCI_SUCCESS;
}