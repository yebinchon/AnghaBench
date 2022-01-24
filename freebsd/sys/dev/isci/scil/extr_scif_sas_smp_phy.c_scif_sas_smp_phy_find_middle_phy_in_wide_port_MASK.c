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
typedef  int /*<<< orphan*/  SCIF_SAS_SMP_PHY_T ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 

SCIF_SAS_SMP_PHY_T * FUNC1(
   SCIF_SAS_SMP_PHY_T * this_smp_phy
)
{
   SCIF_SAS_SMP_PHY_T * next_phy =
      FUNC0(this_smp_phy);
   SCIF_SAS_SMP_PHY_T * middle_phy = this_smp_phy;

   //currently we assume a wide port could not be wider than X4. so the
   //second phy is always the correct answer for x2, x3 or x4 wide port.
   //For a narrow port, phy0 is the middle phy.
   if (next_phy != NULL)
   {
      middle_phy = next_phy;
      next_phy =
         FUNC0(next_phy);
   }

   if (next_phy != NULL)
      middle_phy = next_phy;

   return middle_phy;
}