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
struct TYPE_3__ {int /*<<< orphan*/  root; } ;

/* Variables and functions */
 int /*<<< orphan*/  map_sleep_mtx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(vm_map_t map)
{

	/*
	 * Acquire and release map_sleep_mtx to prevent a wakeup()
	 * from being performed (and lost) between the map unlock
	 * and the msleep() in _vm_map_unlock_and_wait().
	 */
	FUNC0(&map_sleep_mtx);
	FUNC1(&map_sleep_mtx);
	FUNC2(&map->root);
}