#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct ecore_iov_vf_mbx {int dummy; } ;
struct ecore_vf_info {int /*<<< orphan*/  relative_vf_id; int /*<<< orphan*/  vport_id; int /*<<< orphan*/  opaque_fid; int /*<<< orphan*/  abs_vf_id; int /*<<< orphan*/  vport_instance; struct ecore_iov_vf_mbx vf_mbx; } ;
struct ecore_sp_vport_update_params {struct ecore_rss_params* rss_params; int /*<<< orphan*/  vport_id; int /*<<< orphan*/  opaque_fid; } ;
struct ecore_sge_tpa_params {int dummy; } ;
struct ecore_rss_params {int dummy; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int /*<<< orphan*/  p_dev; } ;
typedef  int /*<<< orphan*/  params ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ECORE_MSG_IOV ; 
 int /*<<< orphan*/  ECORE_SPQ_MODE_EBLOCK ; 
 scalar_t__ ECORE_SUCCESS ; 
 scalar_t__ FUNC1 (struct ecore_hwfn*,int /*<<< orphan*/ ,struct ecore_sp_vport_update_params*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_sp_vport_update_params*,int /*<<< orphan*/ ,int) ; 
 struct ecore_rss_params* OSAL_NULL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ecore_rss_params*) ; 
 struct ecore_rss_params* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PFVF_STATUS_FAILURE ; 
 int /*<<< orphan*/  PFVF_STATUS_NOT_SUPPORTED ; 
 int /*<<< orphan*/  PFVF_STATUS_SUCCESS ; 
 scalar_t__ FUNC5 (struct ecore_hwfn*,struct ecore_vf_info*,struct ecore_iov_vf_mbx*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_vf_info*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ecore_hwfn*,struct ecore_sp_vport_update_params*,struct ecore_iov_vf_mbx*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (struct ecore_hwfn*,struct ecore_sp_vport_update_params*,struct ecore_iov_vf_mbx*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (struct ecore_hwfn*,struct ecore_sp_vport_update_params*,struct ecore_iov_vf_mbx*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (struct ecore_hwfn*,struct ecore_sp_vport_update_params*,struct ecore_iov_vf_mbx*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (struct ecore_hwfn*,struct ecore_vf_info*,struct ecore_sp_vport_update_params*,struct ecore_rss_params*,struct ecore_iov_vf_mbx*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC12 (struct ecore_hwfn*,struct ecore_sp_vport_update_params*,struct ecore_sge_tpa_params*,struct ecore_iov_vf_mbx*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC13 (struct ecore_hwfn*,struct ecore_sp_vport_update_params*,struct ecore_iov_vf_mbx*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC14 (struct ecore_hwfn*,struct ecore_sp_vport_update_params*,struct ecore_vf_info*,struct ecore_iov_vf_mbx*,scalar_t__*) ; 
 int FUNC15 (struct ecore_hwfn*,struct ecore_sp_vport_update_params*,int /*<<< orphan*/ ,struct ecore_rss_params*) ; 

__attribute__((used)) static void FUNC16(struct ecore_hwfn *p_hwfn,
					  struct ecore_ptt *p_ptt,
					  struct ecore_vf_info *vf)
{
	struct ecore_rss_params *p_rss_params = OSAL_NULL;
	struct ecore_sp_vport_update_params params;
	struct ecore_iov_vf_mbx *mbx = &vf->vf_mbx;
	struct ecore_sge_tpa_params sge_tpa_params;
	u16 tlvs_mask = 0, tlvs_accepted = 0;
	u8 status = PFVF_STATUS_SUCCESS;
	u16 length;
	enum _ecore_status_t rc;

	/* Valiate PF can send such a request */
	if (!vf->vport_instance) {
		FUNC0(p_hwfn, ECORE_MSG_IOV,
			   "No VPORT instance available for VF[%d], failing vport update\n",
			   vf->abs_vf_id);
		status = PFVF_STATUS_FAILURE;
		goto out;
	}

	p_rss_params = FUNC4(p_hwfn->p_dev, sizeof(*p_rss_params));
	if (p_rss_params == OSAL_NULL) {
		status = PFVF_STATUS_FAILURE;
		goto out;
	}

	FUNC2(&params, 0, sizeof(params));
	params.opaque_fid =  vf->opaque_fid;
	params.vport_id = vf->vport_id;
	params.rss_params = OSAL_NULL;

	/* Search for extended tlvs list and update values
	 * from VF in struct ecore_sp_vport_update_params.
	 */
	FUNC9(p_hwfn, &params, mbx, &tlvs_mask);
	FUNC14(p_hwfn, &params, vf, mbx, &tlvs_mask);
	FUNC13(p_hwfn, &params, mbx, &tlvs_mask);
	FUNC10(p_hwfn, &params, mbx, &tlvs_mask);
	FUNC8(p_hwfn, &params, mbx, &tlvs_mask);
	FUNC7(p_hwfn, &params, mbx, &tlvs_mask);
	FUNC12(p_hwfn, &params,
					  &sge_tpa_params, mbx, &tlvs_mask);

	tlvs_accepted = tlvs_mask;

	/* Some of the extended TLVs need to be validated first; In that case,
	 * they can update the mask without updating the accepted [so that
	 * PF could communicate to VF it has rejected request].
	 */
	FUNC11(p_hwfn, vf, &params, p_rss_params,
				      mbx, &tlvs_mask, &tlvs_accepted);

	/* Just log a message if there is no single extended tlv in buffer.
	 * When all features of vport update ramrod would be requested by VF
	 * as extended TLVs in buffer then an error can be returned in response
	 * if there is no extended TLV present in buffer.
	 */
	if (FUNC1(p_hwfn, vf->relative_vf_id,
				     &params, &tlvs_accepted) !=
	    ECORE_SUCCESS) {
		tlvs_accepted = 0;
		status = PFVF_STATUS_NOT_SUPPORTED;
		goto out;
	}

	if (!tlvs_accepted) {
		if (tlvs_mask)
			FUNC0(p_hwfn, ECORE_MSG_IOV,
				   "Upper-layer prevents said VF configuration\n");
		else
			FUNC0(p_hwfn, ECORE_MSG_IOV,
				   "No feature tlvs found for vport update\n");
		status = PFVF_STATUS_NOT_SUPPORTED;
		goto out;
	}

	rc = FUNC15(p_hwfn, &params, ECORE_SPQ_MODE_EBLOCK,
				   OSAL_NULL);

	if (rc)
		status = PFVF_STATUS_FAILURE;

out:
	FUNC3(p_hwfn->p_dev, p_rss_params);
	length = FUNC5(p_hwfn, vf, mbx, status,
						    tlvs_mask, tlvs_accepted);
	FUNC6(p_hwfn, p_ptt, vf, length, status);
}