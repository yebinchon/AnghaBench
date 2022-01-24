#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  current_activity_phy_index; } ;
struct TYPE_10__ {TYPE_1__ smp_device; } ;
struct TYPE_11__ {TYPE_2__ protocol_device; int /*<<< orphan*/  domain; } ;
typedef  int /*<<< orphan*/  SCIF_SAS_REQUEST_T ;
typedef  TYPE_3__ SCIF_SAS_REMOTE_DEVICE_T ;

/* Variables and functions */
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ; 
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCI_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC4(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device,
   SCIF_SAS_REQUEST_T       * fw_request
)
{
   SCIF_SAS_REMOTE_DEVICE_T * target_device =
      FUNC2(
         fw_device->domain,
         fw_device,
         fw_device->protocol_device.smp_device.current_activity_phy_index
      );

   FUNC0(*(
      FUNC1(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_smp_remote_device_fail_target_reset(0x%x, 0x%x, 0x%x) enter\n",
      fw_device, target_device, fw_request
   ));

   //tell target reset failed
   FUNC3(
      target_device, fw_request, SCI_FAILURE);
}