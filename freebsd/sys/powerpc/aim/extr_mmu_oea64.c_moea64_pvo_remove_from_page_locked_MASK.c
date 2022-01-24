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
struct pvo_entry {int pvo_vaddr; TYPE_1__ pvo_pte; int /*<<< orphan*/ * pvo_pmap; } ;
typedef  int /*<<< orphan*/  mmu_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pvo_entry*,int /*<<< orphan*/ ) ; 
 int LPTE_RPGN ; 
 int PGA_EXECUTABLE ; 
 int PGA_WRITEABLE ; 
 int PVO_DEAD ; 
 int PVO_MANAGED ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  moea64_pvo_entries ; 
 int /*<<< orphan*/  moea64_pvo_remove_calls ; 
 int /*<<< orphan*/  pvo_vlink ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC7(mmu_t mmu, struct pvo_entry *pvo,
    vm_page_t m)
{

	FUNC0(pvo->pvo_vaddr & PVO_DEAD, ("Trying to delink live page"));

	/* Use NULL pmaps as a sentinel for races in page deletion */
	if (pvo->pvo_pmap == NULL)
		return;
	pvo->pvo_pmap = NULL;

	/*
	 * Update vm about page writeability/executability if managed
	 */
	FUNC3(pvo->pvo_pte.pa & LPTE_RPGN);
	if (pvo->pvo_vaddr & PVO_MANAGED) {
		if (m != NULL) {
			FUNC2(pvo, pvo_vlink);
			if (FUNC1(FUNC6(m)))
				FUNC5(m,
				    PGA_WRITEABLE | PGA_EXECUTABLE);
		}
	}

	FUNC4(moea64_pvo_entries--);
	FUNC4(moea64_pvo_remove_calls++);
}