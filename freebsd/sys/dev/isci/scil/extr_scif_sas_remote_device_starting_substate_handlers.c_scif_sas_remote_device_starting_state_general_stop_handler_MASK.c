#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  state_machine; } ;
struct TYPE_7__ {TYPE_2__ parent; TYPE_1__* domain; } ;
struct TYPE_5__ {int /*<<< orphan*/  device_start_in_progress_count; } ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  int /*<<< orphan*/  SCI_BASE_REMOTE_DEVICE_T ;
typedef  TYPE_3__ SCIF_SAS_REMOTE_DEVICE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCIF_LOG_OBJECT_REMOTE_DEVICE ; 
 int /*<<< orphan*/  SCI_BASE_REMOTE_DEVICE_STATE_STOPPING ; 
 int /*<<< orphan*/  SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
SCI_STATUS
FUNC3(
   SCI_BASE_REMOTE_DEVICE_T * remote_device
)
{
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = (SCIF_SAS_REMOTE_DEVICE_T *)
                                          remote_device;

   FUNC0((
      FUNC1(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE,
      "RemoteDevice:0x%x starting device requested to stop\n",
      fw_device
   ));

   fw_device->domain->device_start_in_progress_count--;

   FUNC2(
      &fw_device->parent.state_machine, SCI_BASE_REMOTE_DEVICE_STATE_STOPPING
   );

   return SCI_SUCCESS;
}