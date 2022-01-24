#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int current_smp_request; } ;
struct TYPE_9__ {TYPE_1__ smp_device; } ;
struct TYPE_10__ {TYPE_2__ protocol_device; } ;
typedef  TYPE_3__ SCIF_SAS_REMOTE_DEVICE_T ;

/* Variables and functions */
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ; 
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  SMP_FUNCTION_DISCOVER 131 
#define  SMP_FUNCTION_REPORT_GENERAL 130 
#define  SMP_FUNCTION_REPORT_MANUFACTURER_INFORMATION 129 
#define  SMP_FUNCTION_REPORT_PHY_SATA 128 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

void FUNC4(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device
)
{
   FUNC0((
      FUNC1(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_smp_remote_device_fail_discover(0x%x) enter\n",
      fw_device
   ));

   switch (fw_device->protocol_device.smp_device.current_smp_request)
   {
      case SMP_FUNCTION_REPORT_GENERAL:
      case SMP_FUNCTION_REPORT_MANUFACTURER_INFORMATION:
         FUNC3(fw_device);
         break;

      case SMP_FUNCTION_DISCOVER:
      case SMP_FUNCTION_REPORT_PHY_SATA:
         //Retry limit reached, we will continue to send DISCOVER to next phy.
         fw_device->protocol_device.smp_device.current_smp_request =
            SMP_FUNCTION_DISCOVER;

         FUNC2(fw_device);
         break;

      default:
         break;
   }
}