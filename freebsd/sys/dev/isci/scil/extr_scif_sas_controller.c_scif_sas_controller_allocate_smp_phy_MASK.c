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
struct TYPE_4__ {int /*<<< orphan*/  smp_phy_memory_list; } ;
typedef  int /*<<< orphan*/  SCIF_SAS_SMP_PHY_T ;
typedef  TYPE_1__ SCIF_SAS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIF_LOG_OBJECT_CONTROLLER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

SCIF_SAS_SMP_PHY_T * FUNC5(
   SCIF_SAS_CONTROLLER_T * fw_controller
)
{
   SCIF_SAS_SMP_PHY_T * smp_phy;

   FUNC0((
      FUNC2(fw_controller),
      SCIF_LOG_OBJECT_CONTROLLER,
      "scif_controller_allocate_smp_phy(0x%x) enter\n",
      fw_controller
   ));

   if( !FUNC3(&fw_controller->smp_phy_memory_list) )
   {
      smp_phy = (SCIF_SAS_SMP_PHY_T *)
         FUNC4(&fw_controller->smp_phy_memory_list);

      //clean the memory.
      FUNC1((char*)smp_phy,
             0,
             sizeof(SCIF_SAS_SMP_PHY_T)
            );

      return smp_phy;
   }
   else
      return NULL;
}