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
typedef  int vm_paddr_t ;
typedef  int vm_offset_t ;
struct TYPE_2__ {int pa; } ;
struct pvo_entry {TYPE_1__ pvo_pte; } ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int /*<<< orphan*/  mmu_t ;

/* Variables and functions */
 int LPTE_RPGN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pvo_entry*) ; 
 struct pvo_entry* FUNC3 (int /*<<< orphan*/ ,int) ; 

vm_paddr_t
FUNC4(mmu_t mmu, pmap_t pm, vm_offset_t va)
{
	struct	pvo_entry *pvo;
	vm_paddr_t pa;

	FUNC0(pm);
	pvo = FUNC3(pm, va);
	if (pvo == NULL)
		pa = 0;
	else
		pa = (pvo->pvo_pte.pa & LPTE_RPGN) | (va - FUNC2(pvo));
	FUNC1(pm);

	return (pa);
}