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
struct TYPE_7__ {int /*<<< orphan*/  controller; } ;
struct TYPE_6__ {TYPE_2__* domain; } ;
typedef  int /*<<< orphan*/  SCI_BASE_OBJECT_T ;
typedef  TYPE_1__ SCIF_SAS_REMOTE_DEVICE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ; 
 int SCIF_LOG_OBJECT_REMOTE_DEVICE_CONFIG ; 
 int /*<<< orphan*/  SCIF_SAS_REMOTE_DEVICE_READY_SUBSTATE_OPERATIONAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  scif_sas_remote_device_ready_substate_handler_table ; 

__attribute__((used)) static
void FUNC4(
   SCI_BASE_OBJECT_T *object
)
{
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = (SCIF_SAS_REMOTE_DEVICE_T *)object;

   FUNC1(
      fw_device,
      scif_sas_remote_device_ready_substate_handler_table,
      SCIF_SAS_REMOTE_DEVICE_READY_SUBSTATE_OPERATIONAL
   );

   FUNC0((
      FUNC2(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_REMOTE_DEVICE_CONFIG,
      "Domain:0x%x Device:0x%x device ready\n",
      fw_device->domain, fw_device
   ));

   // Notify the user that the device has become ready.
   FUNC3(
      fw_device->domain->controller, fw_device->domain, fw_device
   );
}