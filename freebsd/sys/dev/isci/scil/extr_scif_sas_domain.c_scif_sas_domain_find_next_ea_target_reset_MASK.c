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
struct TYPE_7__ {int /*<<< orphan*/  remote_device_list; } ;
struct TYPE_6__ {int /*<<< orphan*/ * ea_target_reset_request_scheduled; } ;
typedef  int /*<<< orphan*/  SCI_ABSTRACT_ELEMENT_T ;
typedef  TYPE_1__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef  TYPE_2__ SCIF_SAS_DOMAIN_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIF_LOG_OBJECT_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

SCIF_SAS_REMOTE_DEVICE_T * FUNC5(
   SCIF_SAS_DOMAIN_T     * fw_domain
)
{
   SCI_ABSTRACT_ELEMENT_T   * current_element;
   SCIF_SAS_REMOTE_DEVICE_T * current_device;

   FUNC0((
      FUNC4(fw_domain),
      SCIF_LOG_OBJECT_DOMAIN,
      "scif_sas_domain_find_next_ea_target_reset(0x%x) enter\n",
      fw_domain
   ));

   //search through domain's device list to find the first sata device on spinup_hold
   current_element = FUNC1(&fw_domain->remote_device_list);
   while (current_element != NULL )
   {
      current_device = (SCIF_SAS_REMOTE_DEVICE_T *)
                       FUNC3(current_element);

      current_element = FUNC2(current_element);

      if ( current_device->ea_target_reset_request_scheduled != NULL )
      {
         return current_device;
      }
   }

   return NULL;
}