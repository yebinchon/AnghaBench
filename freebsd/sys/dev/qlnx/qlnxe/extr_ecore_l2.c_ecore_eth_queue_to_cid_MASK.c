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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct ecore_queue_start_common_params {int dummy; } ;
struct ecore_queue_cid_vf_params {int vf_legacy; int /*<<< orphan*/  vf_qid; int /*<<< orphan*/  vfid; } ;
struct ecore_queue_cid {int dummy; } ;
struct ecore_hwfn {int /*<<< orphan*/  p_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int,char*) ; 
 int /*<<< orphan*/  ECORE_CXT_PF_CID ; 
 int ECORE_QCID_LEGACY_VF_CID ; 
 scalar_t__ ECORE_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct ecore_queue_cid* OSAL_NULL ; 
 int /*<<< orphan*/  PROTOCOLID_ETH ; 
 scalar_t__ FUNC2 (struct ecore_hwfn*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ecore_queue_cid* FUNC4 (struct ecore_hwfn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ecore_queue_start_common_params*,int,struct ecore_queue_cid_vf_params*) ; 

struct ecore_queue_cid *
FUNC5(struct ecore_hwfn *p_hwfn, u16 opaque_fid,
		       struct ecore_queue_start_common_params *p_params,
		       bool b_is_rx,
		       struct ecore_queue_cid_vf_params *p_vf_params)
{
	struct ecore_queue_cid *p_cid;
	u8 vfid = ECORE_CXT_PF_CID;
	bool b_legacy_vf = false;
	u32 cid = 0;

	/* In case of legacy VFs, The CID can be derived from the additional
	 * VF parameters - the VF assumes queue X uses CID X, so we can simply
	 * use the vf_qid for this purpose as well.
	 */
	if (p_vf_params) {
		vfid = p_vf_params->vfid;

		if (p_vf_params->vf_legacy &
		    ECORE_QCID_LEGACY_VF_CID) {
			b_legacy_vf = true;
			cid = p_vf_params->vf_qid;
		}
	}

	/* Get a unique firmware CID for this queue, in case it's a PF.
	 * VF's don't need a CID as the queue configuration will be done
	 * by PF.
	 */
	if (FUNC1(p_hwfn->p_dev) && !b_legacy_vf) {
		if (FUNC2(p_hwfn, PROTOCOLID_ETH,
					   &cid, vfid) != ECORE_SUCCESS) {
			FUNC0(p_hwfn, true, "Failed to acquire cid\n");
			return OSAL_NULL;
		}
	}

	p_cid = FUNC4(p_hwfn, opaque_fid, cid,
					p_params, b_is_rx, p_vf_params);
	if ((p_cid == OSAL_NULL) && FUNC1(p_hwfn->p_dev) && !b_legacy_vf)
		FUNC3(p_hwfn, cid, vfid);

	return p_cid;
}