#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_map_t ;
struct TYPE_5__ {int /*<<< orphan*/  timestamp; int /*<<< orphan*/  lock; scalar_t__ busy; int /*<<< orphan*/  system_mtx; scalar_t__ system_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAP_BUSY_WAKEUP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void 
FUNC4(vm_map_t map)
{

	FUNC0(map);
	while (map->busy) {
		FUNC3(map, MAP_BUSY_WAKEUP, 0);
		if (map->system_map)
			FUNC1(&map->busy, &map->system_mtx, 0, "mbusy", 0);
		else
			FUNC2(&map->busy, &map->lock, 0, "mbusy", 0);
	}
	map->timestamp++;
}