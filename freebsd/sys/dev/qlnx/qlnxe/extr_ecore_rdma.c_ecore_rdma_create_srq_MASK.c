#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  void* u16 ;
struct TYPE_11__ {void* srq_idx; void* opaque_fid; } ;
struct TYPE_10__ {void* lo; void* hi; } ;
struct TYPE_9__ {void* lo; void* hi; } ;
struct rdma_srq_create_ramrod_data {void* xrc_domain; int /*<<< orphan*/  xrc_srq_cq_cid; int /*<<< orphan*/  flags; TYPE_5__ srq_id; TYPE_4__ producers_addr; void* page_size; void* pd_id; void* pages_in_srq_pbl; TYPE_3__ pbl_base_addr; } ;
struct TYPE_8__ {struct rdma_srq_create_ramrod_data rdma_create_srq; } ;
struct ecore_spq_entry {TYPE_2__ ramrod; } ;
struct ecore_sp_init_data {int /*<<< orphan*/  comp_mode; void* opaque_fid; } ;
struct ecore_rdma_create_srq_out_params {void* srq_id; } ;
struct ecore_rdma_create_srq_in_params {void* num_pages; void* pd_id; void* page_size; int reserved_key_en; void* xrcd_id; scalar_t__ is_xrc; int /*<<< orphan*/  cq_cid; int /*<<< orphan*/  prod_pair_addr; int /*<<< orphan*/  pbl_base_addr; } ;
struct TYPE_7__ {void* opaque_fid; } ;
struct ecore_hwfn {TYPE_6__* p_rdma_info; TYPE_1__ hw_info; } ;
struct ecore_bmap {int dummy; } ;
typedef  int /*<<< orphan*/  init_data ;
typedef  enum ecore_cxt_elem_type { ____Placeholder_ecore_cxt_elem_type } ecore_cxt_elem_type ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_12__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  proto; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,void*,scalar_t__) ; 
 int ECORE_ELEM_SRQ ; 
 int ECORE_ELEM_XRC_SRQ ; 
 int /*<<< orphan*/  ECORE_MSG_RDMA ; 
 int /*<<< orphan*/  ECORE_SPQ_MODE_EBLOCK ; 
 int ECORE_SUCCESS ; 
 void* FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ecore_sp_init_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  OSAL_NULL ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RDMA_RAMROD_CREATE_SRQ ; 
 int /*<<< orphan*/  RDMA_SRQ_CREATE_RAMROD_DATA_RESERVED_KEY_EN ; 
 int /*<<< orphan*/  RDMA_SRQ_CREATE_RAMROD_DATA_XRC_FLAG ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ecore_hwfn*,struct ecore_bmap*,scalar_t__) ; 
 int FUNC11 (struct ecore_hwfn*,int,scalar_t__) ; 
 int FUNC12 (struct ecore_hwfn*,struct ecore_bmap*,scalar_t__*) ; 
 void* FUNC13 (struct ecore_hwfn*,void*,scalar_t__) ; 
 struct ecore_bmap* FUNC14 (struct ecore_hwfn*,scalar_t__) ; 
 int FUNC15 (struct ecore_hwfn*,struct ecore_spq_entry**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ecore_sp_init_data*) ; 
 int FUNC16 (struct ecore_hwfn*,struct ecore_spq_entry*,int /*<<< orphan*/ ) ; 

enum _ecore_status_t
FUNC17(void *rdma_cxt,
		      struct ecore_rdma_create_srq_in_params *in_params,
		      struct ecore_rdma_create_srq_out_params *out_params)
{
	struct ecore_hwfn *p_hwfn = (struct ecore_hwfn *)rdma_cxt;
	struct rdma_srq_create_ramrod_data *p_ramrod;
	struct ecore_sp_init_data init_data;
	enum ecore_cxt_elem_type elem_type;
	struct ecore_spq_entry *p_ent;
	u16 opaque_fid, fw_srq_id;
	struct ecore_bmap *bmap;
	u32 returned_id;
	enum _ecore_status_t rc;

	/* Allocate XRC/SRQ ID */
	bmap = FUNC14(p_hwfn, in_params->is_xrc);
	FUNC7(&p_hwfn->p_rdma_info->lock);
	rc = FUNC12(p_hwfn, bmap, &returned_id);
	FUNC8(&p_hwfn->p_rdma_info->lock);

	if (rc != ECORE_SUCCESS) {
		FUNC2(p_hwfn, false,
			  "failed to allocate xrc/srq id (is_xrc=%u)\n",
			  in_params->is_xrc);
		return rc;
	}
	/* Allocate XRC/SRQ ILT page */
	elem_type = (in_params->is_xrc) ? (ECORE_ELEM_XRC_SRQ) : (ECORE_ELEM_SRQ);
	rc = FUNC11(p_hwfn, elem_type, returned_id);
	if (rc != ECORE_SUCCESS)
		goto err;

	FUNC6(&init_data, 0, sizeof(init_data));
	opaque_fid = p_hwfn->hw_info.opaque_fid;
	init_data.opaque_fid = opaque_fid;
	init_data.comp_mode = ECORE_SPQ_MODE_EBLOCK;

	/* Create XRC/SRQ ramrod */
	rc = FUNC15(p_hwfn, &p_ent,
				   RDMA_RAMROD_CREATE_SRQ,
				   p_hwfn->p_rdma_info->proto, &init_data);
	if (rc != ECORE_SUCCESS)
		goto err;

	p_ramrod = &p_ent->ramrod.rdma_create_srq;

	p_ramrod->pbl_base_addr.hi = FUNC0(in_params->pbl_base_addr);
	p_ramrod->pbl_base_addr.lo = FUNC1(in_params->pbl_base_addr);
	p_ramrod->pages_in_srq_pbl = FUNC4(in_params->num_pages);
	p_ramrod->pd_id = FUNC4(in_params->pd_id);
	p_ramrod->srq_id.opaque_fid = FUNC4(opaque_fid);
	p_ramrod->page_size = FUNC4(in_params->page_size);
	p_ramrod->producers_addr.hi = FUNC0(in_params->prod_pair_addr);
	p_ramrod->producers_addr.lo = FUNC1(in_params->prod_pair_addr);
	fw_srq_id = FUNC13(p_hwfn, (u16) returned_id,
					     in_params->is_xrc);
	p_ramrod->srq_id.srq_idx = FUNC4(fw_srq_id);

	if (in_params->is_xrc) {
		FUNC9(p_ramrod->flags,
			  RDMA_SRQ_CREATE_RAMROD_DATA_XRC_FLAG,
			  1);
		FUNC9(p_ramrod->flags,
			  RDMA_SRQ_CREATE_RAMROD_DATA_RESERVED_KEY_EN,
			  in_params->reserved_key_en);
		p_ramrod->xrc_srq_cq_cid = FUNC5(in_params->cq_cid);
		p_ramrod->xrc_domain = FUNC4(in_params->xrcd_id);
	}

	rc = FUNC16(p_hwfn, p_ent, OSAL_NULL);

	if (rc != ECORE_SUCCESS)
		goto err;

	out_params->srq_id = (u16)returned_id;

	FUNC3(p_hwfn, ECORE_MSG_RDMA, "XRC/SRQ created Id = %x (is_xrc=%u)\n",
		   out_params->srq_id, in_params->is_xrc);
	return rc;

err:
	FUNC7(&p_hwfn->p_rdma_info->lock);
	FUNC10(p_hwfn, bmap, returned_id);
	FUNC8(&p_hwfn->p_rdma_info->lock);

	return rc;
}