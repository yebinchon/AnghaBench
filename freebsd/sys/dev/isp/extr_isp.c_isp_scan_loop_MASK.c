#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  ispsoftc_t ;
typedef  int /*<<< orphan*/  isp_pdb_t ;
struct TYPE_3__ {scalar_t__ isp_loopstate; scalar_t__ isp_scanscratch; int /*<<< orphan*/  isp_topo; } ;
typedef  TYPE_1__ fcparam ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FL_ID ; 
 scalar_t__ INI_NONE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int ISP_FC_SCRLEN ; 
 int /*<<< orphan*/  ISP_LOGDEBUG1 ; 
 int /*<<< orphan*/  ISP_LOG_SANCFG ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ LOOP_LSCAN_DONE ; 
 scalar_t__ LOOP_LTEST_DONE ; 
 scalar_t__ LOOP_SCANNING_LOOP ; 
 int /*<<< orphan*/  NPH_RESERVED ; 
 int /*<<< orphan*/  SNS_ID ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int*,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,...) ; 

__attribute__((used)) static int
FUNC13(ispsoftc_t *isp, int chan)
{
	fcparam *fcp = FUNC0(isp, chan);
	int idx, lim, r;
	isp_pdb_t pdb;
	uint16_t *handles;
	uint16_t handle;

	if (fcp->isp_loopstate < LOOP_LTEST_DONE)
		return (-1);
	if (fcp->isp_loopstate >= LOOP_LSCAN_DONE)
		return (0);

	FUNC12(isp, ISP_LOG_SANCFG, "Chan %d FC loop scan", chan);
	fcp->isp_loopstate = LOOP_SCANNING_LOOP;
	if (FUNC5(fcp->isp_topo)) {
		if (!FUNC4(isp)) {
			FUNC6(isp, chan);
			if (fcp->isp_loopstate < LOOP_SCANNING_LOOP)
				goto abort;
		}
		FUNC12(isp, ISP_LOG_SANCFG,
		    "Chan %d FC loop scan done (no loop)", chan);
		fcp->isp_loopstate = LOOP_LSCAN_DONE;
		return (0);
	}

	handles = (uint16_t *)fcp->isp_scanscratch;
	lim = ISP_FC_SCRLEN / 2;
	r = FUNC8(isp, chan, handles, &lim, 1);
	if (r != 0) {
		FUNC12(isp, ISP_LOG_SANCFG,
		    "Chan %d Getting list of handles failed with %x", chan, r);
		FUNC12(isp, ISP_LOG_SANCFG,
		    "Chan %d FC loop scan done (bad)", chan);
		return (-1);
	}

	FUNC12(isp, ISP_LOG_SANCFG, "Chan %d Got %d handles",
	    chan, lim);

	/*
	 * Run through the list and get the port database info for each one.
	 */
	FUNC10(isp, chan);
	for (idx = 0; idx < lim; idx++) {
		handle = handles[idx];

		/*
		 * Don't scan "special" ids.
		 */
		if (FUNC1(isp)) {
			if (handle >= NPH_RESERVED)
				continue;
		} else {
			if (handle >= FL_ID && handle <= SNS_ID)
				continue;
		}

		/*
		 * In older cards with older f/w GET_PORT_DATABASE has been
		 * known to hang. This trick gets around that problem.
		 */
		if (FUNC2(isp) || FUNC3(isp)) {
			uint64_t node_wwn = FUNC7(isp, chan, handle, 1);
			if (fcp->isp_loopstate < LOOP_SCANNING_LOOP) {
abort:
				FUNC12(isp, ISP_LOG_SANCFG,
				    "Chan %d FC loop scan aborted", chan);
				return (1);
			}
			if (node_wwn == INI_NONE) {
				continue;
			}
		}

		/*
		 * Get the port database entity for this index.
		 */
		r = FUNC9(isp, chan, handle, &pdb);
		if (fcp->isp_loopstate < LOOP_SCANNING_LOOP)
			goto abort;
		if (r != 0) {
			FUNC12(isp, ISP_LOGDEBUG1,
			    "Chan %d FC Scan Loop handle %d returned %x",
			    chan, handle, r);
			continue;
		}

		FUNC11(isp, chan, &pdb);
	}
	if (fcp->isp_loopstate < LOOP_SCANNING_LOOP)
		goto abort;
	fcp->isp_loopstate = LOOP_LSCAN_DONE;
	FUNC12(isp, ISP_LOG_SANCFG, "Chan %d FC loop scan done", chan);
	return (0);
}