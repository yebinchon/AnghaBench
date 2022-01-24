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
typedef  int vm_size_t ;
typedef  int vm_paddr_t ;
typedef  int vm_offset_t ;
struct TYPE_5__ {int pa; } ;
struct pvo_entry {TYPE_1__ pvo_pte; scalar_t__ pvo_vaddr; } ;
typedef  int /*<<< orphan*/  mmu_t ;
typedef  int boolean_t ;
struct TYPE_6__ {int /*<<< orphan*/  pmap_pvo; } ;

/* Variables and functions */
 int ADDR_POFF ; 
 scalar_t__ DMAP_BASE_ADDRESS ; 
 int EFAULT ; 
 int LPTE_RPGN ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 struct pvo_entry* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pvo_entry*) ; 
 struct pvo_entry* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pvo_entry*) ; 
 scalar_t__ hw_direct_map ; 
 TYPE_2__* kernel_pmap ; 
 scalar_t__ FUNC4 (int,int) ; 
 int /*<<< orphan*/  pvo_tree ; 

boolean_t
FUNC5(mmu_t mmu, vm_paddr_t pa, vm_size_t size)
{
	struct pvo_entry *pvo, key;
	vm_offset_t ppa;
	int error = 0;

	if (hw_direct_map && FUNC4(pa, size) == 0)
		return (0);

	FUNC0(kernel_pmap);
	ppa = pa & ~ADDR_POFF;
	key.pvo_vaddr = DMAP_BASE_ADDRESS + ppa;
	for (pvo = FUNC2(pvo_tree, &kernel_pmap->pmap_pvo, &key);
	    ppa < pa + size; ppa += PAGE_SIZE,
	    pvo = FUNC3(pvo_tree, &kernel_pmap->pmap_pvo, pvo)) {
		if (pvo == NULL || (pvo->pvo_pte.pa & LPTE_RPGN) != ppa) {
			error = EFAULT;
			break;
		}
	}
	FUNC1(kernel_pmap);

	return (error);
}