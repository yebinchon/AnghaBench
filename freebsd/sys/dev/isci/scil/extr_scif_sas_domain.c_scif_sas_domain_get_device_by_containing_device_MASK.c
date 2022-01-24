#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ U8 ;
struct TYPE_8__ {int /*<<< orphan*/  remote_device_list; } ;
struct TYPE_7__ {scalar_t__ expander_phy_identifier; struct TYPE_7__* containing_device; } ;
typedef  int /*<<< orphan*/  SCI_ABSTRACT_ELEMENT_T ;
typedef  TYPE_1__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef  TYPE_2__ SCIF_SAS_DOMAIN_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* SCI_INVALID_HANDLE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

SCIF_SAS_REMOTE_DEVICE_T * FUNC4(
   SCIF_SAS_DOMAIN_T        * fw_domain,
   SCIF_SAS_REMOTE_DEVICE_T * containing_device,
   U8                         expander_phy_id
)
{
   SCIF_SAS_REMOTE_DEVICE_T * fw_device;
   SCI_ABSTRACT_ELEMENT_T * element = FUNC1(
                                         &fw_domain->remote_device_list
                                      );

   //parent device must not be NULL.
   FUNC0(containing_device != NULL);

   // Search the abstract list to see if there is a remote device meets the
   // search condition.
   while (element != NULL)
   {
      fw_device = (SCIF_SAS_REMOTE_DEVICE_T*)
                  FUNC3(element);

      // Check to see if this is the device for which we are searching.
      if (
            (fw_device->containing_device == containing_device)
         && (fw_device->expander_phy_identifier == expander_phy_id)
         )
      {
         return fw_device;
      }

      element = FUNC2(element);
   }

   return SCI_INVALID_HANDLE;
}