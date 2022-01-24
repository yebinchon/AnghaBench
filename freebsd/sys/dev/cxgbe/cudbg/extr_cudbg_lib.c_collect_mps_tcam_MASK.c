#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct fw_ldst_mps_rplc {int /*<<< orphan*/  rplc255_224; int /*<<< orphan*/  rplc223_192; int /*<<< orphan*/  rplc191_160; int /*<<< orphan*/  rplc159_128; int /*<<< orphan*/  rplc127_96; int /*<<< orphan*/  rplc95_64; int /*<<< orphan*/  rplc63_32; int /*<<< orphan*/  rplc31_0; int /*<<< orphan*/  fid_idx; } ;
struct TYPE_5__ {struct fw_ldst_mps_rplc rplc; } ;
struct TYPE_6__ {TYPE_2__ mps; } ;
struct fw_ldst_cmd {TYPE_3__ u; void* cycles_to_len16; void* op_to_addrspace; } ;
struct cudbg_mps_tcam {scalar_t__ lookup_type; int vniy; int dip_hit; int vlan_vld; int ivlan; int vnix; int cls_lo; int cls_hi; int repli; int idx; scalar_t__ rplc_size; int /*<<< orphan*/  mask; int /*<<< orphan*/  addr; void** rplc; int /*<<< orphan*/  port_num; } ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int dummy; } ;
struct cudbg_buffer {int size; struct fw_ldst_cmd* data; } ;
struct adapter {TYPE_1__* chip_params; int /*<<< orphan*/  mbox; } ;
typedef  int /*<<< orphan*/  ldst_cmd ;
struct TYPE_4__ {int mps_tcam_size; scalar_t__ mps_rplc_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_MPS_CLS_TCAM_DATA2_CTL ; 
 int /*<<< orphan*/  A_MPS_CLS_TCAM_RDATA0_REQ_ID1 ; 
 int /*<<< orphan*/  A_MPS_CLS_TCAM_RDATA1_REQ_ID1 ; 
 int /*<<< orphan*/  A_MPS_CLS_TCAM_RDATA2_REQ_ID1 ; 
 scalar_t__ CHELSIO_T6 ; 
 scalar_t__ CUDBG_MAX_RPLC_SIZE ; 
 int CUDBG_SYSTEM_ERROR ; 
 int /*<<< orphan*/  FW_LDST_ADDRSPC_MPS ; 
 int /*<<< orphan*/  FW_LDST_CMD ; 
 int /*<<< orphan*/  FW_LDST_MPS_RPLC ; 
 int FUNC0 (struct fw_ldst_cmd) ; 
 int F_DATADIPHIT ; 
 int F_DATAVIDH2 ; 
 int F_FW_CMD_READ ; 
 int F_FW_CMD_REQUEST ; 
 int F_REPLICATE ; 
 int F_T6_REPLICATE ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int INTR_OK ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ M_DATALKPTYPE ; 
 int SLEEP_OK ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int) ; 
 int FUNC13 (int) ; 
 int FUNC14 (int) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (int) ; 
 int FUNC19 (struct adapter*,int /*<<< orphan*/ *,int,char*) ; 
 scalar_t__ FUNC20 (struct adapter*) ; 
 int FUNC21 (struct cudbg_buffer*,struct cudbg_buffer*) ; 
 int /*<<< orphan*/  FUNC22 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC24 (struct cudbg_buffer*,int,struct cudbg_buffer*) ; 
 void* FUNC25 (int) ; 
 int /*<<< orphan*/  FUNC26 (int) ; 
 scalar_t__ FUNC27 (struct adapter*) ; 
 scalar_t__ FUNC28 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC29 (struct fw_ldst_cmd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC30 (struct adapter*,struct fw_ldst_mps_rplc*) ; 
 void* FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (struct cudbg_buffer*,struct cudbg_buffer*) ; 
 int FUNC33 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC34 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC35 (struct adapter*,int /*<<< orphan*/ ,struct fw_ldst_cmd*,int,struct fw_ldst_cmd*) ; 
 int /*<<< orphan*/  FUNC36 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 int FUNC37 (struct cudbg_buffer*,struct cudbg_buffer*) ; 

__attribute__((used)) static int FUNC38(struct cudbg_init *pdbg_init,
			    struct cudbg_buffer *dbg_buff,
			    struct cudbg_error *cudbg_err)
{
	struct cudbg_buffer scratch_buff;
	struct adapter *padap = pdbg_init->adap;
	struct cudbg_mps_tcam *tcam = NULL;
	u32 size = 0, i, n, total_size = 0;
	u32 ctl, data2;
	u64 tcamy, tcamx, val;
	int rc;

	n = padap->chip_params->mps_tcam_size;
	size = sizeof(struct cudbg_mps_tcam) * n;
	scratch_buff.size = size;

	rc = FUNC24(dbg_buff, scratch_buff.size, &scratch_buff);
	if (rc)
		goto err;
	FUNC29(scratch_buff.data, 0, size);

	tcam = (struct cudbg_mps_tcam *)scratch_buff.data;
	for (i = 0; i < n; i++) {
		if (FUNC20(padap) >= CHELSIO_T6) {
			/* CtlReqID   - 1: use Host Driver Requester ID
			 * CtlCmdType - 0: Read, 1: Write
			 * CtlTcamSel - 0: TCAM0, 1: TCAM1
			 * CtlXYBitSel- 0: Y bit, 1: X bit
			 */

			/* Read tcamy */
			ctl = (FUNC11(1) |
			       FUNC10(0) | FUNC14(0));
			if (i < 256)
				ctl |= FUNC12(i) | FUNC13(0);
			else
				ctl |= FUNC12(i - 256) |
				       FUNC13(1);

			FUNC36(padap, A_MPS_CLS_TCAM_DATA2_CTL, ctl);
			val = FUNC33(padap, A_MPS_CLS_TCAM_RDATA1_REQ_ID1);
			tcamy = FUNC4(val) << 32;
			tcamy |= FUNC33(padap, A_MPS_CLS_TCAM_RDATA0_REQ_ID1);
			data2 = FUNC33(padap, A_MPS_CLS_TCAM_RDATA2_REQ_ID1);
			tcam->lookup_type = FUNC1(data2);

			/* 0 - Outer header, 1 - Inner header
			 * [71:48] bit locations are overloaded for
			 * outer vs. inner lookup types.
			 */

			if (tcam->lookup_type &&
			    (tcam->lookup_type != M_DATALKPTYPE)) {
				/* Inner header VNI */
				tcam->vniy = ((data2 & F_DATAVIDH2) << 23) |
					     (FUNC3(data2) << 16) |
					     FUNC5(val);
				tcam->dip_hit = data2 & F_DATADIPHIT;
			} else {
				tcam->vlan_vld = data2 & F_DATAVIDH2;
				tcam->ivlan = FUNC5(val);
			}

			tcam->port_num = FUNC2(data2);

			/* Read tcamx. Change the control param */
			ctl |= FUNC14(1);
			FUNC36(padap, A_MPS_CLS_TCAM_DATA2_CTL, ctl);
			val = FUNC33(padap, A_MPS_CLS_TCAM_RDATA1_REQ_ID1);
			tcamx = FUNC4(val) << 32;
			tcamx |= FUNC33(padap, A_MPS_CLS_TCAM_RDATA0_REQ_ID1);
			data2 = FUNC33(padap, A_MPS_CLS_TCAM_RDATA2_REQ_ID1);
			if (tcam->lookup_type &&
			    (tcam->lookup_type != M_DATALKPTYPE)) {
				/* Inner header VNI mask */
				tcam->vnix = ((data2 & F_DATAVIDH2) << 23) |
					     (FUNC3(data2) << 16) |
					     FUNC5(val);
			}
		} else {
			tcamy = FUNC34(padap, FUNC9(i));
			tcamx = FUNC34(padap, FUNC8(i));
		}

		if (tcamx & tcamy)
			continue;

		tcam->cls_lo = FUNC33(padap, FUNC7(i));
		tcam->cls_hi = FUNC33(padap, FUNC6(i));

		if (FUNC27(padap))
			tcam->repli = (tcam->cls_lo & F_REPLICATE);
		else if (FUNC28(padap))
			tcam->repli = (tcam->cls_lo & F_T6_REPLICATE);

		if (tcam->repli) {
			struct fw_ldst_cmd ldst_cmd;
			struct fw_ldst_mps_rplc mps_rplc;

			FUNC29(&ldst_cmd, 0, sizeof(ldst_cmd));
			ldst_cmd.op_to_addrspace =
				FUNC25(FUNC15(FW_LDST_CMD) |
				      F_FW_CMD_REQUEST |
				      F_FW_CMD_READ |
				      FUNC16(
					      FW_LDST_ADDRSPC_MPS));

			ldst_cmd.cycles_to_len16 = FUNC25(FUNC0(ldst_cmd));

			ldst_cmd.u.mps.rplc.fid_idx =
				FUNC26(FUNC17(FW_LDST_MPS_RPLC) |
				      FUNC18(i));

			rc = FUNC19(padap, NULL,
			    SLEEP_OK | INTR_OK, "t4cudm");
			if (rc == 0) {
				rc = FUNC35(padap, padap->mbox, &ldst_cmd,
						sizeof(ldst_cmd), &ldst_cmd);
				FUNC23(padap, 0);
			}

			if (rc)
				FUNC30(padap, &mps_rplc);
			else
				mps_rplc = ldst_cmd.u.mps.rplc;

			tcam->rplc[0] = FUNC31(mps_rplc.rplc31_0);
			tcam->rplc[1] = FUNC31(mps_rplc.rplc63_32);
			tcam->rplc[2] = FUNC31(mps_rplc.rplc95_64);
			tcam->rplc[3] = FUNC31(mps_rplc.rplc127_96);
			if (padap->chip_params->mps_rplc_size >
					CUDBG_MAX_RPLC_SIZE) {
				tcam->rplc[4] = FUNC31(mps_rplc.rplc159_128);
				tcam->rplc[5] = FUNC31(mps_rplc.rplc191_160);
				tcam->rplc[6] = FUNC31(mps_rplc.rplc223_192);
				tcam->rplc[7] = FUNC31(mps_rplc.rplc255_224);
			}
		}
		FUNC22(tcamx, tcamy, tcam->addr, &tcam->mask);

		tcam->idx = i;
		tcam->rplc_size = padap->chip_params->mps_rplc_size;

		total_size += sizeof(struct cudbg_mps_tcam);

		tcam++;
	}

	if (total_size == 0) {
		rc = CUDBG_SYSTEM_ERROR;
		goto err1;
	}

	scratch_buff.size = total_size;
	rc = FUNC37(&scratch_buff, dbg_buff);
	if (rc)
		goto err1;

	rc = FUNC21(&scratch_buff, dbg_buff);

err1:
	scratch_buff.size = size;
	FUNC32(&scratch_buff, dbg_buff);
err:
	return rc;
}