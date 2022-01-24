#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct ecore_spq_entry {int dummy; } ;
struct ecore_sp_init_data {int cid; int /*<<< orphan*/  comp_mode; int /*<<< orphan*/  opaque_fid; } ;
struct ecore_rdma_create_qp_out_params {int icid; int qp_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  opaque_fid; } ;
struct ecore_hwfn {TYPE_1__ hw_info; int /*<<< orphan*/  p_dev; } ;
typedef  int /*<<< orphan*/  init_data ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,void*,struct ecore_rdma_create_qp_out_params*) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,...) ; 
 int ECORE_INVAL ; 
 int /*<<< orphan*/  ECORE_MSG_RDMA ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  ECORE_SPQ_MODE_EBLOCK ; 
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_sp_init_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  OSAL_NULL ; 
 int /*<<< orphan*/  PROTOCOLID_ROCE ; 
 int /*<<< orphan*/  ROCE_RAMROD_CREATE_UD_QP ; 
 int FUNC4 (struct ecore_hwfn*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct ecore_hwfn*,int) ; 
 int FUNC6 (struct ecore_hwfn*,struct ecore_spq_entry**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ecore_sp_init_data*) ; 
 int FUNC7 (struct ecore_hwfn*,struct ecore_spq_entry*,int /*<<< orphan*/ ) ; 

enum _ecore_status_t FUNC8(void		*rdma_cxt,
			struct ecore_rdma_create_qp_out_params	*out_params)
{
	struct ecore_hwfn *p_hwfn = (struct ecore_hwfn *)rdma_cxt;
	struct ecore_sp_init_data init_data;
	struct ecore_spq_entry *p_ent;
	enum _ecore_status_t rc;
	u16 icid, qp_idx;

	if (!rdma_cxt || !out_params) {
		FUNC0(p_hwfn->p_dev,
		       "ecore roce create ud qp failed due to NULL entry (rdma_cxt=%p, out=%p)\n",
		       rdma_cxt, out_params);
		return ECORE_INVAL;
	}

	rc = FUNC4(p_hwfn, &qp_idx);
	if (rc != ECORE_SUCCESS)
		goto err;

	icid = FUNC2(qp_idx);

	/* Get SPQ entry */
	FUNC3(&init_data, 0, sizeof(init_data));
	init_data.cid = icid;
	init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
	init_data.comp_mode = ECORE_SPQ_MODE_EBLOCK;
	rc = FUNC6(p_hwfn, &p_ent, ROCE_RAMROD_CREATE_UD_QP,
				   PROTOCOLID_ROCE, &init_data);
	if (rc != ECORE_SUCCESS)
		goto err1;

	rc = FUNC7(p_hwfn, p_ent, OSAL_NULL);
	if (rc != ECORE_SUCCESS)
		goto err1;

	out_params->icid = icid;
	out_params->qp_id = ((0xFF << 16) | icid);

	FUNC1(p_hwfn, ECORE_MSG_RDMA, "created a ud qp with icid=%d\n",
		   icid);

	return ECORE_SUCCESS;

err1:
	FUNC5(p_hwfn, qp_idx);

err:
	FUNC1(p_hwfn, ECORE_MSG_RDMA, "failed creating a ud qp\n");

	return rc;
}