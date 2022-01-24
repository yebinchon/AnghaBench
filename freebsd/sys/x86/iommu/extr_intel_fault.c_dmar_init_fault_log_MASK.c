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
typedef  int /*<<< orphan*/  uint64_t ;
struct dmar_unit {int fault_log_size; int /*<<< orphan*/  unit; int /*<<< orphan*/  fault_taskqueue; int /*<<< orphan*/  fault_task; int /*<<< orphan*/  fault_log; int /*<<< orphan*/  fault_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC1 (struct dmar_unit*) ; 
 int /*<<< orphan*/  MTX_SPIN ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PI_AV ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC5 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC6 (struct dmar_unit*) ; 
 int /*<<< orphan*/  dmar_fault_task ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 

int
FUNC12(struct dmar_unit *unit)
{

	FUNC8(&unit->fault_lock, "dmarflt", NULL, MTX_SPIN);
	unit->fault_log_size = 256; /* 128 fault log entries */
	FUNC3("hw.dmar.fault_log_size", &unit->fault_log_size);
	if (unit->fault_log_size % 2 != 0)
		FUNC9("hw.dmar_fault_log_size must be even");
	unit->fault_log = FUNC7(sizeof(uint64_t) * unit->fault_log_size,
	    M_DEVBUF, M_WAITOK | M_ZERO);

	FUNC2(&unit->fault_task, 0, dmar_fault_task, unit);
	unit->fault_taskqueue = FUNC10("dmarff", M_WAITOK,
	    taskqueue_thread_enqueue, &unit->fault_taskqueue);
	FUNC11(&unit->fault_taskqueue, 1, PI_AV,
	    "dmar%d fault taskq", unit->unit);

	FUNC0(unit);
	FUNC5(unit);
	FUNC4(unit);
	FUNC6(unit);
	FUNC1(unit);

	return (0);
}