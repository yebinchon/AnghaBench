#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* u_int ;
struct thread {TYPE_1__* td_proc; } ;
typedef  TYPE_2__* pmap_t ;
struct TYPE_6__ {int /*<<< orphan*/  pm_active; int /*<<< orphan*/  pm_satp; } ;
struct TYPE_5__ {int /*<<< orphan*/  p_vmspace; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ *) ; 
 void* FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*,TYPE_2__*) ; 
 void* curpmap ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ) ; 

void
FUNC9(struct thread *td)
{
	pmap_t oldpmap, pmap;
	u_int hart;

	oldpmap = FUNC4(curpmap);
	pmap = FUNC8(td->td_proc->p_vmspace);
	if (pmap == oldpmap)
		return;
	FUNC6(pmap->pm_satp);

	hart = FUNC4(hart);
#ifdef SMP
	CPU_SET_ATOMIC(hart, &pmap->pm_active);
	CPU_CLR_ATOMIC(hart, &oldpmap->pm_active);
#else
	FUNC2(hart, &pmap->pm_active);
	FUNC0(hart, &oldpmap->pm_active);
#endif
	FUNC5(curpmap, pmap);

	FUNC7();
}