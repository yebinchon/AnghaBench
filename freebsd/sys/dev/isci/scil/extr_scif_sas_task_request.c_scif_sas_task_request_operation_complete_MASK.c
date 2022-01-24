#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  affected_request_count; } ;
typedef  TYPE_1__ SCIF_SAS_TASK_REQUEST_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCIF_LOG_OBJECT_TASK_MANAGEMENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(
   SCIF_SAS_TASK_REQUEST_T * fw_task
)
{
   FUNC1((
      FUNC2(fw_task),
      SCIF_LOG_OBJECT_TASK_MANAGEMENT,
      "scif_sas_task_request_operation_complete(0x%x) enter\n",
      fw_task
   ));

   fw_task->affected_request_count--;

   FUNC0((
      FUNC2(fw_task),
      SCIF_LOG_OBJECT_TASK_MANAGEMENT,
      "TaskRequest:0x%x current affected request count:0x%x\n",
      fw_task, fw_task->affected_request_count
   ));
}