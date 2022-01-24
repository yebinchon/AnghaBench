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
struct TYPE_4__ {int /*<<< orphan*/ * pmap; } ;
struct vmspace {TYPE_1__ vm_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct vmspace*) ; 
 int /*<<< orphan*/  KTR_VM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vmspace*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct vmspace*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vmspace*) ; 
 int /*<<< orphan*/  vmspace_zone ; 

__attribute__((used)) static inline void
FUNC8(struct vmspace *vm)
{

	FUNC0(KTR_VM, "vmspace_free: %p", vm);

	/*
	 * Make sure any SysV shm is freed, it might not have been in
	 * exit1().
	 */
	FUNC2(vm);

	/*
	 * Lock the map, to wait out all other references to it.
	 * Delete all of the mappings and pages they hold, then call
	 * the pmap module to reclaim anything left.
	 */
	(void)FUNC6(&vm->vm_map, FUNC5(&vm->vm_map),
	    FUNC4(&vm->vm_map));

	FUNC1(FUNC7(vm));
	vm->vm_map.pmap = NULL;
	FUNC3(vmspace_zone, vm);
}