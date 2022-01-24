#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sge_params {unsigned int* timer_val; int fl_starve_threshold; int fl_starve_threshold2; int eq_s_qpp; int iq_s_qpp; int page_shift; int sge_control; int spg_len; int pad_boundary; int pack_boundary; void** sge_fl_buffer_size; int /*<<< orphan*/  fl_pktshift; int /*<<< orphan*/ * counter_val; } ;
struct TYPE_2__ {struct sge_params sge; } ;
struct adapter {int pf; TYPE_1__ params; } ;

/* Variables and functions */
 scalar_t__ A_SGE_CONM_CTRL ; 
 scalar_t__ A_SGE_CONTROL ; 
 scalar_t__ A_SGE_CONTROL2 ; 
 scalar_t__ A_SGE_EGRESS_QUEUES_PER_PAGE_PF ; 
 scalar_t__ A_SGE_FL_BUFFER_SIZE0 ; 
 scalar_t__ A_SGE_HOST_PAGE_SIZE ; 
 scalar_t__ A_SGE_INGRESS_QUEUES_PER_PAGE_PF ; 
 scalar_t__ A_SGE_INGRESS_RX_THRESHOLD ; 
 scalar_t__ A_SGE_ITP_CONTROL ; 
 scalar_t__ A_SGE_TIMER_VALUE_0_AND_1 ; 
 scalar_t__ A_SGE_TIMER_VALUE_2_AND_3 ; 
 scalar_t__ A_SGE_TIMER_VALUE_4_AND_5 ; 
 scalar_t__ CHELSIO_T5 ; 
 scalar_t__ CHELSIO_T6 ; 
 int F_EGRSTATUSPAGESIZE ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 unsigned int FUNC16 (int) ; 
 int M_HOSTPAGESIZEPF0 ; 
 int M_QUEUESPERPAGEPF0 ; 
 unsigned int SGE_FLBUF_SIZES ; 
 int S_HOSTPAGESIZEPF0 ; 
 int S_HOSTPAGESIZEPF1 ; 
 int S_QUEUESPERPAGEPF0 ; 
 int S_QUEUESPERPAGEPF1 ; 
 int X_INGPADBOUNDARY_SHIFT ; 
 int X_T6_INGPADBOUNDARY_SHIFT ; 
 scalar_t__ FUNC17 (struct adapter*) ; 
 unsigned int FUNC18 (struct adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (struct adapter*) ; 
 scalar_t__ FUNC20 (struct adapter*) ; 
 void* FUNC21 (struct adapter*,scalar_t__) ; 

int FUNC22(struct adapter *adapter)
{
	u32 r;
	struct sge_params *sp = &adapter->params.sge;
	unsigned i, tscale = 1;

	r = FUNC21(adapter, A_SGE_INGRESS_RX_THRESHOLD);
	sp->counter_val[0] = FUNC6(r);
	sp->counter_val[1] = FUNC7(r);
	sp->counter_val[2] = FUNC8(r);
	sp->counter_val[3] = FUNC9(r);

	if (FUNC17(adapter) >= CHELSIO_T6) {
		r = FUNC21(adapter, A_SGE_ITP_CONTROL);
		tscale = FUNC16(r);
		if (tscale == 0)
			tscale = 1;
		else
			tscale += 2;
	}

	r = FUNC21(adapter, A_SGE_TIMER_VALUE_0_AND_1);
	sp->timer_val[0] = FUNC18(adapter, FUNC10(r)) * tscale;
	sp->timer_val[1] = FUNC18(adapter, FUNC11(r)) * tscale;
	r = FUNC21(adapter, A_SGE_TIMER_VALUE_2_AND_3);
	sp->timer_val[2] = FUNC18(adapter, FUNC12(r)) * tscale;
	sp->timer_val[3] = FUNC18(adapter, FUNC13(r)) * tscale;
	r = FUNC21(adapter, A_SGE_TIMER_VALUE_4_AND_5);
	sp->timer_val[4] = FUNC18(adapter, FUNC14(r)) * tscale;
	sp->timer_val[5] = FUNC18(adapter, FUNC15(r)) * tscale;

	r = FUNC21(adapter, A_SGE_CONM_CTRL);
	sp->fl_starve_threshold = FUNC0(r) * 2 + 1;
	if (FUNC19(adapter))
		sp->fl_starve_threshold2 = sp->fl_starve_threshold;
	else if (FUNC20(adapter))
		sp->fl_starve_threshold2 = FUNC1(r) * 2 + 1;
	else
		sp->fl_starve_threshold2 = FUNC5(r) * 2 + 1;

	/* egress queues: log2 of # of doorbells per BAR2 page */
	r = FUNC21(adapter, A_SGE_EGRESS_QUEUES_PER_PAGE_PF);
	r >>= S_QUEUESPERPAGEPF0 +
	    (S_QUEUESPERPAGEPF1 - S_QUEUESPERPAGEPF0) * adapter->pf;
	sp->eq_s_qpp = r & M_QUEUESPERPAGEPF0;

	/* ingress queues: log2 of # of doorbells per BAR2 page */
	r = FUNC21(adapter, A_SGE_INGRESS_QUEUES_PER_PAGE_PF);
	r >>= S_QUEUESPERPAGEPF0 +
	    (S_QUEUESPERPAGEPF1 - S_QUEUESPERPAGEPF0) * adapter->pf;
	sp->iq_s_qpp = r & M_QUEUESPERPAGEPF0;

	r = FUNC21(adapter, A_SGE_HOST_PAGE_SIZE);
	r >>= S_HOSTPAGESIZEPF0 +
	    (S_HOSTPAGESIZEPF1 - S_HOSTPAGESIZEPF0) * adapter->pf;
	sp->page_shift = (r & M_HOSTPAGESIZEPF0) + 10;

	r = FUNC21(adapter, A_SGE_CONTROL);
	sp->sge_control = r;
	sp->spg_len = r & F_EGRSTATUSPAGESIZE ? 128 : 64;
	sp->fl_pktshift = FUNC4(r);
	if (FUNC17(adapter) <= CHELSIO_T5) {
		sp->pad_boundary = 1 << (FUNC3(r) +
		    X_INGPADBOUNDARY_SHIFT);
	} else {
		sp->pad_boundary = 1 << (FUNC3(r) +
		    X_T6_INGPADBOUNDARY_SHIFT);
	}
	if (FUNC19(adapter))
		sp->pack_boundary = sp->pad_boundary;
	else {
		r = FUNC21(adapter, A_SGE_CONTROL2);
		if (FUNC2(r) == 0)
			sp->pack_boundary = 16;
		else
			sp->pack_boundary = 1 << (FUNC2(r) + 5);
	}
	for (i = 0; i < SGE_FLBUF_SIZES; i++)
		sp->sge_fl_buffer_size[i] = FUNC21(adapter,
		    A_SGE_FL_BUFFER_SIZE0 + (4 * i));

	return 0;
}