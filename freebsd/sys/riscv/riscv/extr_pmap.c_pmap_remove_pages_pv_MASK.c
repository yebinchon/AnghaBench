#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vm_page_t ;
struct spglist {int dummy; } ;
struct md_page {int /*<<< orphan*/  pv_list; int /*<<< orphan*/  pv_gen; } ;
typedef  TYPE_3__* pv_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;
struct TYPE_12__ {int /*<<< orphan*/  pv_va; } ;
struct TYPE_10__ {int /*<<< orphan*/  pv_list; int /*<<< orphan*/  pv_gen; } ;
struct TYPE_11__ {int aflags; scalar_t__ valid; size_t ref_count; int /*<<< orphan*/  phys_addr; TYPE_1__ md; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 size_t Ln_ENTRIES ; 
 int PGA_WRITEABLE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ VM_PAGE_BITS_ALL ; 
 struct md_page* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct spglist*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pv_next ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 

__attribute__((used)) static void
FUNC8(pmap_t pmap, vm_page_t m, pv_entry_t pv,
    struct spglist *free, bool superpage)
{
	struct md_page *pvh;
	vm_page_t mpte, mt;

	if (superpage) {
		FUNC6(pmap, Ln_ENTRIES);
		pvh = FUNC3(m->phys_addr);
		FUNC2(&pvh->pv_list, pv, pv_next);
		pvh->pv_gen++;
		if (FUNC1(&pvh->pv_list)) {
			for (mt = m; mt < &m[Ln_ENTRIES]; mt++)
				if (FUNC1(&mt->md.pv_list) &&
				    (mt->aflags & PGA_WRITEABLE) != 0)
					FUNC7(mt, PGA_WRITEABLE);
		}
		mpte = FUNC5(pmap, pv->pv_va);
		if (mpte != NULL) {
			FUNC0(mpte->valid == VM_PAGE_BITS_ALL,
			    ("pmap_remove_pages: pte page not promoted"));
			FUNC6(pmap, 1);
			FUNC0(mpte->ref_count == Ln_ENTRIES,
			    ("pmap_remove_pages: pte page ref count error"));
			mpte->ref_count = 0;
			FUNC4(mpte, free, FALSE);
		}
	} else {
		FUNC6(pmap, 1);
		FUNC2(&m->md.pv_list, pv, pv_next);
		m->md.pv_gen++;
		if (FUNC1(&m->md.pv_list) &&
		    (m->aflags & PGA_WRITEABLE) != 0) {
			pvh = FUNC3(m->phys_addr);
			if (FUNC1(&pvh->pv_list))
				FUNC7(m, PGA_WRITEABLE);
		}
	}
}