#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_size_t ;
typedef  int vm_paddr_t ;
typedef  int vm_offset_t ;
struct TYPE_3__ {int pte_lo; } ;
struct TYPE_4__ {TYPE_1__ pte; } ;
struct pvo_entry {TYPE_2__ pvo_pte; } ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int /*<<< orphan*/  mmu_t ;

/* Variables and functions */
 int ADDR_POFF ; 
 scalar_t__ FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int PTE_RPGN ; 
 struct pvo_entry* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6(mmu_t mmu, pmap_t pm, vm_offset_t va, vm_size_t sz)
{
	struct pvo_entry *pvo;
	vm_offset_t lim;
	vm_paddr_t pa;
	vm_size_t len;

	FUNC1(pm);
	while (sz > 0) {
		lim = FUNC5(va);
		len = FUNC0(lim - va, sz);
		pvo = FUNC3(pm, va & ~ADDR_POFF, NULL);
		if (pvo != NULL) {
			pa = (pvo->pvo_pte.pte.pte_lo & PTE_RPGN) |
			    (va & ADDR_POFF);
			FUNC4(pa, len);
		}
		va += len;
		sz -= len;
	}
	FUNC2(pm);
}