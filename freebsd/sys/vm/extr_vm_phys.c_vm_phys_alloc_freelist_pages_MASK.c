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
typedef  int /*<<< orphan*/ * vm_page_t ;
struct vm_freelist {int /*<<< orphan*/  pl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int VM_NFREELIST ; 
 int VM_NFREEORDER ; 
 int VM_NFREEPOOL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_freelist*,int /*<<< orphan*/ *,int) ; 
 int* vm_freelist_to_flind ; 
 int vm_ndomains ; 
 struct vm_freelist**** vm_phys_free_queues ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,struct vm_freelist*,int,int) ; 

vm_page_t
FUNC7(int domain, int freelist, int pool, int order)
{
	struct vm_freelist *alt, *fl;
	vm_page_t m;
	int oind, pind, flind;

	FUNC0(domain >= 0 && domain < vm_ndomains,
	    ("vm_phys_alloc_freelist_pages: domain %d is out of range",
	    domain));
	FUNC0(freelist < VM_NFREELIST,
	    ("vm_phys_alloc_freelist_pages: freelist %d is out of range",
	    freelist));
	FUNC0(pool < VM_NFREEPOOL,
	    ("vm_phys_alloc_freelist_pages: pool %d is out of range", pool));
	FUNC0(order < VM_NFREEORDER,
	    ("vm_phys_alloc_freelist_pages: order %d is out of range", order));

	flind = vm_freelist_to_flind[freelist];
	/* Check if freelist is present */
	if (flind < 0)
		return (NULL);

	FUNC3(FUNC2(domain));
	fl = &vm_phys_free_queues[domain][flind][pool][0];
	for (oind = order; oind < VM_NFREEORDER; oind++) {
		m = FUNC1(&fl[oind].pl);
		if (m != NULL) {
			FUNC4(fl, m, oind);
			/* The order [order, oind) queues are empty. */
			FUNC6(m, oind, fl, order, 1);
			return (m);
		}
	}

	/*
	 * The given pool was empty.  Find the largest
	 * contiguous, power-of-two-sized set of pages in any
	 * pool.  Transfer these pages to the given pool, and
	 * use them to satisfy the allocation.
	 */
	for (oind = VM_NFREEORDER - 1; oind >= order; oind--) {
		for (pind = 0; pind < VM_NFREEPOOL; pind++) {
			alt = &vm_phys_free_queues[domain][flind][pind][0];
			m = FUNC1(&alt[oind].pl);
			if (m != NULL) {
				FUNC4(alt, m, oind);
				FUNC5(pool, m, oind);
				/* The order [order, oind) queues are empty. */
				FUNC6(m, oind, fl, order, 1);
				return (m);
			}
		}
	}
	return (NULL);
}