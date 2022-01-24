#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_6__ {TYPE_2__* pc_curpcb; TYPE_1__* pc_curthread; TYPE_1__* pc_idlethread; } ;
struct TYPE_5__ {uintptr_t pcb_sp; } ;
struct TYPE_4__ {TYPE_2__* td_pcb; } ;

/* Variables and functions */
 int L1CSR0_DCE ; 
 int L1CSR1_ICE ; 
 int PSL_CM ; 
 int PSL_ME ; 
 int /*<<< orphan*/  SPR_L1CSR0 ; 
 int /*<<< orphan*/  SPR_L1CSR1 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 TYPE_3__* pcpup ; 

uintptr_t
FUNC6()
{
	uint32_t msr, csr;
	uintptr_t sp;

	/* Enable L1 caches */
	csr = FUNC4(SPR_L1CSR0);
	if ((csr & L1CSR0_DCE) == 0) {
		FUNC1();
		FUNC0();
	}

	csr = FUNC4(SPR_L1CSR1);
	if ((csr & L1CSR1_ICE) == 0) {
		FUNC3();
		FUNC2();
	}

	/* Set MSR */
#ifdef __powerpc64__
	msr = PSL_CM | PSL_ME;
#else
	msr = PSL_ME;
#endif
	FUNC5(msr);

	/* Assign pcpu fields, return ptr to this AP's idle thread kstack */
	pcpup->pc_curthread = pcpup->pc_idlethread;
#ifdef __powerpc64__
	__asm __volatile("mr 13,%0" :: "r"(pcpup->pc_curthread));
#else
	__asm __volatile("mr 2,%0" :: "r"(pcpup->pc_curthread));
#endif
	pcpup->pc_curpcb = pcpup->pc_curthread->td_pcb;
	sp = pcpup->pc_curpcb->pcb_sp;

	/* XXX shouldn't the pcb_sp be checked/forced for alignment here?? */

	return (sp);
}