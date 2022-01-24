#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_14__ ;

/* Type definitions */
typedef  TYPE_3__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int u_long ;
struct tte {int tte_data; int /*<<< orphan*/  tte_vpn; } ;
typedef  TYPE_4__* pmap_t ;
struct TYPE_16__ {int /*<<< orphan*/  resident_count; } ;
struct TYPE_19__ {TYPE_1__ pm_stats; } ;
struct TYPE_17__ {int /*<<< orphan*/  tte_list; } ;
struct TYPE_18__ {int flags; int oflags; TYPE_2__ md; int /*<<< orphan*/  pindex; TYPE_14__* object; } ;
struct TYPE_15__ {int type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_14__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  KTR_SPARE2 ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int PG_FICTITIOUS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RA_WLOCKED ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct tte*,int /*<<< orphan*/ ) ; 
 int TD_CP ; 
 int TD_CV ; 
 int TD_E ; 
 int TD_FAKE ; 
 int TD_PV ; 
 int TD_REF ; 
 int TD_V ; 
 int TSB_BUCKET_SIZE ; 
 int /*<<< orphan*/  FUNC6 (struct tte*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int VPO_UNMANAGED ; 
 TYPE_4__* kernel_pmap ; 
 scalar_t__ FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ *,struct tte*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tick ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 struct tte* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tsb_nenter_k ; 
 int /*<<< orphan*/  tsb_nenter_k_oc ; 
 int /*<<< orphan*/  tsb_nenter_u ; 
 int /*<<< orphan*/  tsb_nenter_u_oc ; 
 int /*<<< orphan*/  tsb_nrepl ; 
 struct tte* FUNC15 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tte_link ; 
 int /*<<< orphan*/  tte_list_global_lock ; 

struct tte *
FUNC16(pmap_t pm, vm_page_t m, vm_offset_t va, u_long sz, u_long data)
{
	struct tte *bucket;
	struct tte *rtp;
	struct tte *tp;
	vm_offset_t ova;
	int b0;
	int i;

	if (FUNC1(FUNC8(m)) != FUNC1(va)) {
		FUNC0(KTR_SPARE2,
	"tsb_tte_enter: off colour va=%#lx pa=%#lx o=%p ot=%d pi=%#lx",
		    va, FUNC8(m), m->object,
		    m->object ? m->object->type : -1,
		    m->pindex);
		if (pm == kernel_pmap)
			FUNC4(tsb_nenter_k_oc);
		else
			FUNC4(tsb_nenter_u_oc);
	}

	FUNC12(&tte_list_global_lock, RA_WLOCKED);
	FUNC3(pm, MA_OWNED);
	if (pm == kernel_pmap) {
		FUNC4(tsb_nenter_k);
		tp = FUNC14(va);
		FUNC2((tp->tte_data & TD_V) == 0,
		    ("tsb_tte_enter: replacing valid kernel mapping"));
		goto enter;
	}
	FUNC4(tsb_nenter_u);

	bucket = FUNC15(pm, sz, va);

	tp = NULL;
	rtp = NULL;
	b0 = FUNC11(tick) & (TSB_BUCKET_SIZE - 1);
	i = b0;
	do {
		if ((bucket[i].tte_data & TD_V) == 0) {
			tp = &bucket[i];
			break;
		}
		if (tp == NULL) {
			if ((bucket[i].tte_data & TD_REF) == 0)
				tp = &bucket[i];
			else if (rtp == NULL)
				rtp = &bucket[i];
		}
	} while ((i = (i + 1) & (TSB_BUCKET_SIZE - 1)) != b0);

	if (tp == NULL)
		tp = rtp;
	if ((tp->tte_data & TD_V) != 0) {
		FUNC4(tsb_nrepl);
		ova = FUNC6(tp);
		FUNC10(pm, NULL, tp, ova);
		FUNC13(pm, ova);
	}

enter:
	if ((m->flags & PG_FICTITIOUS) == 0) {
		data |= TD_CP;
		if ((m->oflags & VPO_UNMANAGED) == 0) {
			pm->pm_stats.resident_count++;
			data |= TD_PV;
		}
		if (FUNC9(m, va) != 0)
			data |= TD_CV;
		FUNC5(&m->md.tte_list, tp, tte_link);
	} else
		data |= TD_FAKE | TD_E;

	tp->tte_vpn = FUNC7(va, sz);
	tp->tte_data = data;

	return (tp);
}