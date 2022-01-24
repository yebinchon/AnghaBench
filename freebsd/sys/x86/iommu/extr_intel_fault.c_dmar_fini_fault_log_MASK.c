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
struct dmar_unit {scalar_t__ fault_log_tail; scalar_t__ fault_log_head; int /*<<< orphan*/ * fault_log; int /*<<< orphan*/  fault_lock; int /*<<< orphan*/ * fault_taskqueue; int /*<<< orphan*/  fault_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC1 (struct dmar_unit*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC2 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(struct dmar_unit *unit)
{

	if (unit->fault_taskqueue == NULL)
		return;

	FUNC0(unit);
	FUNC2(unit);
	FUNC1(unit);

	FUNC5(unit->fault_taskqueue, &unit->fault_task);
	FUNC6(unit->fault_taskqueue);
	unit->fault_taskqueue = NULL;
	FUNC4(&unit->fault_lock);

	FUNC3(unit->fault_log, M_DEVBUF);
	unit->fault_log = NULL;
	unit->fault_log_head = unit->fault_log_tail = 0;
}