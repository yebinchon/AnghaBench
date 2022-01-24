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
struct TYPE_7__ {int /*<<< orphan*/  operation_status; TYPE_1__ parent; } ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  TYPE_2__ SCIF_SAS_CONTROLLER_T ;

/* Variables and functions */
 int SCIF_LOG_OBJECT_CONTROLLER ; 
 int SCIF_LOG_OBJECT_CONTROLLER_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCI_BASE_CONTROLLER_STATE_RESETTING ; 
 int /*<<< orphan*/  SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static
SCI_STATUS FUNC4(
   SCIF_SAS_CONTROLLER_T * fw_controller
)
{
   SCI_STATUS  status;

   FUNC0((
      FUNC1(fw_controller),
      SCIF_LOG_OBJECT_CONTROLLER | SCIF_LOG_OBJECT_CONTROLLER_RESET,
      "scif_sas_controller_execute_reset(0x%x) enter\n",
      fw_controller
   ));

   //clean the timer to avoid timer leak.
   FUNC3(fw_controller);

   FUNC2(
      &fw_controller->parent.state_machine,
      SCI_BASE_CONTROLLER_STATE_RESETTING
   );

   // Retrieve the status for the operations performed during the entrance
   // to the resetting state were executing successfully.
   status = fw_controller->operation_status;
   fw_controller->operation_status = SCI_SUCCESS;

   return status;
}