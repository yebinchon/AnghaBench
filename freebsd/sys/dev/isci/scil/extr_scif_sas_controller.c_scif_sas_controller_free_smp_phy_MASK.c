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
struct TYPE_7__ {int /*<<< orphan*/  smp_phy_memory_list; } ;
struct TYPE_6__ {int /*<<< orphan*/  list_element; } ;
typedef  TYPE_1__ SCIF_SAS_SMP_PHY_T ;
typedef  TYPE_2__ SCIF_SAS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIF_LOG_OBJECT_CONTROLLER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC3(
   SCIF_SAS_CONTROLLER_T * fw_controller,
   SCIF_SAS_SMP_PHY_T    * smp_phy
)
{
   FUNC0((
      FUNC1(fw_controller),
      SCIF_LOG_OBJECT_CONTROLLER,
      "scif_controller_free_smp_phy(0x%x, 0x%x) enter\n",
      fw_controller, smp_phy
   ));

   //return the memory to the list.
   FUNC2(
      &fw_controller->smp_phy_memory_list,
      &smp_phy->list_element
   );
}