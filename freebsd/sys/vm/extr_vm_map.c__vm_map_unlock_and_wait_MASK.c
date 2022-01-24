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
typedef  TYPE_1__* vm_map_t ;
struct TYPE_4__ {int /*<<< orphan*/  root; int /*<<< orphan*/  lock; int /*<<< orphan*/  system_mtx; scalar_t__ system_map; } ;

/* Variables and functions */
 int PDROP ; 
 int PVM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  map_sleep_mtx ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int) ; 

int
FUNC5(vm_map_t map, int timo, const char *file, int line)
{

	FUNC0(map);
	FUNC2(&map_sleep_mtx);
	if (map->system_map)
		FUNC3(&map->system_mtx, 0, file, line);
	else
		FUNC4(&map->lock, file, line);
	return (FUNC1(&map->root, &map_sleep_mtx, PDROP | PVM, "vmmaps",
	    timo));
}