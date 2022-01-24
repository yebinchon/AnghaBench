#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int U32 ;
struct TYPE_5__ {scalar_t__ task_context_entries; } ;
typedef  TYPE_1__ SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  ENDING ; 
 int /*<<< orphan*/  RANGE_CHECK_ENABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  STARTING ; 

void FUNC4(
   SCIC_SDS_CONTROLLER_T *this_controller
)
{
   U32 task_assignment;

   // Assign all the TCs to function 0
   // TODO: Do we actually need to read this register to write it back?
   task_assignment = FUNC2(this_controller, 0);

   task_assignment =
      (
          task_assignment
        | (FUNC1(STARTING, 0))
        | (FUNC1(ENDING,  this_controller->task_context_entries - 1))
        | (FUNC0(RANGE_CHECK_ENABLE))
      );

   FUNC3(this_controller, 0, task_assignment);
}