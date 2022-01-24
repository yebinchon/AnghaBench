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
struct thread {TYPE_2__* td_proc; } ;
typedef  TYPE_3__* pmap_t ;
typedef  int /*<<< orphan*/  mmu_t ;
struct TYPE_6__ {int /*<<< orphan*/  pm_active; } ;
struct TYPE_5__ {TYPE_1__* p_vmspace; } ;
struct TYPE_4__ {TYPE_3__ vm_pmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cpuid ; 
 int /*<<< orphan*/  curpmap ; 

void
FUNC3(mmu_t mmu, struct thread *td)
{
	pmap_t	pm;

	pm = &td->td_proc->p_vmspace->vm_pmap;
	FUNC0(FUNC1(cpuid), &pm->pm_active);
	FUNC2(curpmap, NULL);
}