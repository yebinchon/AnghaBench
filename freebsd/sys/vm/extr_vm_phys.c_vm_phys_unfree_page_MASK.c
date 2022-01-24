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
typedef  TYPE_1__* vm_page_t ;
typedef  int vm_paddr_t ;
struct vm_phys_seg {int start; TYPE_1__* first_page; struct vm_freelist*** free_queues; int /*<<< orphan*/  domain; } ;
struct vm_freelist {int dummy; } ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_5__ {size_t segind; int order; int phys_addr; size_t pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int VM_NFREEORDER ; 
 size_t FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_freelist*,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vm_freelist*,TYPE_1__*,int) ; 
 struct vm_phys_seg* vm_phys_segs ; 

boolean_t
FUNC6(vm_page_t m)
{
	struct vm_freelist *fl;
	struct vm_phys_seg *seg;
	vm_paddr_t pa, pa_half;
	vm_page_t m_set, m_tmp;
	int order;

	/*
	 * First, find the contiguous, power of two-sized set of free
	 * physical pages containing the given physical page "m" and
	 * assign it to "m_set".
	 */
	seg = &vm_phys_segs[m->segind];
	FUNC3(FUNC1(seg->domain));
	for (m_set = m, order = 0; m_set->order == VM_NFREEORDER &&
	    order < VM_NFREEORDER - 1; ) {
		order++;
		pa = m->phys_addr & (~(vm_paddr_t)0 << (PAGE_SHIFT + order));
		if (pa >= seg->start)
			m_set = &seg->first_page[FUNC2(pa - seg->start)];
		else
			return (FALSE);
	}
	if (m_set->order < order)
		return (FALSE);
	if (m_set->order == VM_NFREEORDER)
		return (FALSE);
	FUNC0(m_set->order < VM_NFREEORDER,
	    ("vm_phys_unfree_page: page %p has unexpected order %d",
	    m_set, m_set->order));

	/*
	 * Next, remove "m_set" from the free lists.  Finally, extract
	 * "m" from "m_set" using an iterative algorithm: While "m_set"
	 * is larger than a page, shrink "m_set" by returning the half
	 * of "m_set" that does not contain "m" to the free lists.
	 */
	fl = (*seg->free_queues)[m_set->pool];
	order = m_set->order;
	FUNC5(fl, m_set, order);
	while (order > 0) {
		order--;
		pa_half = m_set->phys_addr ^ (1 << (PAGE_SHIFT + order));
		if (m->phys_addr < pa_half)
			m_tmp = &seg->first_page[FUNC2(pa_half - seg->start)];
		else {
			m_tmp = m_set;
			m_set = &seg->first_page[FUNC2(pa_half - seg->start)];
		}
		FUNC4(fl, m_tmp, order, 0);
	}
	FUNC0(m_set == m, ("vm_phys_unfree_page: fatal inconsistency"));
	return (TRUE);
}