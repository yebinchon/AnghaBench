#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  low; int /*<<< orphan*/  high; } ;
typedef  TYPE_1__ SCI_SAS_ADDRESS_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_PHY_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIC_LOG_OBJECT_PHY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(
   SCIC_SDS_PHY_T *this_phy,
   SCI_SAS_ADDRESS_T *sas_address
)
{
   FUNC0((
      FUNC3(this_phy),
      SCIC_LOG_OBJECT_PHY,
      "scic_sds_phy_get_sas_address(this_phy:0x%x, sas_address:0x%x)\n",
      this_phy, sas_address
   ));

   sas_address->high = FUNC1(this_phy);
   sas_address->low  = FUNC2(this_phy);
}