#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * sata_timeout_timer; } ;
typedef  TYPE_1__ SCIC_SDS_PHY_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIC_LOG_OBJECT_PHY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC3(
   SCIC_SDS_CONTROLLER_T * controller,
   SCIC_SDS_PHY_T        * this_phy
)
{
   FUNC0((
      FUNC1(this_phy),
      SCIC_LOG_OBJECT_PHY,
      "scic_sds_phy_release_resource(0x%x, 0x%x)\n",
      controller, this_phy
   ));

   //Currently, the only resource to be released is a timer.
   if (this_phy->sata_timeout_timer != NULL)
   {
      FUNC2(controller, this_phy->sata_timeout_timer);
      this_phy->sata_timeout_timer = NULL;
   }
}