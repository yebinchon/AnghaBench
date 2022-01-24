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
typedef  TYPE_1__* vm_map_t ;
struct TYPE_3__ {unsigned int timestamp; int /*<<< orphan*/  lock; int /*<<< orphan*/  system_mtx; scalar_t__ system_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

int
FUNC6(vm_map_t map, const char *file, int line)
{
	unsigned int last_timestamp;

	if (map->system_map) {
		FUNC0(&map->system_mtx, MA_OWNED, file, line);
	} else {
		if (!FUNC2(&map->lock, file, line)) {
			last_timestamp = map->timestamp;
			FUNC1(&map->lock, file, line);
			FUNC5();
			/*
			 * If the map's timestamp does not change while the
			 * map is unlocked, then the upgrade succeeds.
			 */
			FUNC3(&map->lock, file, line);
			if (last_timestamp != map->timestamp) {
				FUNC4(&map->lock, file, line);
				return (1);
			}
		}
	}
	map->timestamp++;
	return (0);
}