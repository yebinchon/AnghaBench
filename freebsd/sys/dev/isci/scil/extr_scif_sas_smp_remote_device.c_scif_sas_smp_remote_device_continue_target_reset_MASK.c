#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int U32 ;
struct TYPE_13__ {int /*<<< orphan*/ * controller; } ;
struct TYPE_10__ {scalar_t__ current_smp_request; int /*<<< orphan*/ * smp_activity_timer; int /*<<< orphan*/  current_activity_phy_index; } ;
struct TYPE_11__ {TYPE_1__ smp_device; } ;
struct TYPE_12__ {TYPE_2__ protocol_device; int /*<<< orphan*/  core_object; TYPE_7__* domain; } ;
typedef  int /*<<< orphan*/  SCI_TIMER_CALLBACK_T ;
typedef  int /*<<< orphan*/  SCI_CONTROLLER_HANDLE_T ;
typedef  int /*<<< orphan*/  SCIF_SAS_REQUEST_T ;
typedef  TYPE_3__ SCIF_SAS_REMOTE_DEVICE_T ;
typedef  int /*<<< orphan*/  SCIF_SAS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ; 
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCI_SUCCESS ; 
 scalar_t__ SMP_FUNCTION_DISCOVER ; 
 scalar_t__ SMP_FUNCTION_PHY_CONTROL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 TYPE_3__* FUNC6 (TYPE_7__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ scif_sas_smp_remote_device_target_reset_poll ; 

void FUNC8(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device,
   SCIF_SAS_REQUEST_T       * fw_request
)
{
   SCIF_SAS_CONTROLLER_T * fw_controller = fw_device->domain->controller;
   SCIF_SAS_REMOTE_DEVICE_T * target_device =
      FUNC6(
         fw_device->domain,
         fw_device,
         fw_device->protocol_device.smp_device.current_activity_phy_index
      );

   FUNC1(*(
      FUNC2(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_smp_remote_device_continue_target_reset(0x%x, 0x%x) enter\n",
      fw_device, fw_request
   ));

   if (fw_device->protocol_device.smp_device.current_smp_request ==
          SMP_FUNCTION_PHY_CONTROL)
   {
      //query the core remote device to get suggested reset timeout value
      //then scale down by factor of 8 to get the duration of the pause
      //before sending out Discover command to poll.
      U32 delay =
         (FUNC3(target_device->core_object)/8);

      //create the timer to send Discover command polling target device's
      //coming back.
      if (fw_device->protocol_device.smp_device.smp_activity_timer == NULL)
      {
         fw_device->protocol_device.smp_device.smp_activity_timer =
            FUNC4(
               (SCI_CONTROLLER_HANDLE_T *)fw_controller,
               (SCI_TIMER_CALLBACK_T)scif_sas_smp_remote_device_target_reset_poll,
               (void*)fw_request
            );
      }
      else
      {
         FUNC0(0);
      }

      //start the timer
      FUNC5(
         (SCI_CONTROLLER_HANDLE_T)fw_controller,
         fw_device->protocol_device.smp_device.smp_activity_timer,
         delay
      );
   }
   else if (fw_device->protocol_device.smp_device.current_smp_request ==
          SMP_FUNCTION_DISCOVER)
   {
      //tell target reset successful
      FUNC7(
         target_device, fw_request, SCI_SUCCESS);
   }
}