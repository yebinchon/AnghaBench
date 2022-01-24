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
typedef  unsigned int u32 ;
struct sge_params {unsigned int sge_control; int fl_starve_threshold; int fl_starve_threshold2; unsigned int page_shift; unsigned int* sge_fl_buffer_size; int spg_len; int pad_boundary; int pack_boundary; unsigned int eq_s_qpp; unsigned int iq_s_qpp; int /*<<< orphan*/  fl_pktshift; void** timer_val; int /*<<< orphan*/ * counter_val; } ;
struct TYPE_2__ {struct sge_params sge; } ;
struct adapter {TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_PL_VF_WHOAMI ; 
 scalar_t__ A_SGE_CONM_CTRL ; 
 scalar_t__ A_SGE_CONTROL ; 
 scalar_t__ A_SGE_CONTROL2 ; 
 scalar_t__ A_SGE_EGRESS_QUEUES_PER_PAGE_VF ; 
 scalar_t__ A_SGE_FL_BUFFER_SIZE0 ; 
 scalar_t__ A_SGE_HOST_PAGE_SIZE ; 
 scalar_t__ A_SGE_INGRESS_QUEUES_PER_PAGE_VF ; 
 scalar_t__ A_SGE_INGRESS_RX_THRESHOLD ; 
 scalar_t__ A_SGE_TIMER_VALUE_0_AND_1 ; 
 scalar_t__ A_SGE_TIMER_VALUE_2_AND_3 ; 
 scalar_t__ A_SGE_TIMER_VALUE_4_AND_5 ; 
 scalar_t__ CHELSIO_T5 ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,char*) ; 
 int /*<<< orphan*/  FW_PARAMS_MNEM_REG ; 
 int FW_SUCCESS ; 
 int F_EGRSTATUSPAGESIZE ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 int FUNC4 (unsigned int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 unsigned int FUNC7 (unsigned int) ; 
 int FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (unsigned int) ; 
 unsigned int M_HOSTPAGESIZEPF0 ; 
 unsigned int M_QUEUESPERPAGEPF0 ; 
 int SGE_FLBUF_SIZES ; 
 unsigned int S_HOSTPAGESIZEPF0 ; 
 unsigned int S_HOSTPAGESIZEPF1 ; 
 unsigned int S_QUEUESPERPAGEPF0 ; 
 unsigned int S_QUEUESPERPAGEPF1 ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC20 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC21 (scalar_t__) ; 
 int X_INGPADBOUNDARY_SHIFT ; 
 int X_T6_INGPADBOUNDARY_SHIFT ; 
 scalar_t__ FUNC22 (struct adapter*) ; 
 void* FUNC23 (struct adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (struct adapter*) ; 
 scalar_t__ FUNC25 (struct adapter*) ; 
 unsigned int FUNC26 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC27 (struct adapter*,int,unsigned int*,unsigned int*) ; 

int FUNC28(struct adapter *adapter)
{
	struct sge_params *sp = &adapter->params.sge;
	u32 params[7], vals[7];
	u32 whoami;
	unsigned int pf, s_hps;
	int i, v;

	params[0] = (FUNC20(FW_PARAMS_MNEM_REG) |
		     FUNC21(A_SGE_CONTROL));
	params[1] = (FUNC20(FW_PARAMS_MNEM_REG) |
		     FUNC21(A_SGE_HOST_PAGE_SIZE));
	params[2] = (FUNC20(FW_PARAMS_MNEM_REG) |
		     FUNC21(A_SGE_TIMER_VALUE_0_AND_1));
	params[3] = (FUNC20(FW_PARAMS_MNEM_REG) |
		     FUNC21(A_SGE_TIMER_VALUE_2_AND_3));
	params[4] = (FUNC20(FW_PARAMS_MNEM_REG) |
		     FUNC21(A_SGE_TIMER_VALUE_4_AND_5));
	params[5] = (FUNC20(FW_PARAMS_MNEM_REG) |
		     FUNC21(A_SGE_CONM_CTRL));
	params[6] = (FUNC20(FW_PARAMS_MNEM_REG) |
		     FUNC21(A_SGE_INGRESS_RX_THRESHOLD));
	v = FUNC27(adapter, 7, params, vals);
	if (v != FW_SUCCESS)
		return v;

	sp->sge_control = vals[0];
	sp->counter_val[0] = FUNC9(vals[6]);
	sp->counter_val[1] = FUNC10(vals[6]);
	sp->counter_val[2] = FUNC11(vals[6]);
	sp->counter_val[3] = FUNC12(vals[6]);
	sp->timer_val[0] = FUNC23(adapter, FUNC13(vals[2]));
	sp->timer_val[1] = FUNC23(adapter, FUNC14(vals[2]));
	sp->timer_val[2] = FUNC23(adapter, FUNC15(vals[3]));
	sp->timer_val[3] = FUNC23(adapter, FUNC16(vals[3]));
	sp->timer_val[4] = FUNC23(adapter, FUNC17(vals[4]));
	sp->timer_val[5] = FUNC23(adapter, FUNC18(vals[4]));

	sp->fl_starve_threshold = FUNC2(vals[5]) * 2 + 1;
	if (FUNC24(adapter))
		sp->fl_starve_threshold2 = sp->fl_starve_threshold;
	else if (FUNC25(adapter))
		sp->fl_starve_threshold2 = FUNC3(vals[5]) * 2 + 1;
	else
		sp->fl_starve_threshold2 = FUNC8(vals[5]) * 2 + 1;

	/*
	 * We need the Queues/Page and Host Page Size for our VF.
	 * This is based on the PF from which we're instantiated.
	 */
	whoami = FUNC26(adapter, FUNC19(A_PL_VF_WHOAMI));
	pf = FUNC7(whoami);

	s_hps = (S_HOSTPAGESIZEPF0 +
	    (S_HOSTPAGESIZEPF1 - S_HOSTPAGESIZEPF0) * pf);
	sp->page_shift = ((vals[1] >> s_hps) & M_HOSTPAGESIZEPF0) + 10;

	for (i = 0; i < SGE_FLBUF_SIZES; i++) {
		params[0] = (FUNC20(FW_PARAMS_MNEM_REG) |
		    FUNC21(A_SGE_FL_BUFFER_SIZE0 + (4 * i)));
		v = FUNC27(adapter, 1, params, vals);
		if (v != FW_SUCCESS)
			return v;

		sp->sge_fl_buffer_size[i] = vals[0];
	}

	/*
	 * T4 uses a single control field to specify both the PCIe Padding and
	 * Packing Boundary.  T5 introduced the ability to specify these
	 * separately with the Padding Boundary in SGE_CONTROL and and Packing
	 * Boundary in SGE_CONTROL2.  So for T5 and later we need to grab
	 * SGE_CONTROL in order to determine how ingress packet data will be
	 * laid out in Packed Buffer Mode.  Unfortunately, older versions of
	 * the firmware won't let us retrieve SGE_CONTROL2 so if we get a
	 * failure grabbing it we throw an error since we can't figure out the
	 * right value.
	 */
	sp->spg_len = sp->sge_control & F_EGRSTATUSPAGESIZE ? 128 : 64;
	sp->fl_pktshift = FUNC6(sp->sge_control);
	if (FUNC22(adapter) <= CHELSIO_T5) {
		sp->pad_boundary = 1 << (FUNC5(sp->sge_control) +
		    X_INGPADBOUNDARY_SHIFT);
	} else {
		sp->pad_boundary = 1 << (FUNC5(sp->sge_control) +
		    X_T6_INGPADBOUNDARY_SHIFT);
	}
	if (FUNC24(adapter))
		sp->pack_boundary = sp->pad_boundary;
	else {
		params[0] = (FUNC20(FW_PARAMS_MNEM_REG) |
			     FUNC21(A_SGE_CONTROL2));
		v = FUNC27(adapter, 1, params, vals);
		if (v != FW_SUCCESS) {
			FUNC0(adapter, "Unable to get SGE Control2; "
			       "probably old firmware.\n");
			return v;
		}
		if (FUNC4(vals[0]) == 0)
			sp->pack_boundary = 16;
		else
			sp->pack_boundary = 1 << (FUNC4(vals[0]) +
			    5);
	}

	/*
	 * For T5 and later we want to use the new BAR2 Doorbells.
	 * Unfortunately, older firmware didn't allow the this register to be
	 * read.
	 */
	if (!FUNC24(adapter)) {
		unsigned int s_qpp;

		params[0] = (FUNC20(FW_PARAMS_MNEM_REG) |
			     FUNC21(A_SGE_EGRESS_QUEUES_PER_PAGE_VF));
		params[1] = (FUNC20(FW_PARAMS_MNEM_REG) |
			     FUNC21(A_SGE_INGRESS_QUEUES_PER_PAGE_VF));
		v = FUNC27(adapter, 2, params, vals);
		if (v != FW_SUCCESS) {
			FUNC1(adapter, "Unable to get VF SGE Queues/Page; "
				"probably old firmware.\n");
			return v;
		}

		s_qpp = (S_QUEUESPERPAGEPF0 +
			 (S_QUEUESPERPAGEPF1 - S_QUEUESPERPAGEPF0) * pf);
		sp->eq_s_qpp = ((vals[0] >> s_qpp) & M_QUEUESPERPAGEPF0);
		sp->iq_s_qpp = ((vals[1] >> s_qpp) & M_QUEUESPERPAGEPF0);
	}

	return 0;
}