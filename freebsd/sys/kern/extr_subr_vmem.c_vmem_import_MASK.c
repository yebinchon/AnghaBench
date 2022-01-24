#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int (* vm_importfn ) (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *) ;scalar_t__ vm_quantum_mask; scalar_t__ vm_limit; scalar_t__ vm_size; scalar_t__ vm_nfreetags; int /*<<< orphan*/  vm_arg; int /*<<< orphan*/  vm_import_quantum; } ;
typedef  TYPE_1__ vmem_t ;
typedef  scalar_t__ vmem_size_t ;
typedef  int /*<<< orphan*/  vmem_addr_t ;

/* Variables and functions */
 scalar_t__ BT_MAXALLOC ; 
 int /*<<< orphan*/  BT_TYPE_SPAN ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(vmem_t *vm, vmem_size_t size, vmem_size_t align, int flags)
{
	vmem_addr_t addr;
	int error;

	if (vm->vm_importfn == NULL)
		return (EINVAL);

	/*
	 * To make sure we get a span that meets the alignment we double it
	 * and add the size to the tail.  This slightly overestimates.
	 */
	if (align != vm->vm_quantum_mask + 1)
		size = (align * 2) + size;
	size = FUNC3(size, vm->vm_import_quantum);

	if (vm->vm_limit != 0 && vm->vm_limit < vm->vm_size + size)
		return (ENOMEM);

	/*
	 * Hide MAXALLOC tags so we're guaranteed to be able to add this
	 * span and the tag we want to allocate from it.
	 */
	FUNC0(vm->vm_nfreetags >= BT_MAXALLOC);
	vm->vm_nfreetags -= BT_MAXALLOC;
	FUNC2(vm);
	error = (vm->vm_importfn)(vm->vm_arg, size, flags, &addr);
	FUNC1(vm);
	vm->vm_nfreetags += BT_MAXALLOC;
	if (error)
		return (ENOMEM);

	FUNC5(vm, addr, size, BT_TYPE_SPAN);

	return 0;
}