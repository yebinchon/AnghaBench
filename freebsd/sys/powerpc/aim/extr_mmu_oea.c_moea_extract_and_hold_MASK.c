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
typedef  int vm_prot_t ;
typedef  int /*<<< orphan*/ * vm_page_t ;
typedef  int vm_offset_t ;
struct TYPE_3__ {int pte_hi; int pte_lo; } ;
struct TYPE_4__ {TYPE_1__ pte; } ;
struct pvo_entry {TYPE_2__ pvo_pte; } ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int /*<<< orphan*/  mmu_t ;

/* Variables and functions */
 int ADDR_POFF ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int PTE_PP ; 
 int PTE_RPGN ; 
 int PTE_RW ; 
 int PTE_VALID ; 
 int VM_PROT_WRITE ; 
 struct pvo_entry* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

vm_page_t
FUNC5(mmu_t mmu, pmap_t pmap, vm_offset_t va, vm_prot_t prot)
{
	struct	pvo_entry *pvo;
	vm_page_t m;

	m = NULL;
	FUNC1(pmap);
	pvo = FUNC3(pmap, va & ~ADDR_POFF, NULL);
	if (pvo != NULL && (pvo->pvo_pte.pte.pte_hi & PTE_VALID) &&
	    ((pvo->pvo_pte.pte.pte_lo & PTE_PP) == PTE_RW ||
	     (prot & VM_PROT_WRITE) == 0)) {
		m = FUNC0(pvo->pvo_pte.pte.pte_lo & PTE_RPGN);
		if (!FUNC4(m))
			m = NULL;
	}
	FUNC2(pmap);
	return (m);
}