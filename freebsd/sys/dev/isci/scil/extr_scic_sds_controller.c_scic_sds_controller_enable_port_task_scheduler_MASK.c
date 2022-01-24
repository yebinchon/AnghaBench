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
typedef  int /*<<< orphan*/  SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  ETM_ENABLE ; 
 int /*<<< orphan*/  PTSG_ENABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

void FUNC3(
   SCIC_SDS_CONTROLLER_T *this_controller
)
{
   U32 port_task_scheduler_value;

   port_task_scheduler_value = FUNC1(this_controller);

   port_task_scheduler_value |=
      (FUNC0(ETM_ENABLE) | FUNC0(PTSG_ENABLE));

   FUNC2(this_controller, port_task_scheduler_value);
}