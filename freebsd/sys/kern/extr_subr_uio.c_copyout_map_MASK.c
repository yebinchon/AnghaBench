#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_size_t ;
typedef  size_t vm_offset_t ;
struct vmspace {int /*<<< orphan*/  vm_map; scalar_t__ vm_daddr; } ;
struct thread {TYPE_1__* td_proc; } ;
struct TYPE_2__ {struct vmspace* p_vmspace; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FALSE ; 
 int MAP_ANON ; 
 int MAP_PRIVATE ; 
 int /*<<< orphan*/  RLIMIT_DATA ; 
 int /*<<< orphan*/  VM_PROT_ALL ; 
 int VM_PROT_READ ; 
 int VM_PROT_WRITE ; 
 size_t FUNC0 (struct thread*,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (size_t) ; 
 int FUNC2 (int /*<<< orphan*/ *,size_t*,scalar_t__,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*) ; 

int
FUNC3(struct thread *td, vm_offset_t *addr, size_t sz)
{
	struct vmspace *vms;
	int error;
	vm_size_t size;

	vms = td->td_proc->p_vmspace;

	/*
	 * Map somewhere after heap in process memory.
	 */
	*addr = FUNC1((vm_offset_t)vms->vm_daddr +
	    FUNC0(td, RLIMIT_DATA));

	/* round size up to page boundary */
	size = (vm_size_t)FUNC1(sz);
	if (size == 0)
		return (EINVAL);
	error = FUNC2(&vms->vm_map, addr, size, VM_PROT_READ |
	    VM_PROT_WRITE, VM_PROT_ALL, MAP_PRIVATE | MAP_ANON, NULL, 0,
	    FALSE, td);
	return (error);
}