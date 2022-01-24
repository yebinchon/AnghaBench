#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int U32 ;
struct TYPE_6__ {int reserved_tci; int physical_port_index; int /*<<< orphan*/  owning_controller; } ;
struct TYPE_5__ {int abort; } ;
typedef  TYPE_1__ SCU_TASK_CONTEXT_T ;
typedef  TYPE_2__ SCIC_SDS_PORT_T ;

/* Variables and functions */
 int SCU_CONTEXT_COMMAND_LOGICAL_PORT_SHIFT ; 
 int SCU_CONTEXT_COMMAND_REQUEST_POST_TC_ABORT ; 
 int SCU_DUMMY_INDEX ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static
void FUNC2(
   SCIC_SDS_PORT_T *this_port
)
{
   U32 command;
   SCU_TASK_CONTEXT_T * task_context;

   if (this_port->reserved_tci != SCU_DUMMY_INDEX)
   {
   task_context = FUNC0(
                     this_port->owning_controller,
                     this_port->reserved_tci
                  );

   task_context->abort = 1;

   command = (
        (SCU_CONTEXT_COMMAND_REQUEST_POST_TC_ABORT)
      | (this_port->physical_port_index << SCU_CONTEXT_COMMAND_LOGICAL_PORT_SHIFT)
      | (this_port->reserved_tci)
   );

   FUNC1(this_port->owning_controller, command);
}
}