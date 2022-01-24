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
struct dmar_unit {int /*<<< orphan*/ * delayed_taskqueue; int /*<<< orphan*/  dmamap_load_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(struct dmar_unit *unit)
{

	if (unit->delayed_taskqueue == NULL)
		return;

	FUNC0(unit->delayed_taskqueue, &unit->dmamap_load_task);
	FUNC1(unit->delayed_taskqueue);
	unit->delayed_taskqueue = NULL;
}