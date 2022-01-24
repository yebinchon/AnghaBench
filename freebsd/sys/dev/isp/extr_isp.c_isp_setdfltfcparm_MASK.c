#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_15__ {int isp_confopts; } ;
typedef  TYPE_1__ ispsoftc_t ;
struct TYPE_16__ {size_t role; int isp_wwnn; int isp_wwpn; int /*<<< orphan*/  isp_zfwoptions; int /*<<< orphan*/  isp_xfwoptions; int /*<<< orphan*/  isp_fwoptions; void* isp_login_hdl; void* isp_lasthdl; int /*<<< orphan*/  isp_wwpn_nvram; int /*<<< orphan*/  isp_wwnn_nvram; int /*<<< orphan*/  isp_loopid; int /*<<< orphan*/  isp_retry_count; int /*<<< orphan*/  isp_retry_delay; int /*<<< orphan*/  isp_maxalloc; } ;
typedef  TYPE_2__ fcparam ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int) ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 size_t FUNC5 (TYPE_1__*,int) ; 
 TYPE_2__* FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  ICB2400_OPT1_BOTH_WWNS ; 
 int /*<<< orphan*/  ICB2400_OPT1_FAIRNESS ; 
 int /*<<< orphan*/  ICB2400_OPT1_FULL_DUPLEX ; 
 int /*<<< orphan*/  ICB2400_OPT1_HARD_ADDRESS ; 
 int /*<<< orphan*/  ICB2400_OPT2_LOOP_2_PTP ; 
 int /*<<< orphan*/  ICB2400_OPT3_RATE_AUTO ; 
 int /*<<< orphan*/  ICBOPT_EXTENDED ; 
 int /*<<< orphan*/  ICBOPT_FAIRNESS ; 
 int /*<<< orphan*/  ICBOPT_FULL_DUPLEX ; 
 int /*<<< orphan*/  ICBOPT_HARD_ADDRESS ; 
 int /*<<< orphan*/  ICBOPT_PDBCHANGE_AE ; 
 int /*<<< orphan*/  ICBXOPT_LOOP_2_PTP ; 
 int /*<<< orphan*/  ICBZOPT_RATE_AUTO ; 
 int /*<<< orphan*/  ICB_DFLT_ALLOC ; 
 int /*<<< orphan*/  ICB_DFLT_RCOUNT ; 
 int /*<<< orphan*/  ICB_DFLT_RDELAY ; 
 int ISP_CFG_FULL_DUPLEX ; 
 int ISP_CFG_NONVRAM ; 
 int /*<<< orphan*/  ISP_LOGCONFIG ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 void* NIL_HANDLE ; 
 int /*<<< orphan*/ * isp_class3_roles ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC10(ispsoftc_t *isp, int chan)
{
	fcparam *fcp = FUNC6(isp, chan);

	/*
	 * Establish some default parameters.
	 */
	fcp->role = FUNC5(isp, chan);
	fcp->isp_maxalloc = ICB_DFLT_ALLOC;
	fcp->isp_retry_delay = ICB_DFLT_RDELAY;
	fcp->isp_retry_count = ICB_DFLT_RCOUNT;
	fcp->isp_loopid = FUNC2(isp, chan);
	fcp->isp_wwnn_nvram = FUNC3(isp, chan);
	fcp->isp_wwpn_nvram = FUNC4(isp, chan);
	fcp->isp_fwoptions = 0;
	fcp->isp_xfwoptions = 0;
	fcp->isp_zfwoptions = 0;
	fcp->isp_lasthdl = NIL_HANDLE;
	fcp->isp_login_hdl = NIL_HANDLE;

	if (FUNC7(isp)) {
		fcp->isp_fwoptions |= ICB2400_OPT1_FAIRNESS;
		fcp->isp_fwoptions |= ICB2400_OPT1_HARD_ADDRESS;
		if (isp->isp_confopts & ISP_CFG_FULL_DUPLEX)
			fcp->isp_fwoptions |= ICB2400_OPT1_FULL_DUPLEX;
		fcp->isp_fwoptions |= ICB2400_OPT1_BOTH_WWNS;
		fcp->isp_xfwoptions |= ICB2400_OPT2_LOOP_2_PTP;
		fcp->isp_zfwoptions |= ICB2400_OPT3_RATE_AUTO;
	} else {
		fcp->isp_fwoptions |= ICBOPT_FAIRNESS;
		fcp->isp_fwoptions |= ICBOPT_PDBCHANGE_AE;
		fcp->isp_fwoptions |= ICBOPT_HARD_ADDRESS;
		if (isp->isp_confopts & ISP_CFG_FULL_DUPLEX)
			fcp->isp_fwoptions |= ICBOPT_FULL_DUPLEX;
		/*
		 * Make sure this is turned off now until we get
		 * extended options from NVRAM
		 */
		fcp->isp_fwoptions &= ~ICBOPT_EXTENDED;
		fcp->isp_xfwoptions |= ICBXOPT_LOOP_2_PTP;
		fcp->isp_zfwoptions |= ICBZOPT_RATE_AUTO;
	}


	/*
	 * Now try and read NVRAM unless told to not do so.
	 * This will set fcparam's isp_wwnn_nvram && isp_wwpn_nvram.
	 */
	if ((isp->isp_confopts & ISP_CFG_NONVRAM) == 0) {
		int i, j = 0;
		/*
		 * Give a couple of tries at reading NVRAM.
		 */
		for (i = 0; i < 2; i++) {
			j = FUNC9(isp, chan);
			if (j == 0) {
				break;
			}
		}
		if (j) {
			isp->isp_confopts |= ISP_CFG_NONVRAM;
		}
	}

	fcp->isp_wwnn = FUNC0(isp, chan);
	fcp->isp_wwpn = FUNC1(isp, chan);
	FUNC8(isp, ISP_LOGCONFIG, "Chan %d 0x%08x%08x/0x%08x%08x Role %s",
	    chan, (uint32_t) (fcp->isp_wwnn >> 32), (uint32_t) (fcp->isp_wwnn),
	    (uint32_t) (fcp->isp_wwpn >> 32), (uint32_t) (fcp->isp_wwpn),
	    isp_class3_roles[fcp->role]);
}