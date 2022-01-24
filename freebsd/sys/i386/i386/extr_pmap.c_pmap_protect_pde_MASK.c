#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int vm_prot_t ;
typedef  int /*<<< orphan*/ * vm_page_t ;
typedef  int vm_offset_t ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int pd_entry_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 size_t NBPDR ; 
 size_t PAGE_SIZE ; 
 int PDRMASK ; 
 int PG_G ; 
 int PG_M ; 
 int PG_MANAGED ; 
 int PG_PROMOTED ; 
 int PG_PS_FRAME ; 
 int PG_RW ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int VM_PROT_EXECUTE ; 
 int VM_PROT_WRITE ; 
 int /*<<< orphan*/  i386_read_exec ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int) ; 
 int pg_nx ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static boolean_t
FUNC6(pmap_t pmap, pd_entry_t *pde, vm_offset_t sva, vm_prot_t prot)
{
	pd_entry_t newpde, oldpde;
	vm_page_t m, mt;
	boolean_t anychanged;

	FUNC2(pmap, MA_OWNED);
	FUNC0((sva & PDRMASK) == 0,
	    ("pmap_protect_pde: sva is not 4mpage aligned"));
	anychanged = FALSE;
retry:
	oldpde = newpde = *pde;
	if ((prot & VM_PROT_WRITE) == 0) {
		if ((oldpde & (PG_MANAGED | PG_M | PG_RW)) ==
		    (PG_MANAGED | PG_M | PG_RW)) {
			m = FUNC1(oldpde & PG_PS_FRAME);
			for (mt = m; mt < &m[NBPDR / PAGE_SIZE]; mt++)
				FUNC5(mt);
		}
		newpde &= ~(PG_RW | PG_M);
	}
#ifdef PMAP_PAE_COMP
	if ((prot & VM_PROT_EXECUTE) == 0 && !i386_read_exec)
		newpde |= pg_nx;
#endif
	if (newpde != oldpde) {
		/*
		 * As an optimization to future operations on this PDE, clear
		 * PG_PROMOTED.  The impending invalidation will remove any
		 * lingering 4KB page mappings from the TLB.
		 */
		if (!FUNC3(pde, oldpde, newpde & ~PG_PROMOTED))
			goto retry;
		if ((oldpde & PG_G) != 0)
			FUNC4(kernel_pmap, sva, oldpde);
		else
			anychanged = TRUE;
	}
	return (anychanged);
}