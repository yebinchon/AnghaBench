#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_11__ {scalar_t__ ct_cmd_resp; } ;
struct TYPE_12__ {scalar_t__* snscb_fc4_features; TYPE_1__ snscb_cthdr; } ;
typedef  TYPE_2__ sns_gff_id_rsp_t ;
typedef  int /*<<< orphan*/  ispsoftc_t ;
struct TYPE_13__ {int /*<<< orphan*/  isp_use_gff_id; int /*<<< orphan*/ * isp_scratch; } ;
typedef  TYPE_3__ fcparam ;
struct TYPE_14__ {int ct_bcnt_resid; int /*<<< orphan*/  ct_cmd_resp; int /*<<< orphan*/  ct_fcs_subtype; int /*<<< orphan*/  ct_fcs_type; int /*<<< orphan*/  ct_revision; } ;
typedef  TYPE_4__ ct_hdr_t ;
typedef  int /*<<< orphan*/  ct ;

/* Variables and functions */
 int /*<<< orphan*/  CT_FC_SUBTYPE_NS ; 
 int /*<<< orphan*/  CT_FC_TYPE_FC ; 
 int /*<<< orphan*/  CT_REVISION ; 
 int FC4_SCSI ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ISP_LOGDEBUG0 ; 
 int /*<<< orphan*/  ISP_LOGERR ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ LS_ACC ; 
 int /*<<< orphan*/  SNS_GFF_ID ; 
 int SNS_GFF_ID_RESP_SIZE ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  sacq ; 

__attribute__((used)) static int
FUNC11(ispsoftc_t *isp, int chan, uint32_t portid)
{
	fcparam *fcp = FUNC0(isp, chan);
	ct_hdr_t ct;
	uint32_t *rp;
	uint8_t *scp = fcp->isp_scratch;
	sns_gff_id_rsp_t rsp;
	int i, res = -1;

	if (!fcp->isp_use_gff_id)	/* User may block GFF_ID use. */
		return (res);

	if (!FUNC6(isp))	/* Old chips can't request GFF_ID. */
		return (res);

	FUNC9(isp, ISP_LOGDEBUG0, "Chan %d requesting GFF_ID", chan);
	if (FUNC1(isp, chan)) {
		FUNC9(isp, ISP_LOGERR, sacq);
		return (res);
	}

	/* Build the CT command and execute via pass-through. */
	FUNC4(&ct, sizeof (ct));
	ct.ct_revision = CT_REVISION;
	ct.ct_fcs_type = CT_FC_TYPE_FC;
	ct.ct_fcs_subtype = CT_FC_SUBTYPE_NS;
	ct.ct_cmd_resp = SNS_GFF_ID;
	ct.ct_bcnt_resid = (SNS_GFF_ID_RESP_SIZE - sizeof(ct)) / 4;
	FUNC10(isp, &ct, (ct_hdr_t *)scp);
	rp = (uint32_t *) &scp[sizeof(ct)];
	FUNC3(isp, portid, rp);

	if (FUNC7(isp, chan, sizeof(ct) + sizeof(uint32_t),
	    SNS_GFF_ID_RESP_SIZE)) {
		FUNC2(isp, chan);
		return (res);
	}

	FUNC8(isp, (sns_gff_id_rsp_t *)scp, &rsp);
	if (rsp.snscb_cthdr.ct_cmd_resp == LS_ACC) {
		for (i = 0; i < 32; i++) {
			if (rsp.snscb_fc4_features[i] != 0) {
				res = 0;
				break;
			}
		}
		if (((rsp.snscb_fc4_features[FC4_SCSI / 8] >>
		    ((FC4_SCSI % 8) * 4)) & 0x01) != 0)
			res = 1;
		/* Workaround for broken Brocade firmware. */
		if (((FUNC5(isp, rsp.snscb_fc4_features[FC4_SCSI / 8]) >>
		    ((FC4_SCSI % 8) * 4)) & 0x01) != 0)
			res = 1;
	}
	FUNC2(isp, chan);
	FUNC9(isp, ISP_LOGDEBUG0, "Chan %d GFF_ID result is %d", chan, res);
	return (res);
}