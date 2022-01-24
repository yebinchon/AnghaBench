#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_size_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  TYPE_1__* vm_map_t ;
struct TYPE_10__ {int /*<<< orphan*/  needs_wakeup; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAP_ACC_CHARGED ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VM_PROT_RW ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_1__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 

vm_offset_t
FUNC10(vm_map_t map, vm_size_t size)
{
	vm_offset_t addr;

	size = FUNC0(size);
	if (!FUNC2(size))
		return (0);

	for (;;) {
		/*
		 * To make this work for more than one map, use the map's lock
		 * to lock out sleepers/wakers.
		 */
		FUNC5(map);
		addr = FUNC3(map, FUNC7(map), size);
		if (addr + size <= FUNC6(map))
			break;
		/* no space now; see if we can ever get space */
		if (FUNC6(map) - FUNC7(map) < size) {
			FUNC8(map);
			FUNC1(size);
			return (0);
		}
		map->needs_wakeup = TRUE;
		FUNC9(map, 0);
	}
	FUNC4(map, NULL, 0, addr, addr + size, VM_PROT_RW, VM_PROT_RW,
	    MAP_ACC_CHARGED);
	FUNC8(map);
	return (addr);
}