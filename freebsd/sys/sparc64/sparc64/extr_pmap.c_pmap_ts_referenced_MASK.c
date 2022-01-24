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
typedef  int u_long ;
struct tte {int tte_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  tte_list; } ;
struct TYPE_6__ {int oflags; TYPE_1__ md; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int PMAP_TS_REFERENCED_MAX ; 
 struct tte* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct tte*,int /*<<< orphan*/ ) ; 
 struct tte* FUNC3 (struct tte*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct tte*,int /*<<< orphan*/ ) ; 
 int TD_PV ; 
 int TD_REF ; 
 int TD_W ; 
 int VPO_UNMANAGED ; 
 int FUNC5 (int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tte_link ; 
 int /*<<< orphan*/  tte_list_global_lock ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

int
FUNC9(vm_page_t m)
{
	struct tte *tpf;
	struct tte *tpn;
	struct tte *tp;
	u_long data;
	int count;

	FUNC0((m->oflags & VPO_UNMANAGED) == 0,
	    ("pmap_ts_referenced: page %p is not managed", m));
	count = 0;
	FUNC6(&tte_list_global_lock);
	if ((tp = FUNC1(&m->md.tte_list)) != NULL) {
		tpf = tp;
		do {
			tpn = FUNC3(tp, tte_link);
			FUNC4(&m->md.tte_list, tp, tte_link);
			FUNC2(&m->md.tte_list, tp, tte_link);
			if ((tp->tte_data & TD_PV) == 0)
				continue;
			data = FUNC5(&tp->tte_data, TD_REF);
			if ((data & TD_W) != 0)
				FUNC8(m);
			if ((data & TD_REF) != 0 && ++count >=
			    PMAP_TS_REFERENCED_MAX)
				break;
		} while ((tp = tpn) != NULL && tp != tpf);
	}
	FUNC7(&tte_list_global_lock);
	return (count);
}