#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int pt_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int pd_entry_t ;
struct TYPE_2__ {scalar_t__ td_pinned; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int NPTEPG ; 
 int* PADDR3 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int PG_A ; 
 int PG_FRAME ; 
 int PG_M ; 
 int PG_PS ; 
 int PG_RW ; 
 int PG_V ; 
 int /*<<< orphan*/  PMAP1changed ; 
 int /*<<< orphan*/  PMAP1changedcpu ; 
 int /*<<< orphan*/  PMAP1unchanged ; 
 int* PMAP3 ; 
 scalar_t__ PMAP3cpu ; 
 int /*<<< orphan*/  RA_WLOCKED ; 
 int /*<<< orphan*/  cpuid ; 
 TYPE_1__* curthread ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pvh_global_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static pt_entry_t *
FUNC6(pmap_t pmap, vm_offset_t va)
{
	pd_entry_t newpf;
	pd_entry_t *pde;

	pde = FUNC4(pmap, va);
	if (*pde & PG_PS)
		return (pde);
	if (*pde != 0) {
		FUNC5(&pvh_global_lock, RA_WLOCKED);
		FUNC0(curthread->td_pinned > 0, ("curthread not pinned"));
		newpf = *pde & PG_FRAME;
		if ((*PMAP3 & PG_FRAME) != newpf) {
			*PMAP3 = newpf | PG_RW | PG_V | PG_A | PG_M;
#ifdef SMP
			PMAP3cpu = PCPU_GET(cpuid);
#endif
			FUNC3(PADDR3);
			PMAP1changed++;
		} else
#ifdef SMP
		if (PMAP3cpu != PCPU_GET(cpuid)) {
			PMAP3cpu = PCPU_GET(cpuid);
			invlcaddr(PADDR3);
			PMAP1changedcpu++;
		} else
#endif
			PMAP1unchanged++;
		return (PADDR3 + (FUNC2(va) & (NPTEPG - 1)));
	}
	return (0);
}