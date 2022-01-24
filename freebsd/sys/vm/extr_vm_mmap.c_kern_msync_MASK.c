#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t vm_size_t ;
typedef  size_t vm_offset_t ;
typedef  int /*<<< orphan*/ * vm_map_t ;
struct thread {TYPE_2__* td_proc; } ;
struct TYPE_4__ {TYPE_1__* p_vmspace; } ;
struct TYPE_3__ {int /*<<< orphan*/  vm_map; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
#define  KERN_FAILURE 131 
#define  KERN_INVALID_ADDRESS 130 
#define  KERN_INVALID_ARGUMENT 129 
#define  KERN_SUCCESS 128 
 int MS_ASYNC ; 
 int MS_INVALIDATE ; 
 size_t PAGE_MASK ; 
 scalar_t__ FUNC0 (size_t) ; 
 int FUNC1 (int /*<<< orphan*/ *,size_t,size_t,int,int) ; 

int
FUNC2(struct thread *td, uintptr_t addr0, size_t size, int flags)
{
	vm_offset_t addr;
	vm_size_t pageoff;
	vm_map_t map;
	int rv;

	addr = addr0;
	pageoff = (addr & PAGE_MASK);
	addr -= pageoff;
	size += pageoff;
	size = (vm_size_t) FUNC0(size);
	if (addr + size < addr)
		return (EINVAL);

	if ((flags & (MS_ASYNC|MS_INVALIDATE)) == (MS_ASYNC|MS_INVALIDATE))
		return (EINVAL);

	map = &td->td_proc->p_vmspace->vm_map;

	/*
	 * Clean the pages and interpret the return value.
	 */
	rv = FUNC1(map, addr, addr + size, (flags & MS_ASYNC) == 0,
	    (flags & MS_INVALIDATE) != 0);
	switch (rv) {
	case KERN_SUCCESS:
		return (0);
	case KERN_INVALID_ADDRESS:
		return (ENOMEM);
	case KERN_INVALID_ARGUMENT:
		return (EBUSY);
	case KERN_FAILURE:
		return (EIO);
	default:
		return (EINVAL);
	}
}