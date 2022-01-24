#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  state_machine; } ;
struct TYPE_5__ {int /*<<< orphan*/  operation_status; int /*<<< orphan*/  domain; TYPE_1__ parent; } ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  int /*<<< orphan*/  SCI_BASE_REMOTE_DEVICE_T ;
typedef  TYPE_2__ SCIF_SAS_REMOTE_DEVICE_T ;

/* Variables and functions */
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ; 
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SCI_BASE_REMOTE_DEVICE_STATE_FAILED ; 
 int /*<<< orphan*/  SCI_BASE_REMOTE_DEVICE_STATE_STARTING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
SCI_STATUS FUNC4(
   SCI_BASE_REMOTE_DEVICE_T * remote_device
)
{
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = (SCIF_SAS_REMOTE_DEVICE_T *)
                                          remote_device;

   FUNC2(
      &fw_device->parent.state_machine, SCI_BASE_REMOTE_DEVICE_STATE_STARTING
   );

   // Check to see if the state transition occurred without issue.
   if (FUNC3(&fw_device->parent.state_machine)
       == SCI_BASE_REMOTE_DEVICE_STATE_FAILED)
   {
      FUNC0((
         FUNC1(fw_device),
         SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
         "Domain:0x%x Device:0x%x Status:0x%x failed to start\n",
         fw_device->domain, fw_device, fw_device->operation_status
      ));
   }

   return fw_device->operation_status;
}