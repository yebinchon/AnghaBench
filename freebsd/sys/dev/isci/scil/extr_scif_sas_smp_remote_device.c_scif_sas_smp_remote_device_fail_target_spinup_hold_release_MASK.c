#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  controller; } ;
struct TYPE_9__ {TYPE_2__* domain; } ;
typedef  TYPE_1__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef  TYPE_2__ SCIF_SAS_DOMAIN_T ;

/* Variables and functions */
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ; 
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device,
   SCIF_SAS_REMOTE_DEVICE_T * target_device
)
{
   SCIF_SAS_DOMAIN_T * fw_domain = fw_device->domain;

   FUNC0((
      FUNC1(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_smp_remote_device_fail_target_spinup_hold_release(0x%x, 0x%x) enter\n",
      fw_device, target_device
   ));

   //need to remove the device, since we have to give up on spinup_hold_release
   //activity on this device.
   FUNC2(
      fw_domain->controller, fw_domain, target_device
   );

   //move on to next round of SPINUP_HOLD_REALSE activity.
   FUNC3(fw_device);
}