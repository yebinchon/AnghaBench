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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  TYPE_1__* vm_map_t ;
typedef  int /*<<< orphan*/  pmap_t ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  system_mtx; } ;

/* Variables and functions */
 int MTX_DEF ; 
 int MTX_DUPOK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

void
FUNC3(vm_map_t map, pmap_t pmap, vm_offset_t min, vm_offset_t max)
{

	FUNC0(map, pmap, min, max);
	FUNC1(&map->system_mtx, "system map", NULL, MTX_DEF | MTX_DUPOK);
	FUNC2(&map->lock, "user map");
}