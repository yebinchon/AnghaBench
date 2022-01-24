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
struct TYPE_6__ {int /*<<< orphan*/  state_machine; } ;
struct TYPE_7__ {TYPE_1__ parent; int /*<<< orphan*/  core_object; } ;
typedef  scalar_t__ SCI_STATUS ;
typedef  TYPE_2__ SCIF_SAS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SCIF_LOG_OBJECT_CONTROLLER ; 
 int SCIF_LOG_OBJECT_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCI_BASE_CONTROLLER_STATE_FAILED ; 
 scalar_t__ SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 

SCI_STATUS FUNC6(
   SCIF_SAS_CONTROLLER_T * fw_controller
)
{
   SCI_STATUS status;

   FUNC1((
      FUNC2(fw_controller),
      SCIF_LOG_OBJECT_CONTROLLER | SCIF_LOG_OBJECT_SHUTDOWN,
      "scif_sas_controller_continue_to_stop (0x%x).\n",
      fw_controller
   ));

   //stop all the domains and their remote devices.
   status = FUNC5(fw_controller);

   if (status == SCI_SUCCESS)
   {
      // Attempt to stop the core controller.
      status = FUNC4(fw_controller->core_object, 0);

      if (status != SCI_SUCCESS)
      {
         FUNC0((
            FUNC2(fw_controller),
            SCIF_LOG_OBJECT_CONTROLLER | SCIF_LOG_OBJECT_SHUTDOWN,
            "Controller:0x%x Status:0x%x unable to stop controller.\n",
            fw_controller, status
         ));

         FUNC3(
            &fw_controller->parent.state_machine,
            SCI_BASE_CONTROLLER_STATE_FAILED
         );
      }
   }
   else
   {
      FUNC0((
         FUNC2(fw_controller),
         SCIF_LOG_OBJECT_CONTROLLER | SCIF_LOG_OBJECT_SHUTDOWN,
         "Controller:0x%x Status:0x%x unable to stop domains.\n",
         fw_controller, status
      ));

      FUNC3(
         &fw_controller->parent.state_machine,
         SCI_BASE_CONTROLLER_STATE_FAILED
      );
   }

   return status;
}