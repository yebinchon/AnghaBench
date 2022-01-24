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
typedef  int /*<<< orphan*/ * vm_page_t ;
struct TYPE_2__ {int pa; } ;
struct pvo_entry {int pvo_vaddr; TYPE_1__ pvo_pte; } ;
typedef  int /*<<< orphan*/  mmu_t ;

/* Variables and functions */
 int LPTE_RPGN ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int PVO_MANAGED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct pvo_entry*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(mmu_t mmu, struct pvo_entry *pvo)
{
	vm_page_t pg = NULL;

	if (pvo->pvo_vaddr & PVO_MANAGED)
		pg = FUNC0(pvo->pvo_pte.pa & LPTE_RPGN);

	FUNC1(pvo->pvo_pte.pa & LPTE_RPGN);
	FUNC3(mmu, pvo, pg);
	FUNC2(pvo->pvo_pte.pa & LPTE_RPGN);
}