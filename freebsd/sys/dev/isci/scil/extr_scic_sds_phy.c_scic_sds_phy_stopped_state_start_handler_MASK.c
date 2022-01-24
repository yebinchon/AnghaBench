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
struct TYPE_5__ {int /*<<< orphan*/ * sata_timeout_timer; } ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  int /*<<< orphan*/  SCI_BASE_PHY_T ;
typedef  TYPE_1__ SCIC_SDS_PHY_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCI_BASE_PHY_STATE_STARTING ; 
 int /*<<< orphan*/  SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  scic_sds_phy_sata_timeout ; 

__attribute__((used)) static
SCI_STATUS FUNC4(
   SCI_BASE_PHY_T *phy
)
{
   SCIC_SDS_PHY_T *this_phy;
   this_phy = (SCIC_SDS_PHY_T *)phy;



   // Create the SIGNATURE FIS Timeout timer for this phy
   this_phy->sata_timeout_timer = FUNC1(
      FUNC3(this_phy),
      scic_sds_phy_sata_timeout,
      this_phy
   );

   if (this_phy->sata_timeout_timer != NULL)
   {
      FUNC0(
         FUNC2(this_phy),
         SCI_BASE_PHY_STATE_STARTING
      );
   }

   return SCI_SUCCESS;
}