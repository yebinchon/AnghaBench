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
struct TYPE_5__ {int vm_inuse; int vm_size; int vm_quantum_shift; int /*<<< orphan*/ * vm_freelist; } ;
typedef  TYPE_1__ vmem_t ;
typedef  int vmem_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  VMEM_ALLOC 130 
#define  VMEM_FREE 129 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
#define  VMEM_MAXFREE 128 
 int /*<<< orphan*/  VMEM_MAXORDER ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

vmem_size_t
FUNC5(vmem_t *vm, int typemask)
{
	int i;

	switch (typemask) {
	case VMEM_ALLOC:
		return vm->vm_inuse;
	case VMEM_FREE:
		return vm->vm_size - vm->vm_inuse;
	case VMEM_FREE|VMEM_ALLOC:
		return vm->vm_size;
	case VMEM_MAXFREE:
		FUNC2(vm);
		for (i = VMEM_MAXORDER - 1; i >= 0; i--) {
			if (FUNC0(&vm->vm_freelist[i]))
				continue;
			FUNC3(vm);
			return ((vmem_size_t)FUNC1(i) <<
			    vm->vm_quantum_shift);
		}
		FUNC3(vm);
		return (0);
	default:
		FUNC4("vmem_size");
	}
}