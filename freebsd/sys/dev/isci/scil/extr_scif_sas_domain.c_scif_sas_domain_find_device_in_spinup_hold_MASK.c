#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  remote_device_list; } ;
struct TYPE_7__ {int /*<<< orphan*/  state_machine; } ;
struct TYPE_8__ {int /*<<< orphan*/  core_object; TYPE_1__ parent; } ;
typedef  int /*<<< orphan*/  SCI_ABSTRACT_ELEMENT_T ;
typedef  TYPE_2__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef  TYPE_3__ SCIF_SAS_DOMAIN_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIF_LOG_OBJECT_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SCI_BASE_REMOTE_DEVICE_STATE_STOPPED ; 
 scalar_t__ SCI_SATA_SPINUP_HOLD ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

SCIF_SAS_REMOTE_DEVICE_T * FUNC7(
   SCIF_SAS_DOMAIN_T        * fw_domain
)
{
   SCI_ABSTRACT_ELEMENT_T   * current_element;
   SCIF_SAS_REMOTE_DEVICE_T * current_device;

   FUNC0((
      FUNC4(fw_domain),
      SCIF_LOG_OBJECT_DOMAIN,
      "scif_sas_domain_find_device_in_spinup_hold(0x%x) enter\n",
      fw_domain
   ));

   //search throught domain's device list to find the first sata device on spinup_hold
   current_element = FUNC1(&fw_domain->remote_device_list);
   while (current_element != NULL )
   {
      current_device = (SCIF_SAS_REMOTE_DEVICE_T *)
                       FUNC3(current_element);

      //We must get the next element before we remove the current
      //device. Or else, we will get wrong next_element, since the erased
      //element has been put into free pool.
      current_element = FUNC2(current_element);

      if ( FUNC5(&current_device->parent.state_machine) ==
              SCI_BASE_REMOTE_DEVICE_STATE_STOPPED
          && FUNC6(current_device->core_object) ==
                SCI_SATA_SPINUP_HOLD )
      {
         return current_device;
      }
   }

   return NULL;
}