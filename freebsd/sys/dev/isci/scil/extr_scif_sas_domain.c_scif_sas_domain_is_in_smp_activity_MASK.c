#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  remote_device_list; } ;
struct TYPE_12__ {int /*<<< orphan*/  core_object; } ;
struct TYPE_9__ {scalar_t__ attached_smp_target; } ;
struct TYPE_10__ {TYPE_1__ bits; } ;
struct TYPE_11__ {TYPE_2__ u; } ;
typedef  TYPE_3__ SMP_DISCOVER_RESPONSE_PROTOCOLS_T ;
typedef  int /*<<< orphan*/  SCI_ABSTRACT_ELEMENT_T ;
typedef  TYPE_4__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef  TYPE_5__ SCIF_SAS_DOMAIN_T ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_4__*) ; 

BOOL FUNC5(
   SCIF_SAS_DOMAIN_T        * fw_domain
)
{
   SCI_ABSTRACT_ELEMENT_T * current_element =
      FUNC0(&fw_domain->remote_device_list);

   SCIF_SAS_REMOTE_DEVICE_T * current_device;

   while ( current_element != NULL )
   {
      SMP_DISCOVER_RESPONSE_PROTOCOLS_T  dev_protocols;

      current_device = (SCIF_SAS_REMOTE_DEVICE_T *)
                       FUNC2(current_element);

      FUNC3(current_device->core_object,
                                       &dev_protocols
      );

      if (dev_protocols.u.bits.attached_smp_target &&
          FUNC4(current_device))
         return TRUE;

      current_element =
         FUNC1(current_element);
   }

   return FALSE;
}