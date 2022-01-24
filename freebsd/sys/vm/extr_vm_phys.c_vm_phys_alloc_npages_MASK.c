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
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vm_freelist*,int /*<<< orphan*/ *,int) ; 
 int* vm_freelist_to_flind ; 
 int vm_ndomains ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,struct vm_freelist*,int) ; 
 struct vm_freelist**** vm_phys_free_queues ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *,int) ; 

int
FUNC8(int domain, int pool, int npages, vm_page_t ma[])
{
	struct vm_freelist *alt, *fl;
	vm_page_t m;
	int avail, end, flind, freelist, i, need, oind, pind;

	FUNC0(domain >= 0 && domain < vm_ndomains,
	    ("vm_phys_alloc_npages: domain %d is out of range", domain));
	FUNC0(pool < VM_NFREEPOOL,
	    ("vm_phys_alloc_npages: pool %d is out of range", pool));
	FUNC0(npages <= 1 << (VM_NFREEORDER - 1),
	    ("vm_phys_alloc_npages: npages %d is out of range", npages));
	FUNC4(FUNC2(domain));
	i = 0;
	for (freelist = 0; freelist < VM_NFREELIST; freelist++) {
		flind = vm_freelist_to_flind[freelist];
		if (flind < 0)
			continue;
		fl = vm_phys_free_queues[domain][flind][pool];
		for (oind = 0; oind < VM_NFREEORDER; oind++) {
			while ((m = FUNC1(&fl[oind].pl)) != NULL) {
				FUNC5(fl, m, oind);
				avail = 1 << oind;
				need = FUNC3(npages - i, avail);
				for (end = i + need; i < end;)
					ma[i++] = m++;
				if (need < avail) {
					/*
					 * Return excess pages to fl.  Its
					 * order [0, oind) queues are empty.
					 */
					FUNC6(m, avail - need, fl,
					    1);
					return (npages);
				} else if (i == npages)
					return (npages);
			}
		}
		for (oind = VM_NFREEORDER - 1; oind >= 0; oind--) {
			for (pind = 0; pind < VM_NFREEPOOL; pind++) {
				alt = vm_phys_free_queues[domain][flind][pind];
				while ((m = FUNC1(&alt[oind].pl)) !=
				    NULL) {
					FUNC5(alt, m, oind);
					FUNC7(pool, m, oind);
					avail = 1 << oind;
					need = FUNC3(npages - i, avail);
					for (end = i + need; i < end;)
						ma[i++] = m++;
					if (need < avail) {
						/*
						 * Return excess pages to fl.
						 * Its order [0, oind) queues
						 * are empty.
						 */
						FUNC6(m, avail -
						    need, fl, 1);
						return (npages);
					} else if (i == npages)
						return (npages);
				}
			}
		}
	}
	return (i);
}