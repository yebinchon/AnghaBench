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
typedef  TYPE_2__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  scalar_t__ vm_offset_t ;
struct tte {int tte_data; int /*<<< orphan*/  tte_vpn; } ;
struct TYPE_5__ {scalar_t__ color; } ;
struct TYPE_6__ {int flags; TYPE_1__ md; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASI_PHYS_USE_EC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int PAGE_SIZE ; 
 int PG_FICTITIOUS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int TD_8K ; 
 int TD_CP ; 
 int TD_CV ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int TD_V ; 
 int TD_W ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TS_8K ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (void*,int) ; 
 scalar_t__ dcache_color_ignore ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int /*<<< orphan*/  pmap_nzero_page ; 
 int /*<<< orphan*/  pmap_nzero_page_c ; 
 int /*<<< orphan*/  pmap_nzero_page_nc ; 
 int /*<<< orphan*/  pmap_nzero_page_oc ; 
 scalar_t__ pmap_temp_map_1 ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct tte* FUNC12 (scalar_t__) ; 

void
FUNC13(vm_page_t m)
{
	struct tte *tp;
	vm_offset_t va;
	vm_paddr_t pa;

	FUNC1((m->flags & PG_FICTITIOUS) == 0,
	    ("pmap_zero_page: fake page"));
	FUNC3(pmap_nzero_page);
	pa = FUNC8(m);
	if (dcache_color_ignore != 0 || m->md.color == FUNC0(pa)) {
		FUNC3(pmap_nzero_page_c);
		va = FUNC6(pa);
		FUNC10((void *)va, PAGE_SIZE);
	} else if (m->md.color == -1) {
		FUNC3(pmap_nzero_page_nc);
		FUNC9(ASI_PHYS_USE_EC, pa, PAGE_SIZE);
	} else {
		FUNC3(pmap_nzero_page_oc);
		FUNC2(kernel_pmap);
		va = pmap_temp_map_1 + (m->md.color * PAGE_SIZE);
		tp = FUNC12(va);
		tp->tte_data = TD_V | TD_8K | FUNC5(pa) | TD_CP | TD_CV | TD_W;
		tp->tte_vpn = FUNC7(va, TS_8K);
		FUNC10((void *)va, PAGE_SIZE);
		FUNC11(kernel_pmap, va);
		FUNC4(kernel_pmap);
	}
}