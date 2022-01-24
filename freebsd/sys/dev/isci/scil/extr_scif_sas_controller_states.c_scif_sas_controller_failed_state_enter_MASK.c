#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ error; } ;
struct TYPE_8__ {TYPE_1__ parent; } ;
typedef  int /*<<< orphan*/  SCI_BASE_OBJECT_T ;
typedef  TYPE_2__ SCIF_SAS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCIF_LOG_OBJECT_CONTROLLER ; 
 int /*<<< orphan*/  SCI_BASE_CONTROLLER_STATE_FAILED ; 
 scalar_t__ SCI_CONTROLLER_FATAL_MEMORY_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  scif_sas_controller_state_handler_table ; 

__attribute__((used)) static
void FUNC5(
   SCI_BASE_OBJECT_T * object
)
{
   SCIF_SAS_CONTROLLER_T * fw_controller = (SCIF_SAS_CONTROLLER_T *)object;

   FUNC0((
      FUNC2(fw_controller),
      SCIF_LOG_OBJECT_CONTROLLER,
      "Controller: entered FAILED state.\n"
   ));

   FUNC1(
      fw_controller,
      scif_sas_controller_state_handler_table,
      SCI_BASE_CONTROLLER_STATE_FAILED
   );

   if (fw_controller->parent.error != SCI_CONTROLLER_FATAL_MEMORY_ERROR)
   {
       //clean timers to avoid timer leak.
       FUNC4(fw_controller);

       //notify user.
       FUNC3(fw_controller, fw_controller->parent.error);
   }
}