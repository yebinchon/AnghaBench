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
struct pmap {int* pm_context; int /*<<< orphan*/  pm_active; } ;
typedef  int /*<<< orphan*/  register_t ;

/* Variables and functions */
 int /*<<< orphan*/  ASI_DMMU_DEMAP ; 
 int /*<<< orphan*/  ASI_IMMU_DEMAP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  KERNBASE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int TLB_DEMAP_CONTEXT ; 
 int TLB_DEMAP_PRIMARY ; 
 int /*<<< orphan*/  cpuid ; 
 size_t curcpu ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct pmap*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tlb_ncontext_demap ; 

void
FUNC10(struct pmap *pm)
{
	void *cookie;
	register_t s;

	/*
	 * It is important that we are not interrupted or preempted while
	 * doing the IPIs. The interrupted CPU may hold locks, and since
	 * it will wait for the CPU that sent the IPI, this can lead
	 * to a deadlock when an interrupt comes in on that CPU and it's
	 * handler tries to grab one of that locks. This will only happen for
	 * spin locks, but these IPI types are delivered even if normal
	 * interrupts are disabled, so the lock critical section will not
	 * protect the target processor from entering the IPI handler with
	 * the lock held.
	 */
	FUNC3(tlb_ncontext_demap);
	cookie = FUNC7(pm);
	s = FUNC5();
	if (FUNC0(FUNC2(cpuid), &pm->pm_active)) {
		FUNC1(pm->pm_context[curcpu] != -1,
		    ("tlb_context_demap: inactive pmap?"));
		FUNC9(TLB_DEMAP_PRIMARY | TLB_DEMAP_CONTEXT, ASI_DMMU_DEMAP, 0);
		FUNC9(TLB_DEMAP_PRIMARY | TLB_DEMAP_CONTEXT, ASI_IMMU_DEMAP, 0);
		FUNC4(KERNBASE);
	}
	FUNC6(s);
	FUNC8(cookie);
}