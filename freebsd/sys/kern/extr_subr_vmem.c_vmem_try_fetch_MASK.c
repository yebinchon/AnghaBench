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
struct TYPE_10__ {scalar_t__ vm_qcache_max; scalar_t__ vm_size; scalar_t__ vm_inuse; int /*<<< orphan*/  (* vm_reclaimfn ) (TYPE_1__*,int) ;} ;
typedef  TYPE_1__ vmem_t ;
typedef  scalar_t__ vmem_size_t ;

/* Variables and functions */
 int M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 scalar_t__ FUNC6 (TYPE_1__*,scalar_t__ const,scalar_t__,int) ; 

__attribute__((used)) static int
FUNC7(vmem_t *vm, const vmem_size_t size, vmem_size_t align, int flags)
{
	vmem_size_t avail;

	FUNC0(vm);

	/*
	 * XXX it is possible to fail to meet xalloc constraints with the
	 * imported region.  It is up to the user to specify the
	 * import quantum such that it can satisfy any allocation.
	 */
	if (FUNC6(vm, size, align, flags) == 0)
		return (1);

	/*
	 * Try to free some space from the quantum cache or reclaim
	 * functions if available.
	 */
	if (vm->vm_qcache_max != 0 || vm->vm_reclaimfn != NULL) {
		avail = vm->vm_size - vm->vm_inuse;
		FUNC3(vm);
		if (vm->vm_qcache_max != 0)
			FUNC4(vm);
		if (vm->vm_reclaimfn != NULL)
			vm->vm_reclaimfn(vm, flags);
		FUNC2(vm);
		/* If we were successful retry even NOWAIT. */
		if (vm->vm_size - vm->vm_inuse > avail)
			return (1);
	}
	if ((flags & M_NOWAIT) != 0)
		return (0);
	FUNC1(vm);
	return (1);
}