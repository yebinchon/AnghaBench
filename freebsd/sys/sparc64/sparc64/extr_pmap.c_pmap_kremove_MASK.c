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
typedef  int /*<<< orphan*/  vm_offset_t ;
struct tte {int tte_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  tte_list; } ;
struct TYPE_6__ {TYPE_1__ md; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct tte*,int) ; 
 int /*<<< orphan*/  KTR_PMAP ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RA_WLOCKED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct tte*,int /*<<< orphan*/ ) ; 
 int TD_V ; 
 int /*<<< orphan*/  FUNC4 (struct tte*) ; 
 int /*<<< orphan*/  FUNC5 (struct tte*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pmap_nkremove ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct tte* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tte_link ; 
 int /*<<< orphan*/  tte_list_global_lock ; 

void
FUNC9(vm_offset_t va)
{
	struct tte *tp;
	vm_page_t m;

	FUNC7(&tte_list_global_lock, RA_WLOCKED);
	FUNC2(pmap_nkremove);
	tp = FUNC8(va);
	FUNC0(KTR_PMAP, "pmap_kremove: va=%#lx tp=%p data=%#lx", va, tp,
	    tp->tte_data);
	if ((tp->tte_data & TD_V) == 0)
		return;
	m = FUNC1(FUNC4(tp));
	FUNC3(&m->md.tte_list, tp, tte_link);
	FUNC6(m, va);
	FUNC5(tp);
}