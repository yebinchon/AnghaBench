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
struct pfvf_def_resp_tlv {int dummy; } ;
struct ecore_vf_info {int spoof_chk; int b_malicious; int /*<<< orphan*/  shadow_config; scalar_t__ configured_features; int /*<<< orphan*/  vport_id; int /*<<< orphan*/  opaque_fid; int /*<<< orphan*/  abs_vf_id; int /*<<< orphan*/  vport_instance; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  CHANNEL_TLV_VPORT_TEARDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,int,char*,int /*<<< orphan*/ ) ; 
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,struct ecore_vf_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PFVF_STATUS_FAILURE ; 
 int /*<<< orphan*/  PFVF_STATUS_MALICIOUS ; 
 int /*<<< orphan*/  PFVF_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_vf_info*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct ecore_vf_info*) ; 
 scalar_t__ FUNC6 (struct ecore_vf_info*) ; 
 int FUNC7 (struct ecore_hwfn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct ecore_hwfn *p_hwfn,
					struct ecore_ptt *p_ptt,
					struct ecore_vf_info *vf)
{
	u8 status = PFVF_STATUS_SUCCESS;
	enum _ecore_status_t rc;

	FUNC2(p_hwfn, vf);
	vf->vport_instance--;
	vf->spoof_chk = false;

	if ((FUNC5(vf)) ||
	    (FUNC6(vf))) {
		vf->b_malicious = true;
		FUNC1(p_hwfn,
			  false, " VF [%02x] - considered malicious; Unable to stop RX/TX queuess\n",
			  vf->abs_vf_id);
		status = PFVF_STATUS_MALICIOUS;
		goto out;
	}

	rc = FUNC7(p_hwfn, vf->opaque_fid, vf->vport_id);
	if (rc != ECORE_SUCCESS) {
		FUNC0(p_hwfn, "ecore_iov_vf_mbx_stop_vport returned error %d\n",
		       rc);
		status = PFVF_STATUS_FAILURE;
	}

	/* Forget the configuration on the vport */
	vf->configured_features = 0;
	FUNC3(&vf->shadow_config, 0, sizeof(vf->shadow_config));

out:
	FUNC4(p_hwfn, p_ptt, vf, CHANNEL_TLV_VPORT_TEARDOWN,
			       sizeof(struct pfvf_def_resp_tlv), status);
}