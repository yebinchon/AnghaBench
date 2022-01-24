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
struct TYPE_7__ {int /*<<< orphan*/  state_machine; } ;
struct TYPE_8__ {scalar_t__ destination_state; int /*<<< orphan*/  core_object; int /*<<< orphan*/  device_port_width; TYPE_2__ parent; TYPE_1__* domain; } ;
struct TYPE_6__ {int /*<<< orphan*/  device_start_count; } ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  TYPE_3__ SCIF_SAS_REMOTE_DEVICE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCIF_LOG_OBJECT_REMOTE_DEVICE ; 
 int /*<<< orphan*/  SCIF_SAS_REMOTE_DEVICE_CORE_OP_TIMEOUT ; 
 scalar_t__ SCIF_SAS_REMOTE_DEVICE_DESTINATION_STATE_STOPPING ; 
 int /*<<< orphan*/  SCI_BASE_REMOTE_DEVICE_STATE_STOPPED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void FUNC6(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device,
   SCI_STATUS                 completion_status
)
{
   FUNC0((
      FUNC1(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE,
      "RemoteDevice:0x%x updating port width state stop complete handler\n",
      fw_device,
      FUNC3(&fw_device->parent.state_machine)
   ));

   if ( fw_device->destination_state
           == SCIF_SAS_REMOTE_DEVICE_DESTINATION_STATE_STOPPING )
   {
      //Device directly transits to STOPPED STATE from UPDATING_PORT_WIDTH state,
      fw_device->domain->device_start_count--;

      //if the destination state of this device change to STOPPING, no matter
      //whether we need to update the port width again, just make the device
      //go to the STOPPED state.
      FUNC2(
         &fw_device->parent.state_machine,
         SCI_BASE_REMOTE_DEVICE_STATE_STOPPED
      );
   }
   else
   {
      FUNC4(
         fw_device->core_object,
         fw_device->device_port_width
      );

      //Device stop complete, means the RNC has been destructed. Now we need to
      //start core device so the RNC with updated port width will be posted.
      FUNC5(
         fw_device->core_object, SCIF_SAS_REMOTE_DEVICE_CORE_OP_TIMEOUT);
   }
}