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
struct TYPE_6__ {int device_port_width; int /*<<< orphan*/  is_currently_discovered; int /*<<< orphan*/ * containing_device; } ;
typedef  int /*<<< orphan*/  SCI_ABSTRACT_ELEMENT_T ;
typedef  TYPE_1__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef  TYPE_2__ SCIF_SAS_DOMAIN_T ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4(
   SCIF_SAS_DOMAIN_T        * fw_domain,
   SCIF_SAS_REMOTE_DEVICE_T * top_expander
)
{
   SCI_ABSTRACT_ELEMENT_T * current_element =
       FUNC0(&fw_domain->remote_device_list);

   SCIF_SAS_REMOTE_DEVICE_T * current_device;

   // something changed behind expander
   // mark all the device behind expander to be NOT
   // is_currently_discovered.
   while ( current_element != NULL )
   {
      current_device = (SCIF_SAS_REMOTE_DEVICE_T *)
                           FUNC2(current_element);

      current_device->is_currently_discovered = FALSE;

      //reset all the devices' port witdh except the top expander.
      if (current_device->containing_device != NULL)
         current_device->device_port_width = 1;

      current_element = FUNC1(current_element);
   }

   //expander device itself should be set to is_currently_discovered.
   top_expander->is_currently_discovered = TRUE;

   //kick off the smp discover process.
   FUNC3(top_expander);
}