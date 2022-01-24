#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_8__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vm_page_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  scalar_t__ u_long ;
struct tte {scalar_t__ tte_data; int /*<<< orphan*/  tte_vpn; } ;
struct TYPE_11__ {int type; } ;
struct TYPE_9__ {int /*<<< orphan*/  tte_list; } ;
struct TYPE_10__ {TYPE_1__ md; int /*<<< orphan*/  pindex; TYPE_8__* object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,struct tte*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,TYPE_8__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  KTR_PMAP ; 
 int /*<<< orphan*/  KTR_SPARE2 ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RA_WLOCKED ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct tte*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct tte*,int /*<<< orphan*/ ) ; 
 scalar_t__ TD_8K ; 
 scalar_t__ TD_CP ; 
 scalar_t__ TD_CV ; 
 scalar_t__ TD_P ; 
 scalar_t__ TD_REF ; 
 scalar_t__ TD_SW ; 
 scalar_t__ TD_V ; 
 scalar_t__ TD_W ; 
 int /*<<< orphan*/  TS_8K ; 
 int /*<<< orphan*/  FUNC7 (struct tte*) ; 
 scalar_t__ FUNC8 (struct tte*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  kernel_pmap ; 
 scalar_t__ FUNC11 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  pmap_nkenter ; 
 int /*<<< orphan*/  pmap_nkenter_oc ; 
 int /*<<< orphan*/  pmap_nkenter_stupid ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct tte* FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  tte_link ; 
 int /*<<< orphan*/  tte_list_global_lock ; 

void
FUNC16(vm_offset_t va, vm_page_t m)
{
	vm_offset_t ova;
	struct tte *tp;
	vm_page_t om;
	u_long data;

	FUNC13(&tte_list_global_lock, RA_WLOCKED);
	FUNC4(pmap_nkenter);
	tp = FUNC15(va);
	FUNC0(KTR_PMAP, "pmap_kenter: va=%#lx pa=%#lx tp=%p data=%#lx",
	    va, FUNC10(m), tp, tp->tte_data);
	if (FUNC2(FUNC10(m)) != FUNC2(va)) {
		FUNC1(KTR_SPARE2,
	"pmap_kenter: off color va=%#lx pa=%#lx o=%p ot=%d pi=%#lx",
		    va, FUNC10(m), m->object,
		    m->object ? m->object->type : -1,
		    m->pindex);
		FUNC4(pmap_nkenter_oc);
	}
	if ((tp->tte_data & TD_V) != 0) {
		om = FUNC3(FUNC7(tp));
		ova = FUNC8(tp);
		if (m == om && va == ova) {
			FUNC4(pmap_nkenter_stupid);
			return;
		}
		FUNC6(&om->md.tte_list, tp, tte_link);
		FUNC12(om, ova);
		if (va != ova)
			FUNC14(kernel_pmap, ova);
	}
	data = TD_V | TD_8K | FUNC10(m) | TD_REF | TD_SW | TD_CP |
	    TD_P | TD_W;
	if (FUNC11(m, va) != 0)
		data |= TD_CV;
	tp->tte_vpn = FUNC9(va, TS_8K);
	tp->tte_data = data;
	FUNC5(&m->md.tte_list, tp, tte_link);
}