#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
struct tte {int tte_data; } ;
struct TYPE_10__ {int /*<<< orphan*/  resident_count; int /*<<< orphan*/  wired_count; } ;
struct pmap {TYPE_2__ pm_stats; } ;
struct TYPE_9__ {int /*<<< orphan*/  tte_list; } ;
struct TYPE_11__ {int oflags; TYPE_1__ md; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  PGA_REFERENCED ; 
 int /*<<< orphan*/  PGA_WRITEABLE ; 
 int /*<<< orphan*/  FUNC1 (struct pmap*) ; 
 int /*<<< orphan*/  FUNC2 (struct pmap*) ; 
 struct tte* FUNC3 (int /*<<< orphan*/ *) ; 
 struct tte* FUNC4 (struct tte*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct tte*,int /*<<< orphan*/ ) ; 
 int TD_PV ; 
 int TD_REF ; 
 int TD_V ; 
 int TD_W ; 
 int TD_WIRED ; 
 struct pmap* FUNC6 (struct tte*) ; 
 int /*<<< orphan*/  FUNC7 (struct tte*) ; 
 int /*<<< orphan*/  FUNC8 (struct tte*) ; 
 int VPO_UNMANAGED ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct pmap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tte_link ; 
 int /*<<< orphan*/  tte_list_global_lock ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 

void
FUNC16(vm_page_t m)
{
	struct pmap *pm;
	struct tte *tpn;
	struct tte *tp;
	vm_offset_t va;

	FUNC0((m->oflags & VPO_UNMANAGED) == 0,
	    ("pmap_remove_all: page %p is not managed", m));
	FUNC10(&tte_list_global_lock);
	for (tp = FUNC3(&m->md.tte_list); tp != NULL; tp = tpn) {
		tpn = FUNC4(tp, tte_link);
		if ((tp->tte_data & TD_PV) == 0)
			continue;
		pm = FUNC6(tp);
		va = FUNC7(tp);
		FUNC1(pm);
		if ((tp->tte_data & TD_WIRED) != 0)
			pm->pm_stats.wired_count--;
		if ((tp->tte_data & TD_REF) != 0)
			FUNC14(m, PGA_REFERENCED);
		if ((tp->tte_data & TD_W) != 0)
			FUNC15(m);
		tp->tte_data &= ~TD_V;
		FUNC12(pm, va);
		FUNC5(&m->md.tte_list, tp, tte_link);
		pm->pm_stats.resident_count--;
		FUNC9(m, va);
		FUNC8(tp);
		FUNC2(pm);
	}
	FUNC13(m, PGA_WRITEABLE);
	FUNC11(&tte_list_global_lock);
}