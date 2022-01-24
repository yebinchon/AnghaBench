#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  controller; } ;
struct TYPE_12__ {int current_smp_request; int /*<<< orphan*/  current_activity_phy_index; int /*<<< orphan*/  number_of_phys; } ;
struct TYPE_13__ {TYPE_1__ smp_device; } ;
struct TYPE_14__ {TYPE_2__ protocol_device; TYPE_4__* domain; } ;
typedef  TYPE_3__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef  TYPE_4__ SCIF_SAS_DOMAIN_T ;

/* Variables and functions */
 int /*<<< orphan*/  PHY_OPERATION_HARD_RESET ; 
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ; 
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  SMP_FUNCTION_DISCOVER 132 
#define  SMP_FUNCTION_PHY_CONTROL 131 
#define  SMP_FUNCTION_REPORT_GENERAL 130 
#define  SMP_FUNCTION_REPORT_MANUFACTURER_INFORMATION 129 
#define  SMP_FUNCTION_REPORT_PHY_SATA 128 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 

void FUNC7(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device
)
{
   SCIF_SAS_DOMAIN_T * fw_domain = fw_device->domain;

   FUNC0((
      FUNC1(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_smp_remote_device_continue_discover(0x%x) enter\n",
      fw_device
   ));

   switch (fw_device->protocol_device.smp_device.current_smp_request)
   {
      case SMP_FUNCTION_REPORT_GENERAL:
         // send the REPORT MANUFACTURER_INFO request
         fw_device->protocol_device.smp_device.current_smp_request =
            SMP_FUNCTION_REPORT_MANUFACTURER_INFORMATION;

         FUNC5(
            fw_domain->controller, fw_device
         );

         break;

      case SMP_FUNCTION_REPORT_MANUFACTURER_INFORMATION:
         //send the first SMP DISCOVER request.
         fw_device->protocol_device.smp_device.current_activity_phy_index = 0;
         fw_device->protocol_device.smp_device.current_smp_request =
            SMP_FUNCTION_DISCOVER;

         FUNC3(
            fw_domain->controller,
            fw_device,
            fw_device->protocol_device.smp_device.current_activity_phy_index,
            NULL, NULL
         );
         break;


      case SMP_FUNCTION_DISCOVER:
         fw_device->protocol_device.smp_device.current_activity_phy_index++;

         if ( (fw_device->protocol_device.smp_device.current_activity_phy_index <
                  fw_device->protocol_device.smp_device.number_of_phys) )
         {
            FUNC3(
               fw_domain->controller,
               fw_device,
               fw_device->protocol_device.smp_device.current_activity_phy_index,
               NULL, NULL
            );
         }
         else
            FUNC2(fw_device);
         break;


      case SMP_FUNCTION_REPORT_PHY_SATA:
         FUNC6(
            fw_device->domain->controller,
            fw_device,
            fw_device->protocol_device.smp_device.current_activity_phy_index
         );

         break;


      case SMP_FUNCTION_PHY_CONTROL:
         FUNC4(
            fw_device->domain->controller,
            fw_device,
            PHY_OPERATION_HARD_RESET,
            fw_device->protocol_device.smp_device.current_activity_phy_index,
            NULL,
            NULL
         );

         break;

      default:
         break;
   }
}