#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  core_object; int /*<<< orphan*/  status; } ;
struct TYPE_4__ {TYPE_2__ parent; } ;
typedef  int /*<<< orphan*/  SCI_BASE_OBJECT_T ;
typedef  TYPE_1__ SCIF_SAS_TASK_REQUEST_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCI_BASE_REQUEST_STATE_ABORTING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  scif_sas_task_request_state_handler_table ; 

__attribute__((used)) static
void FUNC2(
   SCI_BASE_OBJECT_T *object
)
{
   SCIF_SAS_TASK_REQUEST_T * fw_task = (SCIF_SAS_TASK_REQUEST_T *)object;

   FUNC0(
      &fw_task->parent,
      scif_sas_task_request_state_handler_table,
      SCI_BASE_REQUEST_STATE_ABORTING
   );

   /// @todo Is terminating a previously outstanding task request right?
   fw_task->parent.status = FUNC1(
                               &fw_task->parent, fw_task->parent.core_object
                            );
}