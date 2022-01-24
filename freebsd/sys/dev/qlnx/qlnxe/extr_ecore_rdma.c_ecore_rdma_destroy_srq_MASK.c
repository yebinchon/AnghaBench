#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_7__ {void* opaque_fid; void* srq_idx; } ;
struct rdma_srq_destroy_ramrod_data {TYPE_3__ srq_id; } ;
struct TYPE_6__ {struct rdma_srq_destroy_ramrod_data rdma_destroy_srq; } ;
struct ecore_spq_entry {TYPE_2__ ramrod; } ;
struct ecore_sp_init_data {int /*<<< orphan*/  comp_mode; int /*<<< orphan*/  opaque_fid; } ;
struct ecore_rdma_destroy_srq_in_params {int /*<<< orphan*/  is_xrc; int /*<<< orphan*/  srq_id; } ;
struct TYPE_5__ {int /*<<< orphan*/  opaque_fid; } ;
struct ecore_hwfn {TYPE_4__* p_rdma_info; TYPE_1__ hw_info; } ;
struct ecore_bmap {int dummy; } ;
typedef  int /*<<< orphan*/  init_data ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_8__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  proto; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ECORE_MSG_RDMA ; 
 int /*<<< orphan*/  ECORE_SPQ_MODE_EBLOCK ; 
 int ECORE_SUCCESS ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_sp_init_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  OSAL_NULL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RDMA_RAMROD_DESTROY_SRQ ; 
 int /*<<< orphan*/  FUNC5 (struct ecore_hwfn*,struct ecore_bmap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ecore_hwfn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ecore_bmap* FUNC7 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ecore_hwfn*,struct ecore_spq_entry**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ecore_sp_init_data*) ; 
 int FUNC9 (struct ecore_hwfn*,struct ecore_spq_entry*,int /*<<< orphan*/ ) ; 

enum _ecore_status_t
FUNC10(void *rdma_cxt,
		       struct ecore_rdma_destroy_srq_in_params *in_params)
{
	struct ecore_hwfn *p_hwfn = (struct ecore_hwfn *)rdma_cxt;
	struct rdma_srq_destroy_ramrod_data *p_ramrod;
	struct ecore_sp_init_data init_data;
	struct ecore_spq_entry *p_ent;
	u16 opaque_fid, fw_srq_id;
	struct ecore_bmap *bmap;
	enum _ecore_status_t rc;

	opaque_fid = p_hwfn->hw_info.opaque_fid;

	FUNC2(&init_data, 0, sizeof(init_data));
	init_data.opaque_fid = opaque_fid;
	init_data.comp_mode = ECORE_SPQ_MODE_EBLOCK;

	/* Send destroy SRQ ramrod */
	rc = FUNC8(p_hwfn, &p_ent,
				   RDMA_RAMROD_DESTROY_SRQ,
				   p_hwfn->p_rdma_info->proto, &init_data);
	if (rc != ECORE_SUCCESS)
		return rc;

	p_ramrod = &p_ent->ramrod.rdma_destroy_srq;

	fw_srq_id = FUNC6(p_hwfn, in_params->srq_id,
					     in_params->is_xrc);
	p_ramrod->srq_id.srq_idx = FUNC1(fw_srq_id);
	p_ramrod->srq_id.opaque_fid = FUNC1(opaque_fid);

	rc = FUNC9(p_hwfn, p_ent, OSAL_NULL);

	if (rc != ECORE_SUCCESS)
		return rc;

	bmap = FUNC7(p_hwfn, in_params->is_xrc);

	FUNC3(&p_hwfn->p_rdma_info->lock);
	FUNC5(p_hwfn, bmap, in_params->srq_id);
	FUNC4(&p_hwfn->p_rdma_info->lock);

	FUNC0(p_hwfn, ECORE_MSG_RDMA,
		   "XRC/SRQ destroyed Id = %x, is_xrc=%u\n",
		   in_params->srq_id, in_params->is_xrc);

	return rc;
}