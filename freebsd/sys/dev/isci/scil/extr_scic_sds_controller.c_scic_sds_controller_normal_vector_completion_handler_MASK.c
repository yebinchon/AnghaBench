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
typedef  int /*<<< orphan*/  SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIC_LOG_OBJECT_CONTROLLER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  SMU_ISR_COMPLETION ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
void FUNC6(
   SCI_CONTROLLER_HANDLE_T controller
)
{
   SCIC_SDS_CONTROLLER_T *this_controller;
   this_controller = (SCIC_SDS_CONTROLLER_T *)controller;

   FUNC0((
      FUNC3(controller),
      SCIC_LOG_OBJECT_CONTROLLER,
      "scic_sds_controller_normal_vector_completion_handler(0x%d) enter\n",
      controller
   ));

   // Empty out the completion queue
   if (FUNC4(this_controller))
   {
      FUNC5(this_controller);
   }

   // Clear the interrupt and enable all interrupts again
   FUNC2(this_controller, SMU_ISR_COMPLETION);
   // Could we write the value of SMU_ISR_COMPLETION?
   FUNC1(this_controller, 0xFF000000);
   FUNC1(this_controller, 0x00000000);
}