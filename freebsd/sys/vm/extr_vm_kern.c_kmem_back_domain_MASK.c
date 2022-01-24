#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_size_t ;
typedef  int vm_prot_t ;
typedef  TYPE_1__* vm_page_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  TYPE_2__* vm_object_t ;
struct TYPE_16__ {int /*<<< orphan*/  rtree; } ;
struct TYPE_15__ {int flags; int oflags; int /*<<< orphan*/  valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int KERN_NO_SPACE ; 
 int KERN_SUCCESS ; 
 int M_EXEC ; 
 int M_NOWAIT ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ PAGE_SIZE ; 
 int PG_ZERO ; 
 int PMAP_ENTER_WIRED ; 
 int VM_ALLOC_NOBUSY ; 
 int VM_ALLOC_NOWAIT ; 
 int VM_ALLOC_WAITFAIL ; 
 int VM_ALLOC_WAITOK ; 
 int VM_ALLOC_WIRED ; 
 scalar_t__ VM_MIN_KERNEL_ADDRESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  VM_PAGE_BITS_ALL ; 
 int VM_PROT_ALL ; 
 int VM_PROT_EXECUTE ; 
 int VM_PROT_RW ; 
 int VPO_KMEM_EXEC ; 
 int VPO_UNMANAGED ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 TYPE_2__* kernel_object ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,scalar_t__,scalar_t__) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 TYPE_1__* FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int,int,TYPE_1__*) ; 
 int FUNC10 (TYPE_1__*) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC12(int domain, vm_object_t object, vm_offset_t addr,
    vm_size_t size, int flags)
{
	vm_offset_t offset, i;
	vm_page_t m, mpred;
	vm_prot_t prot;
	int pflags;

	FUNC0(object == kernel_object,
	    ("kmem_back_domain: only supports kernel object."));

	offset = addr - VM_MIN_KERNEL_ADDRESS;
	pflags = FUNC6(flags) | VM_ALLOC_NOBUSY | VM_ALLOC_WIRED;
	pflags &= ~(VM_ALLOC_NOWAIT | VM_ALLOC_WAITOK | VM_ALLOC_WAITFAIL);
	if (flags & M_WAITOK)
		pflags |= VM_ALLOC_WAITFAIL;
	prot = (flags & M_EXEC) != 0 ? VM_PROT_ALL : VM_PROT_RW;

	i = 0;
	FUNC1(object);
retry:
	mpred = FUNC11(&object->rtree, FUNC4(offset + i));
	for (; i < size; i += PAGE_SIZE, mpred = m) {
		m = FUNC9(object, FUNC4(offset + i),
		    domain, pflags, mpred);

		/*
		 * Ran out of space, free everything up and return. Don't need
		 * to lock page queues here as we know that the pages we got
		 * aren't on any queues.
		 */
		if (m == NULL) {
			if ((flags & M_NOWAIT) == 0)
				goto retry;
			FUNC2(object);
			FUNC5(object, addr, i);
			return (KERN_NO_SPACE);
		}
		FUNC0(FUNC10(m) == domain,
		    ("kmem_back_domain: Domain mismatch %d != %d",
		    FUNC10(m), domain));
		if (flags & M_ZERO && (m->flags & PG_ZERO) == 0)
			FUNC8(m);
		FUNC0((m->oflags & VPO_UNMANAGED) != 0,
		    ("kmem_malloc: page %p is managed", m));
		m->valid = VM_PAGE_BITS_ALL;
		FUNC7(kernel_pmap, addr + i, m, prot,
		    prot | PMAP_ENTER_WIRED, 0);
#if VM_NRESERVLEVEL > 0
		if (__predict_false((prot & VM_PROT_EXECUTE) != 0))
			m->oflags |= VPO_KMEM_EXEC;
#endif
	}
	FUNC2(object);

	return (KERN_SUCCESS);
}