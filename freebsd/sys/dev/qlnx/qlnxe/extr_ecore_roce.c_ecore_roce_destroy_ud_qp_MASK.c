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
typedef  int /*<<< orphan*/  u16 ;
struct ecore_spq_entry {int dummy; } ;
struct ecore_sp_init_data {int /*<<< orphan*/  comp_mode; int /*<<< orphan*/  opaque_fid; int /*<<< orphan*/  cid; } ;
struct TYPE_2__ {int /*<<< orphan*/  opaque_fid; } ;
struct ecore_hwfn {TYPE_1__ hw_info; int /*<<< orphan*/  p_dev; } ;
typedef  int /*<<< orphan*/  init_data ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int ECORE_INVAL ; 
 int /*<<< orphan*/  ECORE_MSG_RDMA ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ECORE_SPQ_MODE_EBLOCK ; 
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_sp_init_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  OSAL_NULL ; 
 int /*<<< orphan*/  PROTOCOLID_ROCE ; 
 int /*<<< orphan*/  ROCE_RAMROD_DESTROY_UD_QP ; 
 int /*<<< orphan*/  FUNC4 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ecore_hwfn*,struct ecore_spq_entry**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ecore_sp_init_data*) ; 
 int FUNC6 (struct ecore_hwfn*,struct ecore_spq_entry*,int /*<<< orphan*/ ) ; 

enum _ecore_status_t FUNC7(void *rdma_cxt, u16 cid)
{
	struct ecore_hwfn *p_hwfn = (struct ecore_hwfn *)rdma_cxt;
	struct ecore_sp_init_data init_data;
	struct ecore_spq_entry *p_ent;
	enum _ecore_status_t rc;

	if (!rdma_cxt) {
		FUNC0(p_hwfn->p_dev,
		       "destroy ud qp failed due to NULL rdma_cxt\n");
		return ECORE_INVAL;
	}

	/* Get SPQ entry */
	FUNC3(&init_data, 0, sizeof(init_data));
	init_data.cid = cid;
	init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
	init_data.comp_mode = ECORE_SPQ_MODE_EBLOCK;
	rc = FUNC5(p_hwfn, &p_ent, ROCE_RAMROD_DESTROY_UD_QP,
				   PROTOCOLID_ROCE, &init_data);
	if (rc != ECORE_SUCCESS)
		goto err;

	rc = FUNC6(p_hwfn, p_ent, OSAL_NULL);
	if (rc != ECORE_SUCCESS)
		goto err;

	FUNC4(p_hwfn, FUNC2(cid));

	FUNC1(p_hwfn, ECORE_MSG_RDMA, "freed a ud qp with cid=%d\n", cid);

	return ECORE_SUCCESS;

err:
	FUNC0(p_hwfn, "failed destroying a ud qp with cid=%d\n", cid);

	return rc;
}