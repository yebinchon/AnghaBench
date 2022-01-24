#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  controller; } ;
struct TYPE_10__ {scalar_t__ previous_state_id; } ;
struct TYPE_11__ {TYPE_1__ state_machine; } ;
struct TYPE_12__ {TYPE_4__* domain; TYPE_2__ parent; int /*<<< orphan*/  operation_status; } ;
typedef  int /*<<< orphan*/  SCI_BASE_OBJECT_T ;
typedef  TYPE_3__ SCIF_SAS_REMOTE_DEVICE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ; 
 int SCIF_LOG_OBJECT_REMOTE_DEVICE_CONFIG ; 
 int /*<<< orphan*/  SCI_BASE_REMOTE_DEVICE_STATE_FAILED ; 
 scalar_t__ SCI_BASE_REMOTE_DEVICE_STATE_STARTING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  scif_sas_remote_device_state_handler_table ; 

__attribute__((used)) static
void FUNC5(
   SCI_BASE_OBJECT_T *object
)
{
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = (SCIF_SAS_REMOTE_DEVICE_T *)object;

   FUNC1(
      fw_device,
      scif_sas_remote_device_state_handler_table,
      SCI_BASE_REMOTE_DEVICE_STATE_FAILED
   );

   FUNC0((
      FUNC2(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_REMOTE_DEVICE_CONFIG,
      "Domain:0x%x Device:0x%x Status:0x%x device failed\n",
      fw_device->domain, fw_device, fw_device->operation_status
   ));

   // Notify the user that the device has failed.
   FUNC3(
      fw_device->domain->controller,
      fw_device->domain,
      fw_device,
      fw_device->operation_status
   );

   // Only call start_complete for the remote device if the device failed
   // from the STARTING state.
   if (fw_device->parent.state_machine.previous_state_id
       == SCI_BASE_REMOTE_DEVICE_STATE_STARTING)
      FUNC4(fw_device->domain,fw_device);
}