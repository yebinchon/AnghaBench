#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {TYPE_2__* controller; int /*<<< orphan*/  remote_device_list; } ;
struct TYPE_15__ {int /*<<< orphan*/  core_object; } ;
struct TYPE_13__ {scalar_t__ attached_smp_target; } ;
struct TYPE_11__ {TYPE_3__ bits; } ;
struct TYPE_14__ {TYPE_1__ u; } ;
struct TYPE_12__ {int /*<<< orphan*/  hprq; } ;
typedef  TYPE_4__ SMP_DISCOVER_RESPONSE_PROTOCOLS_T ;
typedef  int /*<<< orphan*/  SCI_ABSTRACT_ELEMENT_T ;
typedef  TYPE_5__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef  TYPE_6__ SCIF_SAS_DOMAIN_T ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 

void FUNC6(
   SCIF_SAS_DOMAIN_T * fw_domain
)
{
   SCI_ABSTRACT_ELEMENT_T * current_element =
      FUNC0(&fw_domain->remote_device_list);

   SCIF_SAS_REMOTE_DEVICE_T * current_device;

   //purge all the outstanding internal IOs in HPQ.
   FUNC4(
      &fw_domain->controller->hprq, fw_domain
   );

   while ( current_element != NULL )
   {
      SMP_DISCOVER_RESPONSE_PROTOCOLS_T  dev_protocols;

      current_device = (SCIF_SAS_REMOTE_DEVICE_T *)
                       FUNC2(current_element);

      FUNC3(current_device->core_object,
                                       &dev_protocols
      );

      if (dev_protocols.u.bits.attached_smp_target)
      {
         FUNC5(current_device);
      }

      current_element =
         FUNC1(current_element);
   }
}