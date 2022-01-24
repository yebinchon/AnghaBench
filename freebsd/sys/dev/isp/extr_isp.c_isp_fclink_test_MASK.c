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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_9__ {int* param; } ;
typedef  TYPE_1__ mbreg_t ;
typedef  int /*<<< orphan*/  ispsoftc_t ;
struct TYPE_10__ {scalar_t__ portid; } ;
typedef  TYPE_2__ isp_pdb_t ;
struct TYPE_11__ {scalar_t__ isp_loopstate; scalar_t__ isp_fwstate; int isp_topo; int isp_portid; int isp_loopid; int isp_fabric_params; scalar_t__ role; int isp_gbspeed; scalar_t__ isp_wwnn; scalar_t__ isp_wwpn; int /*<<< orphan*/  isp_sns_hdl; } ;
typedef  TYPE_3__ fcparam ;
typedef  int /*<<< orphan*/  NANOTIME_T ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FL_ID ; 
 scalar_t__ FW_READY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int,int) ; 
 int ISP_LOGCONFIG ; 
 int ISP_LOGWARN ; 
 int ISP_LOG_SANCFG ; 
 scalar_t__ ISP_ROLE_TARGET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ LOOP_HAVE_ADDR ; 
 scalar_t__ LOOP_HAVE_LINK ; 
 scalar_t__ LOOP_LTEST_DONE ; 
 scalar_t__ LOOP_TESTING_LINK ; 
 int MBGSD_10GB ; 
 int MBGSD_16GB ; 
 int MBGSD_1GB ; 
 int MBGSD_2GB ; 
 int MBGSD_32GB ; 
 int MBGSD_4GB ; 
 int MBGSD_8GB ; 
 int MBGSD_GET_RATE ; 
 int /*<<< orphan*/  MBLOGALL ; 
 int MBOX_COMMAND_COMPLETE ; 
 int /*<<< orphan*/  MBOX_GET_LOOP_ID ; 
 int /*<<< orphan*/  MBOX_GET_SET_DATA_RATE ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NPH_FL_ID ; 
 int /*<<< orphan*/  NPH_SNS_ID ; 
 int /*<<< orphan*/  SNS_ID ; 
 int TOPO_FL_PORT ; 
 int TOPO_F_PORT ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int TOPO_NL_PORT ; 
 int TOPO_PTP_STUB ; 
 scalar_t__* alpa_map ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int FUNC14 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,char*,int,...) ; 
 int FUNC17 (int /*<<< orphan*/ *,int) ; 
 int FUNC18 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int) ; 
 int FUNC20 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC22(ispsoftc_t *isp, int chan, int usdelay)
{
	mbreg_t mbs;
	int i, r;
	uint16_t nphdl;
	fcparam *fcp;
	isp_pdb_t pdb;
	NANOTIME_T hra, hrb;

	fcp = FUNC0(isp, chan);

	if (fcp->isp_loopstate < LOOP_HAVE_LINK)
		return (-1);
	if (fcp->isp_loopstate >= LOOP_LTEST_DONE)
		return (0);

	FUNC16(isp, ISP_LOG_SANCFG, "Chan %d FC link test", chan);

	/*
	 * Wait up to N microseconds for F/W to go to a ready state.
	 */
	FUNC1(&hra);
	while (1) {
		FUNC10(isp, chan, FUNC13(isp, chan));
		if (fcp->isp_fwstate == FW_READY) {
			break;
		}
		if (fcp->isp_loopstate < LOOP_HAVE_LINK)
			goto abort;
		FUNC1(&hrb);
		if ((FUNC8(&hrb, &hra) / 1000 + 1000 >= usdelay))
			break;
		FUNC3(isp, 1000);
	}
	if (fcp->isp_fwstate != FW_READY) {
		FUNC16(isp, ISP_LOG_SANCFG,
		    "Chan %d Firmware is not ready (%s)",
		    chan, FUNC11(fcp->isp_fwstate));
		return (-1);
	}

	/*
	 * Get our Loop ID and Port ID.
	 */
	FUNC7(&mbs, MBOX_GET_LOOP_ID, MBLOGALL, 0);
	mbs.param[9] = chan;
	FUNC15(isp, &mbs);
	if (mbs.param[0] != MBOX_COMMAND_COMPLETE) {
		return (-1);
	}

	if (FUNC4(isp)) {
		/*
		 * Don't bother with fabric if we are using really old
		 * 2100 firmware. It's just not worth it.
		 */
		if (FUNC2(isp, 1, 15, 37))
			fcp->isp_topo = TOPO_FL_PORT;
		else
			fcp->isp_topo = TOPO_NL_PORT;
	} else {
		int topo = (int) mbs.param[6];
		if (topo < TOPO_NL_PORT || topo > TOPO_PTP_STUB) {
			topo = TOPO_PTP_STUB;
		}
		fcp->isp_topo = topo;
	}
	fcp->isp_portid = mbs.param[2] | (mbs.param[3] << 16);

	if (!FUNC9(fcp->isp_topo)) {
		fcp->isp_loopid = mbs.param[1] & 0xff;
	} else if (fcp->isp_topo != TOPO_F_PORT) {
		uint8_t alpa = fcp->isp_portid;

		for (i = 0; alpa_map[i]; i++) {
			if (alpa_map[i] == alpa)
				break;
		}
		if (alpa_map[i])
			fcp->isp_loopid = i;
	}

#if 0
	fcp->isp_loopstate = LOOP_HAVE_ADDR;
#endif
	fcp->isp_loopstate = LOOP_TESTING_LINK;

	if (fcp->isp_topo == TOPO_F_PORT || fcp->isp_topo == TOPO_FL_PORT) {
		nphdl = FUNC6(isp) ? NPH_FL_ID : FL_ID;
		r = FUNC14(isp, chan, nphdl, &pdb);
		if (r != 0 || pdb.portid == 0) {
			if (FUNC4(isp)) {
				fcp->isp_topo = TOPO_NL_PORT;
			} else {
				FUNC16(isp, ISP_LOGWARN,
				    "fabric topology, but cannot get info about fabric controller (0x%x)", r);
				fcp->isp_topo = TOPO_PTP_STUB;
			}
			goto not_on_fabric;
		}

		if (FUNC6(isp)) {
			fcp->isp_fabric_params = mbs.param[7];
			fcp->isp_sns_hdl = NPH_SNS_ID;
			r = FUNC18(isp, chan);
			if (fcp->isp_loopstate < LOOP_TESTING_LINK)
				goto abort;
			if (r != 0)
				goto not_on_fabric;
			r = FUNC17(isp, chan);
			if (fcp->isp_loopstate < LOOP_TESTING_LINK)
				goto abort;
			if (r != 0)
				goto not_on_fabric;
			r = FUNC20(isp, chan);
			if (fcp->isp_loopstate < LOOP_TESTING_LINK)
				goto abort;
			if (r != 0)
				goto not_on_fabric;
			FUNC19(isp, chan);
			if (fcp->isp_loopstate < LOOP_TESTING_LINK)
				goto abort;
		} else {
			fcp->isp_sns_hdl = SNS_ID;
			r = FUNC18(isp, chan);
			if (r != 0)
				goto not_on_fabric;
			if (fcp->role == ISP_ROLE_TARGET)
				FUNC21(isp, chan);
		}
	}

not_on_fabric:
	/* Get link speed. */
	fcp->isp_gbspeed = 1;
	if (FUNC5(isp) || FUNC6(isp)) {
		FUNC7(&mbs, MBOX_GET_SET_DATA_RATE, MBLOGALL, 3000000);
		mbs.param[1] = MBGSD_GET_RATE;
		/* mbs.param[2] undefined if we're just getting rate */
		FUNC15(isp, &mbs);
		if (mbs.param[0] == MBOX_COMMAND_COMPLETE) {
			if (mbs.param[1] == MBGSD_10GB)
				fcp->isp_gbspeed = 10;
			else if (mbs.param[1] == MBGSD_32GB)
				fcp->isp_gbspeed = 32;
			else if (mbs.param[1] == MBGSD_16GB)
				fcp->isp_gbspeed = 16;
			else if (mbs.param[1] == MBGSD_8GB)
				fcp->isp_gbspeed = 8;
			else if (mbs.param[1] == MBGSD_4GB)
				fcp->isp_gbspeed = 4;
			else if (mbs.param[1] == MBGSD_2GB)
				fcp->isp_gbspeed = 2;
			else if (mbs.param[1] == MBGSD_1GB)
				fcp->isp_gbspeed = 1;
		}
	}

	if (fcp->isp_loopstate < LOOP_TESTING_LINK) {
abort:
		FUNC16(isp, ISP_LOG_SANCFG,
		    "Chan %d FC link test aborted", chan);
		return (1);
	}
	fcp->isp_loopstate = LOOP_LTEST_DONE;
	FUNC16(isp, ISP_LOG_SANCFG|ISP_LOGCONFIG,
	    "Chan %d WWPN %016jx WWNN %016jx",
	    chan, (uintmax_t)fcp->isp_wwpn, (uintmax_t)fcp->isp_wwnn);
	FUNC16(isp, ISP_LOG_SANCFG|ISP_LOGCONFIG,
	    "Chan %d %dGb %s PortID 0x%06x LoopID 0x%02x",
	    chan, fcp->isp_gbspeed, FUNC12(fcp), fcp->isp_portid,
	    fcp->isp_loopid);
	FUNC16(isp, ISP_LOG_SANCFG, "Chan %d FC link test done", chan);
	return (0);
}