#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  sns_gid_xx_rsp_t ;
struct TYPE_10__ {int ct_bcnt_resid; int snscb_rblen; int snscb_sblen; int snscb_port_type; scalar_t__ snscb_flags; scalar_t__ snscb_area; scalar_t__ snscb_domain; int /*<<< orphan*/  snscb_mword_div_2; void* snscb_cmd; int /*<<< orphan*/ * snscb_addr; void* ct_cmd_resp; int /*<<< orphan*/  ct_fcs_subtype; int /*<<< orphan*/  ct_fcs_type; int /*<<< orphan*/  ct_revision; } ;
typedef  TYPE_1__ sns_gid_pt_req_t ;
typedef  int /*<<< orphan*/  rq ;
typedef  int /*<<< orphan*/  ispsoftc_t ;
struct TYPE_11__ {int* isp_scratch; scalar_t__ isp_scanscratch; int /*<<< orphan*/  isp_scdma; } ;
typedef  TYPE_2__ fcparam ;
typedef  TYPE_1__ ct_hdr_t ;
typedef  int /*<<< orphan*/  ct ;

/* Variables and functions */
 int /*<<< orphan*/  CT_FC_SUBTYPE_NS ; 
 int /*<<< orphan*/  CT_FC_TYPE_FC ; 
 int /*<<< orphan*/  CT_REVISION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int GIDLEN ; 
 int /*<<< orphan*/  ISP_LOGDEBUG0 ; 
 int /*<<< orphan*/  ISP_LOGERR ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NGENT ; 
 size_t RQRSP_ADDR0015 ; 
 size_t RQRSP_ADDR1631 ; 
 size_t RQRSP_ADDR3247 ; 
 size_t RQRSP_ADDR4863 ; 
 void* SNS_GID_PT ; 
 int SNS_GID_PT_REQ_SIZE ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int,int,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  sacq ; 

__attribute__((used)) static int
FUNC15(ispsoftc_t *isp, int chan)
{
	fcparam *fcp = FUNC4(isp, chan);
	ct_hdr_t ct;
	sns_gid_pt_req_t rq;
	uint8_t *scp = fcp->isp_scratch;

	FUNC12(isp, ISP_LOGDEBUG0, "Chan %d requesting GID_PT", chan);
	if (FUNC5(isp, chan)) {
		FUNC12(isp, ISP_LOGERR, sacq);
		return (-1);
	}

	if (FUNC8(isp)) {
		/* Build the CT command and execute via pass-through. */
		FUNC7(&ct, sizeof (ct));
		ct.ct_revision = CT_REVISION;
		ct.ct_fcs_type = CT_FC_TYPE_FC;
		ct.ct_fcs_subtype = CT_FC_SUBTYPE_NS;
		ct.ct_cmd_resp = SNS_GID_PT;
		ct.ct_bcnt_resid = (GIDLEN - 16) >> 2;
		FUNC13(isp, &ct, (ct_hdr_t *)scp);
		scp[sizeof(ct)] = 0x7f;		/* Port Type = Nx_Port */
		scp[sizeof(ct)+1] = 0;		/* Domain_ID = any */
		scp[sizeof(ct)+2] = 0;		/* Area_ID = any */
		scp[sizeof(ct)+3] = 0;		/* Flags = no Area_ID */

		if (FUNC9(isp, chan, sizeof(ct) + sizeof(uint32_t), GIDLEN)) {
			FUNC6(isp, chan);
			return (-1);
		}
	} else {
		/* Build the SNS request and execute via firmware. */
		FUNC7(&rq, SNS_GID_PT_REQ_SIZE);
		rq.snscb_rblen = GIDLEN >> 1;
		rq.snscb_addr[RQRSP_ADDR0015] = FUNC0(fcp->isp_scdma);
		rq.snscb_addr[RQRSP_ADDR1631] = FUNC1(fcp->isp_scdma);
		rq.snscb_addr[RQRSP_ADDR3247] = FUNC2(fcp->isp_scdma);
		rq.snscb_addr[RQRSP_ADDR4863] = FUNC3(fcp->isp_scdma);
		rq.snscb_sblen = 6;
		rq.snscb_cmd = SNS_GID_PT;
		rq.snscb_mword_div_2 = NGENT;
		rq.snscb_port_type = 0x7f;	/* Port Type = Nx_Port */
		rq.snscb_domain = 0;		/* Domain_ID = any */
		rq.snscb_area = 0;		/* Area_ID = any */
		rq.snscb_flags = 0;		/* Flags = no Area_ID */
		FUNC14(isp, &rq, (sns_gid_pt_req_t *)scp);

		if (FUNC10(isp, chan, sizeof(rq), NGENT)) {
			FUNC6(isp, chan);
			return (-1);
		}
	}

	FUNC11(isp, (sns_gid_xx_rsp_t *)scp,
	    (sns_gid_xx_rsp_t *)fcp->isp_scanscratch, NGENT);
	FUNC6(isp, chan);
	return (0);
}