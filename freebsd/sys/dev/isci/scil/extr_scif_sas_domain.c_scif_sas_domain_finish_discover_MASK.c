#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  state_machine; } ;
struct TYPE_10__ {TYPE_1__ parent; int /*<<< orphan*/  controller; int /*<<< orphan*/  remote_device_list; } ;
struct TYPE_9__ {scalar_t__ is_currently_discovered; } ;
typedef  int /*<<< orphan*/  SCI_ABSTRACT_ELEMENT_T ;
typedef  TYPE_2__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef  TYPE_3__ SCIF_SAS_DOMAIN_T ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int SCIF_LOG_OBJECT_DOMAIN ; 
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCI_BASE_DOMAIN_STATE_READY ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_3__*,TYPE_2__*) ; 

void FUNC7(
   SCIF_SAS_DOMAIN_T * fw_domain
)
{
   SCIF_SAS_REMOTE_DEVICE_T * current_device = NULL;
   SCI_ABSTRACT_ELEMENT_T   * current_element = NULL;

   FUNC0((
      FUNC4(fw_domain),
      SCIF_LOG_OBJECT_DOMAIN | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_domain_finish_discover(0x%x) enter\n",
      fw_domain
   ));

   //need to scrub all the devices behind the expander. Check each
   //device's discover_status. if the is_currently_discovered is FALSE, means
   //the device is not been rediscovered. this device needs to be removed.
   current_element = FUNC1(&fw_domain->remote_device_list);
   while (current_element != NULL )
   {
      current_device = (SCIF_SAS_REMOTE_DEVICE_T *)
                          FUNC3(current_element);

      //We must get the next element before we remove the current
      //device. Or else, we will get wrong next_element, since the erased
      //element has been put into free pool.
      current_element = FUNC2(current_element);

      if ( current_device->is_currently_discovered == FALSE )
      {
         // Notify the framework user of the device removal.
         FUNC6(
            fw_domain->controller, fw_domain, current_device
         );
      }
   }

   FUNC5(
      &fw_domain->parent.state_machine, SCI_BASE_DOMAIN_STATE_READY
   );
}