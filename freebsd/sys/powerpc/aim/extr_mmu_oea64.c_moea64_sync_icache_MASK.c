#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_size_t ;
typedef  int vm_paddr_t ;
typedef  int vm_offset_t ;
struct TYPE_7__ {int pa; } ;
struct pvo_entry {TYPE_3__ pvo_pte; } ;
typedef  int /*<<< orphan*/ * pmap_t ;
typedef  int /*<<< orphan*/  mmu_t ;
struct TYPE_8__ {TYPE_2__* td_proc; } ;
struct TYPE_6__ {TYPE_1__* p_vmspace; } ;
struct TYPE_5__ {int /*<<< orphan*/  vm_pmap; } ;

/* Variables and functions */
 int ADDR_POFF ; 
 int LPTE_I ; 
 int LPTE_RPGN ; 
 scalar_t__ FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_4__* curthread ; 
 struct pvo_entry* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,scalar_t__) ; 
 int FUNC6 (int) ; 

void
FUNC7(mmu_t mmu, pmap_t pm, vm_offset_t va, vm_size_t sz)
{
	struct pvo_entry *pvo;
	vm_offset_t lim;
	vm_paddr_t pa;
	vm_size_t len;

	if (FUNC3(pm == NULL))
		pm = &curthread->td_proc->p_vmspace->vm_pmap;

	FUNC1(pm);
	while (sz > 0) {
		lim = FUNC6(va+1);
		len = FUNC0(lim - va, sz);
		pvo = FUNC4(pm, va & ~ADDR_POFF);
		if (pvo != NULL && !(pvo->pvo_pte.pa & LPTE_I)) {
			pa = (pvo->pvo_pte.pa & LPTE_RPGN) | (va & ADDR_POFF);
			FUNC5(mmu, pm, va, pa, len);
		}
		va += len;
		sz -= len;
	}
	FUNC2(pm);
}