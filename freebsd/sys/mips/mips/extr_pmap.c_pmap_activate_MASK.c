#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
struct thread {struct proc* td_proc; } ;
struct proc {int /*<<< orphan*/  p_vmspace; } ;
typedef  TYPE_2__* pmap_t ;
struct TYPE_7__ {TYPE_1__* pm_asid; struct TYPE_7__* pm_segtab; int /*<<< orphan*/  pm_active; } ;
struct TYPE_6__ {int /*<<< orphan*/  asid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ *) ; 
 void* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 size_t curpmap ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 size_t segbase ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ) ; 

void
FUNC9(struct thread *td)
{
	pmap_t pmap, oldpmap;
	struct proc *p = td->td_proc;
	u_int cpuid;

	FUNC4();

	pmap = FUNC8(p->p_vmspace);
	oldpmap = FUNC2(curpmap);
	cpuid = FUNC2(cpuid);

	if (oldpmap)
		FUNC0(cpuid, &oldpmap->pm_active);
	FUNC1(cpuid, &pmap->pm_active);
	FUNC7(pmap);
	if (td == curthread) {
		FUNC3(segbase, pmap->pm_segtab);
		FUNC6(pmap->pm_asid[cpuid].asid);
	}

	FUNC3(curpmap, pmap);
	FUNC5();
}