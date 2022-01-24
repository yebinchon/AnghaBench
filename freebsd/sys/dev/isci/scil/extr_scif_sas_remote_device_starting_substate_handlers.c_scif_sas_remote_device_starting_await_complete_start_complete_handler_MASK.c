#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  state_machine; } ;
struct TYPE_8__ {TYPE_2__* domain; TYPE_1__ parent; int /*<<< orphan*/  starting_substate_machine; } ;
struct TYPE_7__ {int /*<<< orphan*/  controller; } ;
typedef  scalar_t__ SCI_STATUS ;
typedef  TYPE_3__ SCIF_SAS_REMOTE_DEVICE_T ;

/* Variables and functions */
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ; 
 int SCIF_LOG_OBJECT_REMOTE_DEVICE_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCIF_SAS_REMOTE_DEVICE_STARTING_SUBSTATE_AWAIT_READY ; 
 int /*<<< orphan*/  SCI_BASE_REMOTE_DEVICE_STATE_FAILED ; 
 int /*<<< orphan*/  SCI_CONTROLLER_REMOTE_DEVICE_ERROR ; 
 scalar_t__ SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void FUNC4(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device,
   SCI_STATUS                 completion_status
)
{
   if (completion_status == SCI_SUCCESS)
   {
      /** @todo need to add support for resetting the device first.  This can
                wait until 1.3. */
      /** @todo Update to comprehend situations (i.e. SATA) where config is
                needed. */

      FUNC2(
         &fw_device->starting_substate_machine,
         SCIF_SAS_REMOTE_DEVICE_STARTING_SUBSTATE_AWAIT_READY
      );
   }
   else
   {
      FUNC0((
         FUNC1(fw_device),
         SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_REMOTE_DEVICE_CONFIG,
         "Device:0x%x Status:0x%x failed to start core device\n",
         fw_device
      ));

      FUNC2(
         &fw_device->parent.state_machine,
         SCI_BASE_REMOTE_DEVICE_STATE_FAILED
      );

      // Something is seriously wrong.  Starting the core remote device
      // shouldn't fail in anyway in this state.
      FUNC3(fw_device->domain->controller,
              SCI_CONTROLLER_REMOTE_DEVICE_ERROR);
   }
}