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
typedef  int u_int ;
struct vm_freelist {int dummy; } ;
struct TYPE_5__ {int order; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int PAGE_SIZE ; 
 int VM_NFREEORDER ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_freelist*,TYPE_1__*,int,int) ; 

__attribute__((used)) static void
FUNC5(vm_page_t m, u_int npages, struct vm_freelist *fl, int tail)
{
	u_int n;
	int order;

	FUNC0(npages > 0, ("vm_phys_enq_range: npages is 0"));
	FUNC0(((FUNC1(m) + npages * PAGE_SIZE) &
	    ((PAGE_SIZE << (FUNC3(npages) - 1)) - 1)) == 0,
	    ("vm_phys_enq_range: page %p and npages %u are misaligned",
	    m, npages));
	do {
		FUNC0(m->order == VM_NFREEORDER,
		    ("vm_phys_enq_range: page %p has unexpected order %d",
		    m, m->order));
		order = FUNC2(npages) - 1;
		FUNC0(order < VM_NFREEORDER,
		    ("vm_phys_enq_range: order %d is out of range", order));
		FUNC4(fl, m, order, tail);
		n = 1 << order;
		m += n;
		npages -= n;
	} while (npages > 0);
}