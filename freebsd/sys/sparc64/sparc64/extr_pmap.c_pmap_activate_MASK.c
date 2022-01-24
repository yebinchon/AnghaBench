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
struct vmspace {int dummy; } ;
struct thread {TYPE_1__* td_proc; } ;
struct pmap {int* pm_context; int pm_tsb; int /*<<< orphan*/  pm_active; } ;
struct TYPE_2__ {struct vmspace* p_vmspace; } ;

/* Variables and functions */
 int /*<<< orphan*/  AA_DMMU_PCXR ; 
 int /*<<< orphan*/  AA_DMMU_TSB ; 
 int /*<<< orphan*/  AA_IMMU_TSB ; 
 int /*<<< orphan*/  ASI_DMMU ; 
 int /*<<< orphan*/  ASI_IMMU ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KERNBASE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,...) ; 
 int TLB_CXR_PGSZ_MASK ; 
 int /*<<< orphan*/  FUNC5 (uintptr_t*,uintptr_t) ; 
 int /*<<< orphan*/  cpuid ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 size_t curcpu ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pmap ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  tlb_ctx ; 
 int /*<<< orphan*/  tlb_ctx_max ; 
 int /*<<< orphan*/  tlb_ctx_min ; 
 int /*<<< orphan*/  FUNC11 () ; 
 struct pmap* FUNC12 (struct vmspace*) ; 

void
FUNC13(struct thread *td)
{
	struct vmspace *vm;
	struct pmap *pm;
	int context;

	FUNC6();
	vm = td->td_proc->p_vmspace;
	pm = FUNC12(vm);

	context = FUNC2(tlb_ctx);
	if (context == FUNC2(tlb_ctx_max)) {
		FUNC11();
		context = FUNC2(tlb_ctx_min);
	}
	FUNC4(tlb_ctx, context + 1);

	pm->pm_context[curcpu] = context;
#ifdef SMP
	CPU_SET_ATOMIC(PCPU_GET(cpuid), &pm->pm_active);
	atomic_store_acq_ptr((uintptr_t *)PCPU_PTR(pmap), (uintptr_t)pm);
#else
	FUNC0(FUNC2(cpuid), &pm->pm_active);
	FUNC4(pmap, pm);
#endif

	FUNC10(AA_DMMU_TSB, ASI_DMMU, pm->pm_tsb);
	FUNC10(AA_IMMU_TSB, ASI_IMMU, pm->pm_tsb);
	FUNC10(AA_DMMU_PCXR, ASI_DMMU, (FUNC9(AA_DMMU_PCXR, ASI_DMMU) &
	    TLB_CXR_PGSZ_MASK) | context);
	FUNC8(KERNBASE);
	FUNC7();
}