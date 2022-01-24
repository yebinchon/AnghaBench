#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  int vm_paddr_t ;
typedef  int vm_offset_t ;
typedef  int pt_entry_t ;
typedef  int pn_t ;
typedef  int /*<<< orphan*/  pd_entry_t ;
struct TYPE_8__ {int /*<<< orphan*/  system_mtx; } ;
struct TYPE_7__ {int flags; } ;

/* Variables and functions */
 int L1_SHIFT ; 
 int L2_OFFSET ; 
 int L2_SHIFT ; 
 int L2_SIZE ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int PAGE_SIZE ; 
 int PG_ZERO ; 
 int PTE_PPN0_S ; 
 int PTE_RWX ; 
 int PTE_V ; 
 int VM_ALLOC_INTERRUPT ; 
 int VM_ALLOC_NOOBJ ; 
 int VM_ALLOC_WIRED ; 
 int VM_ALLOC_ZERO ; 
 int FUNC0 (TYPE_1__*) ; 
 TYPE_3__* kernel_map ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int kernel_vm_end ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int FUNC11 (int,int) ; 
 int FUNC12 (TYPE_3__*) ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ *,int,int) ; 

void
FUNC14(vm_offset_t addr)
{
	vm_paddr_t paddr;
	vm_page_t nkpg;
	pd_entry_t *l1, *l2;
	pt_entry_t entry;
	pn_t pn;

	FUNC1(&kernel_map->system_mtx, MA_OWNED);

	addr = FUNC11(addr, L2_SIZE);
	if (addr - 1 >= FUNC12(kernel_map))
		addr = FUNC12(kernel_map);
	while (kernel_vm_end < addr) {
		l1 = FUNC5(kernel_pmap, kernel_vm_end);
		if (FUNC8(l1) == 0) {
			/* We need a new PDP entry */
			nkpg = FUNC13(NULL, kernel_vm_end >> L1_SHIFT,
			    VM_ALLOC_INTERRUPT | VM_ALLOC_NOOBJ |
			    VM_ALLOC_WIRED | VM_ALLOC_ZERO);
			if (nkpg == NULL)
				FUNC2("pmap_growkernel: no memory to grow kernel");
			if ((nkpg->flags & PG_ZERO) == 0)
				FUNC10(nkpg);
			paddr = FUNC0(nkpg);

			pn = (paddr / PAGE_SIZE);
			entry = (PTE_V);
			entry |= (pn << PTE_PPN0_S);
			FUNC9(l1, entry);
			FUNC3(kernel_pmap,
			    FUNC6(kernel_vm_end), entry);
			continue; /* try again */
		}
		l2 = FUNC7(l1, kernel_vm_end);
		if ((FUNC8(l2) & PTE_V) != 0 &&
		    (FUNC8(l2) & PTE_RWX) == 0) {
			kernel_vm_end = (kernel_vm_end + L2_SIZE) & ~L2_OFFSET;
			if (kernel_vm_end - 1 >= FUNC12(kernel_map)) {
				kernel_vm_end = FUNC12(kernel_map);
				break;
			}
			continue;
		}

		nkpg = FUNC13(NULL, kernel_vm_end >> L2_SHIFT,
		    VM_ALLOC_INTERRUPT | VM_ALLOC_NOOBJ | VM_ALLOC_WIRED |
		    VM_ALLOC_ZERO);
		if (nkpg == NULL)
			FUNC2("pmap_growkernel: no memory to grow kernel");
		if ((nkpg->flags & PG_ZERO) == 0) {
			FUNC10(nkpg);
		}
		paddr = FUNC0(nkpg);

		pn = (paddr / PAGE_SIZE);
		entry = (PTE_V);
		entry |= (pn << PTE_PPN0_S);
		FUNC9(l2, entry);

		FUNC4(kernel_pmap, kernel_vm_end);

		kernel_vm_end = (kernel_vm_end + L2_SIZE) & ~L2_OFFSET;
		if (kernel_vm_end - 1 >= FUNC12(kernel_map)) {
			kernel_vm_end = FUNC12(kernel_map);
			break;                       
		}
	}
}