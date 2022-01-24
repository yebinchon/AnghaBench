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
struct TYPE_10__ {scalar_t__ vm_nbusytag; int /*<<< orphan*/ * vm_hashlist; int /*<<< orphan*/ * vm_hash0; int /*<<< orphan*/  vm_seglist; int /*<<< orphan*/  vm_cursor; } ;
typedef  TYPE_1__ vmem_t ;
typedef  int /*<<< orphan*/  bt_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  M_VMEM ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bt_seglist ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  vmem_zone ; 

__attribute__((used)) static void
FUNC11(vmem_t *vm)
{
	bt_t *bt;

	/*
	 * Drain per-cpu quantum caches.
	 */
	FUNC9(vm);

	/*
	 * The vmem should now only contain empty segments.
	 */
	FUNC4(vm);
	FUNC0(vm->vm_nbusytag == 0);

	FUNC2(&vm->vm_seglist, &vm->vm_cursor, bt_seglist);
	while ((bt = FUNC1(&vm->vm_seglist)) != NULL)
		FUNC7(vm, bt);

	if (vm->vm_hashlist != NULL && vm->vm_hashlist != vm->vm_hash0)
		FUNC8(vm->vm_hashlist, M_VMEM);

	FUNC6(vm, 0);

	FUNC3(vm);
	FUNC5(vm);
	FUNC10(vmem_zone, vm);
}