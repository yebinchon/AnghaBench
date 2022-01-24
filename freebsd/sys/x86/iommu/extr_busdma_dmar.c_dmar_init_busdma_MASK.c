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
struct dmar_unit {int dma_enabled; int /*<<< orphan*/  unit; int /*<<< orphan*/  delayed_taskqueue; int /*<<< orphan*/  dmamap_load_task; int /*<<< orphan*/  delayed_maps; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  PI_DISK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int*) ; 
 int /*<<< orphan*/  dmar_bus_task_dmamap ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 

int
FUNC5(struct dmar_unit *unit)
{

	unit->dma_enabled = 1;
	FUNC2("hw.dmar.dma", &unit->dma_enabled);
	FUNC0(&unit->delayed_maps);
	FUNC1(&unit->dmamap_load_task, 0, dmar_bus_task_dmamap, unit);
	unit->delayed_taskqueue = FUNC3("dmar", M_WAITOK,
	    taskqueue_thread_enqueue, &unit->delayed_taskqueue);
	FUNC4(&unit->delayed_taskqueue, 1, PI_DISK,
	    "dmar%d busdma taskq", unit->unit);
	return (0);
}