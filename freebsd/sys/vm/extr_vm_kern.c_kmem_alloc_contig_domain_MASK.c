#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vmem_t ;
typedef  scalar_t__ vm_size_t ;
typedef  TYPE_1__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  vm_object_t ;
typedef  int /*<<< orphan*/  vm_memattr_t ;
typedef  int u_long ;
struct TYPE_8__ {int /*<<< orphan*/ * vmd_kernel_arena; } ;
struct TYPE_7__ {int flags; int /*<<< orphan*/  valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int M_BESTFIT ; 
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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_PAGE_BITS_ALL ; 
 int VM_PROT_RW ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  kernel_object ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 TYPE_4__* vm_dom ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,scalar_t__,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 

__attribute__((used)) static vm_offset_t
FUNC14(int domain, vm_size_t size, int flags, vm_paddr_t low,
    vm_paddr_t high, u_long alignment, vm_paddr_t boundary,
    vm_memattr_t memattr)
{
	vmem_t *vmem;
	vm_object_t object = kernel_object;
	vm_offset_t addr, offset, tmp;
	vm_page_t end_m, m;
	u_long npages;
	int pflags, tries;
 
	size = FUNC7(size);
	vmem = vm_dom[domain].vmd_kernel_arena;
	if (FUNC12(vmem, size, flags | M_BESTFIT, &addr))
		return (0);
	offset = addr - VM_MIN_KERNEL_ADDRESS;
	pflags = FUNC4(flags) | VM_ALLOC_NOBUSY | VM_ALLOC_WIRED;
	pflags &= ~(VM_ALLOC_NOWAIT | VM_ALLOC_WAITOK | VM_ALLOC_WAITFAIL);
	pflags |= VM_ALLOC_NOWAIT;
	npages = FUNC3(size);
	FUNC1(object);
	tries = 0;
retry:
	m = FUNC8(object, FUNC3(offset), domain, pflags,
	    npages, low, high, alignment, boundary, memattr);
	if (m == NULL) {
		FUNC2(object);
		if (tries < ((flags & M_NOWAIT) != 0 ? 1 : 3)) {
			if (!FUNC9(domain, pflags,
			    npages, low, high, alignment, boundary) &&
			    (flags & M_WAITOK) != 0)
				FUNC11(domain);
			FUNC1(object);
			tries++;
			goto retry;
		}
		FUNC13(vmem, addr, size);
		return (0);
	}
	FUNC0(FUNC10(m) == domain,
	    ("kmem_alloc_contig_domain: Domain mismatch %d != %d",
	    FUNC10(m), domain));
	end_m = m + npages;
	tmp = addr;
	for (; m < end_m; m++) {
		if ((flags & M_ZERO) && (m->flags & PG_ZERO) == 0)
			FUNC6(m);
		m->valid = VM_PAGE_BITS_ALL;
		FUNC5(kernel_pmap, tmp, m, VM_PROT_RW,
		    VM_PROT_RW | PMAP_ENTER_WIRED, 0);
		tmp += PAGE_SIZE;
	}
	FUNC2(object);
	return (addr);
}