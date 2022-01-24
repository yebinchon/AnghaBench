#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  int vm_paddr_t ;
struct vm_phys_seg {int start; int end; struct vm_freelist*** free_queues; TYPE_1__* first_page; int /*<<< orphan*/  domain; } ;
struct vm_freelist {int dummy; } ;
struct TYPE_7__ {int order; size_t pool; size_t segind; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int VM_NFREEORDER ; 
 size_t VM_NFREEPOOL ; 
 int FUNC2 (TYPE_1__*) ; 
 size_t FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vm_freelist*,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct vm_freelist*,TYPE_1__*,int) ; 
 struct vm_phys_seg* vm_phys_segs ; 
 int /*<<< orphan*/  FUNC7 (size_t,TYPE_1__*,int) ; 

void
FUNC8(vm_page_t m, int order)
{
	struct vm_freelist *fl;
	struct vm_phys_seg *seg;
	vm_paddr_t pa;
	vm_page_t m_buddy;

	FUNC0(m->order == VM_NFREEORDER,
	    ("vm_phys_free_pages: page %p has unexpected order %d",
	    m, m->order));
	FUNC0(m->pool < VM_NFREEPOOL,
	    ("vm_phys_free_pages: page %p has unexpected pool %d",
	    m, m->pool));
	FUNC0(order < VM_NFREEORDER,
	    ("vm_phys_free_pages: order %d is out of range", order));
	seg = &vm_phys_segs[m->segind];
	FUNC4(FUNC1(seg->domain));
	if (order < VM_NFREEORDER - 1) {
		pa = FUNC2(m);
		do {
			pa ^= ((vm_paddr_t)1 << (PAGE_SHIFT + order));
			if (pa < seg->start || pa >= seg->end)
				break;
			m_buddy = &seg->first_page[FUNC3(pa - seg->start)];
			if (m_buddy->order != order)
				break;
			fl = (*seg->free_queues)[m_buddy->pool];
			FUNC6(fl, m_buddy, order);
			if (m_buddy->pool != m->pool)
				FUNC7(m->pool, m_buddy, order);
			order++;
			pa &= ~(((vm_paddr_t)1 << (PAGE_SHIFT + order)) - 1);
			m = &seg->first_page[FUNC3(pa - seg->start)];
		} while (order < VM_NFREEORDER - 1);
	}
	fl = (*seg->free_queues)[m->pool];
	FUNC5(fl, m, order, 1);
}