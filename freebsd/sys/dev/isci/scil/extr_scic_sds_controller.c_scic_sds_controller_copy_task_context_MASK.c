#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  task_context_buffer; int /*<<< orphan*/  io_tag; } ;
typedef  TYPE_1__ SCIC_SDS_REQUEST_T ;
typedef  int /*<<< orphan*/  SCIC_SDS_CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int SCU_TASK_CONTEXT_T ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sgl_snapshot_ac ; 
 int task_context_buffer ; 

void FUNC3(
   SCIC_SDS_CONTROLLER_T *this_controller,
   SCIC_SDS_REQUEST_T    *this_request
)
{
   SCU_TASK_CONTEXT_T *task_context_buffer;

   task_context_buffer = FUNC2(
                            this_controller, this_request->io_tag
                         );

   FUNC1(
      task_context_buffer,
      this_request->task_context_buffer,
      FUNC0(SCU_TASK_CONTEXT_T, sgl_snapshot_ac)
   );

   // Now that the soft copy of the TC has been copied into the TC
   // table accessible by the silicon.  Thus, any further changes to
   // the TC (e.g. TC termination) occur in the appropriate location.
   this_request->task_context_buffer = task_context_buffer;
}