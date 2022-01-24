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
typedef  scalar_t__ SCI_OBJECT_HANDLE_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_PHY_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCIC_LOG_OBJECT_PHY ; 
 int /*<<< orphan*/  SCI_BASE_PHY_STATE_STARTING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6( SCI_OBJECT_HANDLE_T cookie)
{
   SCIC_SDS_PHY_T * this_phy = (SCIC_SDS_PHY_T *)cookie;

   FUNC0(*(
      FUNC1(this_phy),
      SCIC_LOG_OBJECT_PHY,
      "SCIC SDS Phy 0x%x did not receive signature fis before timeout.\n",
      this_phy
   ));

   FUNC3(
      FUNC5(this_phy));

   FUNC2(
      FUNC4(this_phy),
      SCI_BASE_PHY_STATE_STARTING
   );
}