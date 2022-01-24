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
typedef  int u_long ;
struct tte {int /*<<< orphan*/  tte_data; } ;
struct TYPE_10__ {int /*<<< orphan*/  resident_count; int /*<<< orphan*/  wired_count; } ;
struct pmap {TYPE_2__ pm_stats; } ;
struct TYPE_9__ {int /*<<< orphan*/  tte_list; } ;
struct TYPE_11__ {TYPE_1__ md; } ;

/* Variables and functions */
 int /*<<< orphan*/  PGA_REFERENCED ; 
 int /*<<< orphan*/  PGA_WRITEABLE ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct pmap*) ; 
 int /*<<< orphan*/  RA_WLOCKED ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct tte*,int /*<<< orphan*/ ) ; 
 int TD_FAKE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int TD_PV ; 
 int TD_REF ; 
 int TD_W ; 
 int TD_WIRED ; 
 int /*<<< orphan*/  FUNC5 (struct tte*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tte_link ; 
 int /*<<< orphan*/  tte_list_global_lock ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 

int
FUNC12(struct pmap *pm, struct pmap *pm2, struct tte *tp,
    vm_offset_t va)
{
	vm_page_t m;
	u_long data;

	FUNC8(&tte_list_global_lock, RA_WLOCKED);
	data = FUNC6(&tp->tte_data);
	if ((data & TD_FAKE) == 0) {
		m = FUNC0(FUNC4(data));
		FUNC3(&m->md.tte_list, tp, tte_link);
		if ((data & TD_WIRED) != 0)
			pm->pm_stats.wired_count--;
		if ((data & TD_PV) != 0) {
			if ((data & TD_W) != 0)
				FUNC11(m);
			if ((data & TD_REF) != 0)
				FUNC10(m, PGA_REFERENCED);
			if (FUNC2(&m->md.tte_list))
				FUNC9(m, PGA_WRITEABLE);
			pm->pm_stats.resident_count--;
		}
		FUNC7(m, va);
	}
	FUNC5(tp);
	if (FUNC1(pm))
		return (0);
	return (1);
}