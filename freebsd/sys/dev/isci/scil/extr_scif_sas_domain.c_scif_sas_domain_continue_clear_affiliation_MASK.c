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
struct TYPE_7__ {int /*<<< orphan*/  current_domain_to_clear_affiliation; } ;
struct TYPE_6__ {TYPE_2__* controller; } ;
typedef  int /*<<< orphan*/  SCIF_SAS_REMOTE_DEVICE_T ;
typedef  TYPE_1__ SCIF_SAS_DOMAIN_T ;
typedef  TYPE_2__ SCIF_SAS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_CLEAR_AFFILIATION ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(
   SCIF_SAS_DOMAIN_T * fw_domain
)
{
   SCIF_SAS_REMOTE_DEVICE_T * smp_device =
      FUNC1(
         fw_domain,
         SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_CLEAR_AFFILIATION
      );

   if (smp_device != NULL)
      FUNC2(smp_device);
   else
   {
      //This domain has done clear affiliation.
      SCIF_SAS_CONTROLLER_T * fw_controller = fw_domain->controller;
      fw_controller->current_domain_to_clear_affiliation++;

      //let controller continue to clear affiliation on other domains.
      FUNC0(fw_domain->controller);
   }
}