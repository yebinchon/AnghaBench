#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
struct pvo_head {int dummy; } ;
struct pvo_entry {int /*<<< orphan*/  pvo_pmap; } ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int /*<<< orphan*/  mmu_t ;
struct TYPE_8__ {int aflags; } ;

/* Variables and functions */
 struct pvo_entry* FUNC0 (struct pvo_head*) ; 
 struct pvo_entry* FUNC1 (struct pvo_entry*,int /*<<< orphan*/ ) ; 
 int PGA_WRITEABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PTE_CHG ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pvo_entry*,int) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pvh_global_lock ; 
 int /*<<< orphan*/  pvo_vlink ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 struct pvo_head* FUNC11 (TYPE_1__*) ; 

void
FUNC12(mmu_t mmu, vm_page_t m)
{
	struct  pvo_head *pvo_head;
	struct	pvo_entry *pvo, *next_pvo;
	pmap_t	pmap;

	FUNC7(&pvh_global_lock);
	pvo_head = FUNC11(m);
	for (pvo = FUNC0(pvo_head); pvo != NULL; pvo = next_pvo) {
		next_pvo = FUNC1(pvo, pvo_vlink);

		pmap = pvo->pvo_pmap;
		FUNC2(pmap);
		FUNC5(pvo, -1);
		FUNC3(pmap);
	}
	if ((m->aflags & PGA_WRITEABLE) && FUNC6(m, PTE_CHG)) {
		FUNC4(m, PTE_CHG);
		FUNC10(m);
	}
	FUNC9(m, PGA_WRITEABLE);
	FUNC8(&pvh_global_lock);
}