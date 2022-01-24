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
struct dmar_unit {int /*<<< orphan*/  dmamap_load_task; int /*<<< orphan*/  delayed_taskqueue; int /*<<< orphan*/  delayed_maps; } ;
struct bus_dmamap_dmar {int locked; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC1 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bus_dmamap_dmar*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  delay_link ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct dmar_unit *unit, struct bus_dmamap_dmar *map)
{

	map->locked = false;
	FUNC0(unit);
	FUNC2(&unit->delayed_maps, map, delay_link);
	FUNC1(unit);
	FUNC3(unit->delayed_taskqueue, &unit->dmamap_load_task);
}