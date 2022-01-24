#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ vm_nfreetags; int /*<<< orphan*/  vm_freetags; struct TYPE_7__* vm_arg; } ;
typedef  TYPE_1__ vmem_t ;
typedef  int /*<<< orphan*/  bt_t ;

/* Variables and functions */
 int BT_FLAGS ; 
 scalar_t__ BT_MAXALLOC ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int M_NOVM ; 
 int M_NOWAIT ; 
 int M_USE_RESERVE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  bt_freelist ; 
 TYPE_1__* kernel_arena ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  vmem_bt_zone ; 

__attribute__((used)) static int
FUNC5(vmem_t *vm, int flags)
{
	bt_t *bt;

	FUNC1(vm);

	/*
	 * Only allow the kernel arena and arenas derived from kernel arena to
	 * dip into reserve tags.  They are where new tags come from.
	 */
	flags &= BT_FLAGS;
	if (vm != kernel_arena && vm->vm_arg != kernel_arena)
		flags &= ~M_USE_RESERVE;

	/*
	 * Loop until we meet the reserve.  To minimize the lock shuffle
	 * and prevent simultaneous fills we first try a NOWAIT regardless
	 * of the caller's flags.  Specify M_NOVM so we don't recurse while
	 * holding a vmem lock.
	 */
	while (vm->vm_nfreetags < BT_MAXALLOC) {
		bt = FUNC4(vmem_bt_zone,
		    (flags & M_USE_RESERVE) | M_NOWAIT | M_NOVM);
		if (bt == NULL) {
			FUNC3(vm);
			bt = FUNC4(vmem_bt_zone, flags);
			FUNC2(vm);
			if (bt == NULL)
				break;
		}
		FUNC0(&vm->vm_freetags, bt, bt_freelist);
		vm->vm_nfreetags++;
	}

	if (vm->vm_nfreetags < BT_MAXALLOC)
		return ENOMEM;

	return 0;
}