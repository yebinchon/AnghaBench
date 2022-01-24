#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
struct spglist {int dummy; } ;
typedef  int pt_entry_t ;
typedef  TYPE_2__* pmap_t ;
struct TYPE_7__ {int wired_count; int resident_count; } ;
struct TYPE_8__ {TYPE_1__ pm_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  PGA_REFERENCED ; 
 int PG_A ; 
 int PG_FRAME ; 
 int PG_G ; 
 int PG_M ; 
 int PG_MANAGED ; 
 int PG_RW ; 
 int PG_W ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RA_WLOCKED ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,struct spglist*) ; 
 int FUNC6 (int*) ; 
 int /*<<< orphan*/  pvh_global_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(pmap_t pmap, pt_entry_t *ptq, vm_offset_t va,
    struct spglist *free)
{
	pt_entry_t oldpte;
	vm_page_t m;

	FUNC7(&pvh_global_lock, RA_WLOCKED);
	FUNC2(pmap, MA_OWNED);
	oldpte = FUNC6(ptq);
	FUNC0(oldpte != 0,
	    ("pmap_remove_pte: pmap %p va %x zero pte", pmap, va));
	if (oldpte & PG_W)
		pmap->pm_stats.wired_count -= 1;
	/*
	 * Machines that don't support invlpg, also don't support
	 * PG_G.
	 */
	if (oldpte & PG_G)
		FUNC3(kernel_pmap, va);
	pmap->pm_stats.resident_count -= 1;
	if (oldpte & PG_MANAGED) {
		m = FUNC1(oldpte & PG_FRAME);
		if ((oldpte & (PG_M | PG_RW)) == (PG_M | PG_RW))
			FUNC9(m);
		if (oldpte & PG_A)
			FUNC8(m, PGA_REFERENCED);
		FUNC4(pmap, m, va);
	}
	return (FUNC5(pmap, va, free));
}