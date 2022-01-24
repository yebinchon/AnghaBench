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
typedef  int /*<<< orphan*/  SCI_BASE_OBJECT_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIC_LOG_OBJECT_CONTROLLER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCI_BASE_CONTROLLER_STATE_RESET ; 
 int /*<<< orphan*/  SCI_BASE_CONTROLLER_STATE_RESETTING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void FUNC6(
   SCI_BASE_OBJECT_T *object
)
{
   SCIC_SDS_CONTROLLER_T *this_controller;
   this_controller= (SCIC_SDS_CONTROLLER_T *)object;

   FUNC0(*(
      FUNC1(this_controller),
      SCIC_LOG_OBJECT_CONTROLLER,
      "scic_sds_controller_resetting_state_enter(0x%x) enter\n",
      this_controller
   ));

   FUNC5(
      this_controller, SCI_BASE_CONTROLLER_STATE_RESETTING);

   FUNC4(this_controller);

   FUNC2(
      FUNC3(this_controller),
      SCI_BASE_CONTROLLER_STATE_RESET
   );
}