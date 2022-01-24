#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  rp ;
typedef  int /*<<< orphan*/  rft_id_t ;
struct TYPE_23__ {scalar_t__ ct_cmd_resp; int ct_bcnt_resid; int /*<<< orphan*/  ct_fcs_subtype; int /*<<< orphan*/  ct_fcs_type; int /*<<< orphan*/  ct_revision; } ;
struct TYPE_20__ {int* rffid_portid; int rffid_fc4features; int /*<<< orphan*/  rffid_fc4type; TYPE_4__ rffid_hdr; } ;
typedef  TYPE_1__ rff_id_t ;
struct TYPE_21__ {int isp_dblev; } ;
typedef  TYPE_2__ ispsoftc_t ;
struct TYPE_22__ {int isp_portid; int role; int /*<<< orphan*/ * isp_scratch; } ;
typedef  TYPE_3__ fcparam ;
typedef  TYPE_4__ ct_hdr_t ;

/* Variables and functions */
 int /*<<< orphan*/  CT_FC_SUBTYPE_NS ; 
 int /*<<< orphan*/  CT_FC_TYPE_FC ; 
 int /*<<< orphan*/  CT_REVISION ; 
 int /*<<< orphan*/  FC4_SCSI ; 
 TYPE_3__* FUNC0 (TYPE_2__*,int) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int ISP_LOGDEBUG1 ; 
 int /*<<< orphan*/  ISP_LOGERR ; 
 int /*<<< orphan*/  ISP_LOGWARN ; 
 int ISP_LOG_SANCFG ; 
 int ISP_LOG_WARN1 ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int ISP_ROLE_INITIATOR ; 
 int ISP_ROLE_TARGET ; 
 scalar_t__ LS_ACC ; 
 scalar_t__ LS_RJT ; 
 scalar_t__ SNS_RFF_ID ; 
 scalar_t__ FUNC4 (TYPE_2__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  sacq ; 

__attribute__((used)) static int
FUNC9(ispsoftc_t *isp, int chan)
{
	fcparam *fcp = FUNC0(isp, chan);
	ct_hdr_t *ct;
	rff_id_t rp;
	uint8_t *scp = fcp->isp_scratch;

	if (FUNC1(isp, chan)) {
		FUNC7(isp, ISP_LOGERR, sacq);
		return (-1);
	}

	/*
	 * Build the CT header and command in memory.
	 */
	FUNC3(&rp, sizeof(rp));
	ct = &rp.rffid_hdr;
	ct->ct_revision = CT_REVISION;
	ct->ct_fcs_type = CT_FC_TYPE_FC;
	ct->ct_fcs_subtype = CT_FC_SUBTYPE_NS;
	ct->ct_cmd_resp = SNS_RFF_ID;
	ct->ct_bcnt_resid = (sizeof (rff_id_t) - sizeof (ct_hdr_t)) >> 2;
	rp.rffid_portid[0] = fcp->isp_portid >> 16;
	rp.rffid_portid[1] = fcp->isp_portid >> 8;
	rp.rffid_portid[2] = fcp->isp_portid;
	rp.rffid_fc4features = 0;
	if (fcp->role & ISP_ROLE_TARGET)
		rp.rffid_fc4features |= 1;
	if (fcp->role & ISP_ROLE_INITIATOR)
		rp.rffid_fc4features |= 2;
	rp.rffid_fc4type = FC4_SCSI;
	FUNC8(isp, &rp, (rff_id_t *)scp);
	if (isp->isp_dblev & ISP_LOGDEBUG1)
		FUNC6(isp, "CT request", sizeof(rft_id_t), scp);

	if (FUNC4(isp, chan, sizeof(rft_id_t), sizeof(ct_hdr_t))) {
		FUNC2(isp, chan);
		return (-1);
	}

	FUNC5(isp, (ct_hdr_t *) scp, ct);
	FUNC2(isp, chan);
	if (ct->ct_cmd_resp == LS_RJT) {
		FUNC7(isp, ISP_LOG_SANCFG|ISP_LOG_WARN1,
		    "Chan %d Register FC4 Features rejected", chan);
		return (-1);
	} else if (ct->ct_cmd_resp == LS_ACC) {
		FUNC7(isp, ISP_LOG_SANCFG,
		    "Chan %d Register FC4 Features accepted", chan);
	} else {
		FUNC7(isp, ISP_LOGWARN,
		    "Chan %d Register FC4 Features: 0x%x", chan, ct->ct_cmd_resp);
		return (-1);
	}
	return (0);
}