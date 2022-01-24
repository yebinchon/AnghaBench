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
typedef  int U32 ;
typedef  int /*<<< orphan*/ * SCI_CONTROLLER_HANDLE_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCIC_LOG_OBJECT_CONTROLLER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCI_BASE_CONTROLLER_STATE_FAILED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int SMU_ISR_COMPLETION ; 
 int SMU_ISR_QUEUE_ERROR ; 
 int SMU_ISR_QUEUE_SUSPEND ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
void FUNC10(
   SCI_CONTROLLER_HANDLE_T controller
)
{
   U32 interrupt_status;
   SCIC_SDS_CONTROLLER_T *this_controller;
   this_controller = (SCIC_SDS_CONTROLLER_T *)controller;

   FUNC1(*(
      FUNC5(controller),
      SCIC_LOG_OBJECT_CONTROLLER,
      "scic_sds_controller_single_vector_completion_handler(0x%d) enter\n",
      controller
   ));

   interrupt_status = FUNC3(this_controller);
   interrupt_status &= (SMU_ISR_QUEUE_ERROR | SMU_ISR_QUEUE_SUSPEND);

   if (interrupt_status & SMU_ISR_QUEUE_ERROR)
   {
      FUNC0((
         FUNC5(this_controller),
         SCIC_LOG_OBJECT_CONTROLLER,
         "SCIC Controller has encountered a fatal error.\n"
      ));

      // We have a fatal condition and must reset the controller
      // Leave the interrupt mask in place and get the controller reset
      FUNC6(
         FUNC8(this_controller),
         SCI_BASE_CONTROLLER_STATE_FAILED
      );
      return;
   }

   if (
           (interrupt_status & SMU_ISR_QUEUE_SUSPEND)
        && !FUNC7(this_controller)
      )
   {
      FUNC0((
         FUNC5(this_controller),
         SCIC_LOG_OBJECT_CONTROLLER,
         "SCIC Controller has encountered a fatal error.\n"
      ));

      // We have a fatal condtion and must reset the controller
      // Leave the interrupt mask in place and get the controller reset
      FUNC6(
         FUNC8(this_controller),
         SCI_BASE_CONTROLLER_STATE_FAILED
      );
      return;
   }

   if (FUNC7(this_controller))
   {
      FUNC9(this_controller);

      // We dont care which interrupt got us to processing the completion queu
      // so clear them both.
      FUNC4(
         this_controller,
         (SMU_ISR_COMPLETION | SMU_ISR_QUEUE_SUSPEND)
      );
   }

   FUNC2(this_controller, 0x00000000);
}