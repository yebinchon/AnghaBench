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
typedef  int vm_offset_t ;
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  scalar_t__ pt_entry_t ;
typedef  TYPE_2__* pmap_t ;
typedef  int /*<<< orphan*/ * pd_entry_t ;
struct TYPE_7__ {int /*<<< orphan*/  wired_count; } ;
struct TYPE_8__ {TYPE_1__ pm_stats; } ;

/* Variables and functions */
 int NBPDR ; 
 int NBSEG ; 
 scalar_t__ PAGE_SIZE ; 
 int PDRMASK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  PTE_V ; 
 int /*<<< orphan*/  PTE_W ; 
 int SEGMASK ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC3 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/ ** FUNC4 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/ ** FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int /*<<< orphan*/ ) ; 

void
FUNC8(pmap_t pmap, vm_offset_t sva, vm_offset_t eva)
{
	pd_entry_t *pde, *pdpe;
	pt_entry_t *pte;
	vm_offset_t va_next;

	FUNC0(pmap);
	for (; sva < eva; sva = va_next) {
		pdpe = FUNC5(pmap, sva);
#ifdef __mips_n64
		if (*pdpe == NULL) {
			va_next = (sva + NBSEG) & ~SEGMASK;
			if (va_next < sva)
				va_next = eva;
			continue;
		}
#endif
		va_next = (sva + NBPDR) & ~PDRMASK;
		if (va_next < sva)
			va_next = eva;
		pde = FUNC4(pdpe, sva);
		if (*pde == NULL)
			continue;
		if (va_next > eva)
			va_next = eva;
		for (pte = FUNC3(pde, sva); sva != va_next; pte++,
		    sva += PAGE_SIZE) {
			if (!FUNC7(pte, PTE_V))
				continue;
			if (!FUNC7(pte, PTE_W))
				FUNC2("pmap_unwire: pte %#jx is missing PG_W",
				    (uintmax_t)*pte);
			FUNC6(pte, PTE_W);
			pmap->pm_stats.wired_count--;
		}
	}
	FUNC1(pmap);
}