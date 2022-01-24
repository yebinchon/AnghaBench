#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_9__ {scalar_t__ ct_cmd_resp; int ct_reason; int ct_explanation; } ;
struct TYPE_11__ {TYPE_2__* snscb_ports; TYPE_1__ snscb_cthdr; } ;
typedef  TYPE_3__ sns_gid_xx_rsp_t ;
typedef  int /*<<< orphan*/  ispsoftc_t ;
typedef  int /*<<< orphan*/  isp_pdb_t ;
struct TYPE_12__ {scalar_t__ state; int /*<<< orphan*/  handle; int /*<<< orphan*/  portid; int /*<<< orphan*/  probational; } ;
typedef  TYPE_4__ fcportdb_t ;
struct TYPE_13__ {scalar_t__ isp_loopstate; int isp_portid; int role; int /*<<< orphan*/  isp_lasthdl; scalar_t__ isp_scanscratch; int /*<<< orphan*/  isp_topo; } ;
typedef  TYPE_5__ fcparam ;
struct TYPE_10__ {int control; int* portid; } ;

/* Variables and functions */
 TYPE_5__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FC_PORTDB_STATE_DEAD ; 
 scalar_t__ FC_PORTDB_STATE_ZOMBIE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FL_ID ; 
 int /*<<< orphan*/  ISP_LOGERR ; 
 int ISP_LOGWARN ; 
 int ISP_LOG_SANCFG ; 
 int ISP_ROLE_INITIATOR ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ LOOP_FSCAN_DONE ; 
 scalar_t__ LOOP_LSCAN_DONE ; 
 void* LOOP_LTEST_DONE ; 
 scalar_t__ LOOP_SCANNING_FABRIC ; 
 scalar_t__ LS_ACC ; 
 int MBOX_NOT_LOGGED_IN ; 
 int NGENT ; 
 int /*<<< orphan*/  NPH_FL_ID ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int,int,TYPE_4__**) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int,char*,...) ; 

__attribute__((used)) static int
FUNC16(ispsoftc_t *isp, int chan)
{
	fcparam *fcp = FUNC0(isp, chan);
	fcportdb_t *lp;
	uint32_t portid;
	uint16_t nphdl;
	isp_pdb_t pdb;
	int portidx, portlim, r;
	sns_gid_xx_rsp_t *rs;

	if (fcp->isp_loopstate < LOOP_LSCAN_DONE)
		return (-1);
	if (fcp->isp_loopstate >= LOOP_FSCAN_DONE)
		return (0);

	FUNC15(isp, ISP_LOG_SANCFG, "Chan %d FC fabric scan", chan);
	fcp->isp_loopstate = LOOP_SCANNING_FABRIC;
	if (!FUNC4(fcp->isp_topo)) {
		fcp->isp_loopstate = LOOP_FSCAN_DONE;
		FUNC15(isp, ISP_LOG_SANCFG,
		    "Chan %d FC fabric scan done (no fabric)", chan);
		return (0);
	}

	if (fcp->isp_loopstate < LOOP_SCANNING_FABRIC) {
abort:
		FUNC2(isp, chan);
		FUNC15(isp, ISP_LOG_SANCFG,
		    "Chan %d FC fabric scan aborted", chan);
		return (1);
	}

	/*
	 * Make sure we still are logged into the fabric controller.
	 */
	nphdl = FUNC3(isp) ? NPH_FL_ID : FL_ID;
	r = FUNC8(isp, chan, nphdl, &pdb);
	if ((r & 0xffff) == MBOX_NOT_LOGGED_IN) {
		FUNC5(isp, chan);
	}
	if (r) {
		fcp->isp_loopstate = LOOP_LTEST_DONE;
fail:
		FUNC15(isp, ISP_LOG_SANCFG,
		    "Chan %d FC fabric scan done (bad)", chan);
		return (-1);
	}

	/* Get list of port IDs from SNS. */
	r = FUNC11(isp, chan);
	if (fcp->isp_loopstate < LOOP_SCANNING_FABRIC)
		goto abort;
	if (r > 0) {
		fcp->isp_loopstate = LOOP_FSCAN_DONE;
		return (-1);
	} else if (r < 0) {
		fcp->isp_loopstate = LOOP_LTEST_DONE;	/* try again */
		return (-1);
	}

	rs = (sns_gid_xx_rsp_t *) fcp->isp_scanscratch;
	if (fcp->isp_loopstate < LOOP_SCANNING_FABRIC)
		goto abort;
	if (rs->snscb_cthdr.ct_cmd_resp != LS_ACC) {
		int level;
		/* FC-4 Type and Port Type not registered are not errors. */
		if (rs->snscb_cthdr.ct_reason == 9 &&
		    (rs->snscb_cthdr.ct_explanation == 0x07 ||
		     rs->snscb_cthdr.ct_explanation == 0x0a)) {
			level = ISP_LOG_SANCFG;
		} else {
			level = ISP_LOGWARN;
		}
		FUNC15(isp, level, "Chan %d Fabric Nameserver rejected GID_PT"
		    " (Reason=0x%x Expl=0x%x)", chan,
		    rs->snscb_cthdr.ct_reason,
		    rs->snscb_cthdr.ct_explanation);
		fcp->isp_loopstate = LOOP_FSCAN_DONE;
		return (-1);
	}

	/* Check our buffer was big enough to get the full list. */
	for (portidx = 0; portidx < NGENT-1; portidx++) {
		if (rs->snscb_ports[portidx].control & 0x80)
			break;
	}
	if ((rs->snscb_ports[portidx].control & 0x80) == 0) {
		FUNC15(isp, ISP_LOGWARN,
		    "fabric too big for scratch area: increase ISP_FC_SCRLEN");
	}
	portlim = portidx + 1;
	FUNC15(isp, ISP_LOG_SANCFG,
	    "Chan %d Got %d ports back from name server", chan, portlim);

	/* Go through the list and remove duplicate port ids. */
	for (portidx = 0; portidx < portlim; portidx++) {
		int npidx;

		portid =
		    ((rs->snscb_ports[portidx].portid[0]) << 16) |
		    ((rs->snscb_ports[portidx].portid[1]) << 8) |
		    ((rs->snscb_ports[portidx].portid[2]));

		for (npidx = portidx + 1; npidx < portlim; npidx++) {
			uint32_t new_portid =
			    ((rs->snscb_ports[npidx].portid[0]) << 16) |
			    ((rs->snscb_ports[npidx].portid[1]) << 8) |
			    ((rs->snscb_ports[npidx].portid[2]));
			if (new_portid == portid) {
				break;
			}
		}

		if (npidx < portlim) {
			rs->snscb_ports[npidx].portid[0] = 0;
			rs->snscb_ports[npidx].portid[1] = 0;
			rs->snscb_ports[npidx].portid[2] = 0;
			FUNC15(isp, ISP_LOG_SANCFG, "Chan %d removing duplicate PortID 0x%06x entry from list", chan, portid);
		}
	}

	/*
	 * We now have a list of Port IDs for all FC4 SCSI devices
	 * that the Fabric Name server knows about.
	 *
	 * For each entry on this list go through our port database looking
	 * for probational entries- if we find one, then an old entry is
	 * maybe still this one. We get some information to find out.
	 *
	 * Otherwise, it's a new fabric device, and we log into it
	 * (unconditionally). After searching the entire database
	 * again to make sure that we never ever ever ever have more
	 * than one entry that has the same PortID or the same
	 * WWNN/WWPN duple, we enter the device into our database.
	 */
	FUNC13(isp, chan);
	for (portidx = 0; portidx < portlim; portidx++) {
		portid = ((rs->snscb_ports[portidx].portid[0]) << 16) |
			 ((rs->snscb_ports[portidx].portid[1]) << 8) |
			 ((rs->snscb_ports[portidx].portid[2]));
		FUNC15(isp, ISP_LOG_SANCFG,
		    "Chan %d Checking fabric port 0x%06x", chan, portid);
		if (portid == 0) {
			FUNC15(isp, ISP_LOG_SANCFG,
			    "Chan %d Port at idx %d is zero",
			    chan, portidx);
			continue;
		}
		if (portid == fcp->isp_portid) {
			FUNC15(isp, ISP_LOG_SANCFG,
			    "Chan %d Port 0x%06x is our", chan, portid);
			continue;
		}

		/* Now search the entire port database for the same portid. */
		if (FUNC7(isp, chan, portid, &lp)) {
			if (!lp->probational) {
				FUNC15(isp, ISP_LOGERR,
				    "Chan %d Port 0x%06x@0x%04x [%d] is not probational (0x%x)",
				    chan, lp->portid, lp->handle,
				    FUNC1(isp, chan, lp), lp->state);
				FUNC6(isp, chan);
				goto fail;
			}

			if (lp->state == FC_PORTDB_STATE_ZOMBIE)
				goto relogin;

			/*
			 * See if we're still logged into it.
			 *
			 * If we aren't, mark it as a dead device and
			 * leave the new portid in the database entry
			 * for somebody further along to decide what to
			 * do (policy choice).
			 *
			 * If we are, check to see if it's the same
			 * device still (it should be). If for some
			 * reason it isn't, mark it as a changed device
			 * and leave the new portid and role in the
			 * database entry for somebody further along to
			 * decide what to do (policy choice).
			 */
			r = FUNC8(isp, chan, lp->handle, &pdb);
			if (fcp->isp_loopstate < LOOP_SCANNING_FABRIC)
				goto abort;
			if (r != 0) {
				lp->state = FC_PORTDB_STATE_DEAD;
				FUNC15(isp, ISP_LOG_SANCFG,
				    "Chan %d Port 0x%06x handle 0x%x is dead (%d)",
				    chan, portid, lp->handle, r);
				goto relogin;
			}

			FUNC14(isp, chan, &pdb);
			continue;
		}

relogin:
		if ((fcp->role & ISP_ROLE_INITIATOR) == 0) {
			FUNC15(isp, ISP_LOG_SANCFG,
			    "Chan %d Port 0x%06x is not logged in", chan, portid);
			continue;
		}

		r = FUNC9(isp, chan, portid);
		if (r == 0) {
			FUNC15(isp, ISP_LOG_SANCFG,
			    "Chan %d Port 0x%06x is not an FCP target", chan, portid);
			continue;
		}
		if (r < 0)
			r = FUNC10(isp, chan, portid);
		if (r == 0) {
			FUNC15(isp, ISP_LOG_SANCFG,
			    "Chan %d Port 0x%06x is not FCP", chan, portid);
			continue;
		}

		if (FUNC12(isp, chan, portid, &pdb,
		    &FUNC0(isp, 0)->isp_lasthdl)) {
			if (fcp->isp_loopstate < LOOP_SCANNING_FABRIC)
				goto abort;
			continue;
		}

		FUNC14(isp, chan, &pdb);
	}

	if (fcp->isp_loopstate < LOOP_SCANNING_FABRIC)
		goto abort;
	fcp->isp_loopstate = LOOP_FSCAN_DONE;
	FUNC15(isp, ISP_LOG_SANCFG, "Chan %d FC fabric scan done", chan);
	return (0);
}