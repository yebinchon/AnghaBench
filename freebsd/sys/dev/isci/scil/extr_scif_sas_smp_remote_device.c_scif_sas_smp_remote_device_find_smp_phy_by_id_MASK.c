#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ U8 ;
struct TYPE_8__ {scalar_t__ phy_identifier; } ;
struct TYPE_6__ {scalar_t__ number_of_phys; int /*<<< orphan*/ * list_head; } ;
struct TYPE_7__ {TYPE_1__ smp_phy_list; } ;
typedef  int /*<<< orphan*/  SCI_FAST_LIST_ELEMENT_T ;
typedef  TYPE_2__ SCIF_SAS_SMP_REMOTE_DEVICE_T ;
typedef  TYPE_3__ SCIF_SAS_SMP_PHY_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

SCIF_SAS_SMP_PHY_T * FUNC3(
   U8                             phy_identifier,
   SCIF_SAS_SMP_REMOTE_DEVICE_T * smp_remote_device
)
{
   SCI_FAST_LIST_ELEMENT_T  * element = smp_remote_device->smp_phy_list.list_head;
   SCIF_SAS_SMP_PHY_T * curr_smp_phy = NULL;

   FUNC0(phy_identifier < smp_remote_device->smp_phy_list.number_of_phys);

   while (element != NULL)
   {
      curr_smp_phy = (SCIF_SAS_SMP_PHY_T*) FUNC2(element);
      element = FUNC1(element);

      if (curr_smp_phy->phy_identifier == phy_identifier)
         return curr_smp_phy;
   }

   return NULL;
}