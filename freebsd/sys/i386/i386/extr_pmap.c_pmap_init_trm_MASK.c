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
struct TYPE_5__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_WAITOK ; 
 int PAGE_MASK ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int PG_A ; 
 int PG_M ; 
 int PG_RW ; 
 int PG_V ; 
 int PG_ZERO ; 
 int* PTD ; 
 size_t TRPTDI ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*,int*) ; 
 int VM_ALLOC_NOBUSY ; 
 int VM_ALLOC_NOOBJ ; 
 int VM_ALLOC_NORMAL ; 
 int VM_ALLOC_WAITOK ; 
 int VM_ALLOC_WIRED ; 
 int VM_ALLOC_ZERO ; 
 int /*<<< orphan*/  VM_MEMATTR_DEFAULT ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pmap_trm_arena ; 
 int /*<<< orphan*/  pmap_trm_import ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int trm_guard ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC7(void)
{
	vm_page_t pd_m;

	FUNC0("machdep.trm_guard", &trm_guard);
	if ((trm_guard & PAGE_MASK) != 0)
		trm_guard = 0;
	pmap_trm_arena = FUNC5("i386trampoline", 0, 0, 1, 0, M_WAITOK);
	FUNC6(pmap_trm_arena, pmap_trm_import, NULL, NULL, PAGE_SIZE);
	pd_m = FUNC4(NULL, 0, VM_ALLOC_NOOBJ | VM_ALLOC_NOBUSY |
	    VM_ALLOC_NORMAL | VM_ALLOC_WIRED | VM_ALLOC_WAITOK | VM_ALLOC_ZERO);
	if ((pd_m->flags & PG_ZERO) == 0)
		FUNC3(pd_m);
	PTD[TRPTDI] = FUNC1(pd_m) | PG_M | PG_A | PG_RW | PG_V |
	    FUNC2(kernel_pmap, VM_MEMATTR_DEFAULT, TRUE);
}