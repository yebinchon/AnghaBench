#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ SCI_CONTROLLER_HANDLE_T ;
typedef  scalar_t__ SCI_BASE_CONTROLLER_STATES ;
typedef  int /*<<< orphan*/  SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCIC_LOG_OBJECT_CONTROLLER ; 
 int /*<<< orphan*/  SCI_BASE_CONTROLLER_STATE_FAILED ; 
 scalar_t__ SCI_BASE_CONTROLLER_STATE_STARTING ; 
 scalar_t__ SCI_BASE_CONTROLLER_STATE_STOPPING ; 
 int /*<<< orphan*/  SCI_FAILURE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC7(
   SCI_CONTROLLER_HANDLE_T controller
)
{
   SCI_BASE_CONTROLLER_STATES current_state;
   SCIC_SDS_CONTROLLER_T *this_controller;
   this_controller = (SCIC_SDS_CONTROLLER_T *)controller;

   current_state = FUNC3(
                      FUNC5(this_controller)
                   );

   if (current_state == SCI_BASE_CONTROLLER_STATE_STARTING)
   {
      FUNC6(
         this_controller, SCI_FAILURE_TIMEOUT
      );
   }
   else if (current_state == SCI_BASE_CONTROLLER_STATE_STOPPING)
   {
      FUNC2(
         FUNC5(this_controller),
         SCI_BASE_CONTROLLER_STATE_FAILED
      );

      FUNC4(controller, SCI_FAILURE_TIMEOUT);
   }
   else
   {
      /// @todo Now what do we want to do in this case?
      FUNC0((
         FUNC1(this_controller),
         SCIC_LOG_OBJECT_CONTROLLER,
         "Controller timer fired when controller was not in a state being timed.\n"
      ));
   }
}