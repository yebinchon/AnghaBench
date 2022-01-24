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
struct TYPE_7__ {TYPE_1__* state_handlers; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* consume_power_handler ) (TYPE_2__*) ;} ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  TYPE_2__ SCIC_SDS_PHY_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIC_LOG_OBJECT_PHY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

SCI_STATUS FUNC3(
   SCIC_SDS_PHY_T *this_phy
)
{
   FUNC0((
      FUNC1(this_phy),
      SCIC_LOG_OBJECT_PHY,
      "scic_sds_phy_consume_power_handler(this_phy:0x%08x)\n",
      this_phy
   ));

   return this_phy->state_handlers->consume_power_handler(this_phy);
}