#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_pindex_t ;
typedef  TYPE_2__* vm_page_t ;
typedef  scalar_t__ vm_paddr_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  TYPE_3__* vm_object_t ;
typedef  TYPE_4__* vm_map_t ;
typedef  TYPE_5__* vm_map_entry_t ;
struct TYPE_10__ {TYPE_3__* vm_object; } ;
struct TYPE_14__ {scalar_t__ start; scalar_t__ end; int /*<<< orphan*/  offset; TYPE_1__ object; } ;
struct TYPE_13__ {int /*<<< orphan*/  pmap; } ;
struct TYPE_12__ {int /*<<< orphan*/  backing_object_offset; struct TYPE_12__* backing_object; } ;
struct TYPE_11__ {scalar_t__ pindex; scalar_t__ psind; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int MINCORE_SUPER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__* pagesizes ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 
 TYPE_2__* FUNC4 (TYPE_3__*,scalar_t__) ; 
 scalar_t__ vmmap_skip_res_cnt ; 

void
FUNC5(vm_map_t map, vm_map_entry_t entry,
    int *resident_count, bool *super)
{
	vm_object_t obj, tobj;
	vm_page_t m, m_adv;
	vm_offset_t addr;
	vm_paddr_t pa;
	vm_pindex_t pi, pi_adv, pindex;

	*super = false;
	*resident_count = 0;
	if (vmmap_skip_res_cnt)
		return;

	pa = 0;
	obj = entry->object.vm_object;
	addr = entry->start;
	m_adv = NULL;
	pi = FUNC1(entry->offset);
	for (; addr < entry->end; addr += FUNC0(pi_adv), pi += pi_adv) {
		if (m_adv != NULL) {
			m = m_adv;
		} else {
			pi_adv = FUNC2(entry->end - addr);
			pindex = pi;
			for (tobj = obj;; tobj = tobj->backing_object) {
				m = FUNC4(tobj, pindex);
				if (m != NULL) {
					if (m->pindex == pindex)
						break;
					if (pi_adv > m->pindex - pindex) {
						pi_adv = m->pindex - pindex;
						m_adv = m;
					}
				}
				if (tobj->backing_object == NULL)
					goto next;
				pindex += FUNC1(tobj->
				    backing_object_offset);
			}
		}
		m_adv = NULL;
		if (m->psind != 0 && addr + pagesizes[1] <= entry->end &&
		    (addr & (pagesizes[1] - 1)) == 0 &&
		    (FUNC3(map->pmap, addr, &pa) & MINCORE_SUPER) != 0) {
			*super = true;
			pi_adv = FUNC2(pagesizes[1]);
		} else {
			/*
			 * We do not test the found page on validity.
			 * Either the page is busy and being paged in,
			 * or it was invalidated.  The first case
			 * should be counted as resident, the second
			 * is not so clear; we do account both.
			 */
			pi_adv = 1;
		}
		*resident_count += pi_adv;
next:;
	}
}