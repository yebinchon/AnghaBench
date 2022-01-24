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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_6__ {void* lo; void* hi; } ;
struct rdma_create_cq_ramrod_data {int toggle_bit; int /*<<< orphan*/  int_timeout; scalar_t__ cnq_id; void* pbl_num_pages; int /*<<< orphan*/  pbl_addr; void* max_cqes; int /*<<< orphan*/  is_two_level_pbl; void* dpi; TYPE_3__ cq_handle; } ;
struct TYPE_5__ {struct rdma_create_cq_ramrod_data rdma_create_cq; } ;
struct ecore_spq_entry {TYPE_2__ ramrod; } ;
struct ecore_sp_init_data {int /*<<< orphan*/  comp_mode; int /*<<< orphan*/  opaque_fid; scalar_t__ cid; } ;
struct ecore_rdma_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  cq_map; int /*<<< orphan*/  proto; } ;
struct ecore_rdma_create_cq_in_params {int /*<<< orphan*/  int_timeout; scalar_t__ cnq_id; int /*<<< orphan*/  pbl_num_pages; int /*<<< orphan*/  pbl_ptr; int /*<<< orphan*/  cq_size; int /*<<< orphan*/  pbl_two_level; int /*<<< orphan*/  dpi; int /*<<< orphan*/  cq_handle_lo; int /*<<< orphan*/  cq_handle_hi; } ;
struct TYPE_4__ {int /*<<< orphan*/  opaque_fid; } ;
struct ecore_hwfn {TYPE_1__ hw_info; struct ecore_rdma_info* p_rdma_info; } ;
typedef  int /*<<< orphan*/  init_data ;
typedef  enum ecore_rdma_toggle_bit { ____Placeholder_ecore_rdma_toggle_bit } ecore_rdma_toggle_bit ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  ECORE_ELEM_CXT ; 
 int /*<<< orphan*/  ECORE_MSG_RDMA ; 
 int /*<<< orphan*/  ECORE_RDMA_CNQ_RAM ; 
 int /*<<< orphan*/  ECORE_SPQ_MODE_EBLOCK ; 
 int ECORE_SUCCESS ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ecore_sp_init_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  OSAL_NULL ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RDMA_RAMROD_CREATE_CQ ; 
 scalar_t__ FUNC8 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ecore_hwfn*,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC10 (struct ecore_hwfn*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC11 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct ecore_hwfn*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC13 (struct ecore_hwfn*,scalar_t__) ; 
 int FUNC14 (struct ecore_hwfn*,struct ecore_spq_entry**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ecore_sp_init_data*) ; 
 int FUNC15 (struct ecore_hwfn*,struct ecore_spq_entry*,int /*<<< orphan*/ ) ; 

enum _ecore_status_t FUNC16(void			      *rdma_cxt,
				struct ecore_rdma_create_cq_in_params *params,
				u16                                   *icid)
{
	struct ecore_hwfn *p_hwfn = (struct ecore_hwfn *)rdma_cxt;
	struct ecore_rdma_info *p_info = p_hwfn->p_rdma_info;
	struct rdma_create_cq_ramrod_data	*p_ramrod;
	enum ecore_rdma_toggle_bit		toggle_bit;
	struct ecore_sp_init_data		init_data;
	struct ecore_spq_entry			*p_ent;
	enum _ecore_status_t			rc;
	u32					returned_id;

	FUNC2(p_hwfn, ECORE_MSG_RDMA, "cq_handle = %08x%08x\n",
		   params->cq_handle_hi, params->cq_handle_lo);

	/* Allocate icid */
	FUNC6(&p_info->lock);
	rc = FUNC12(p_hwfn, &p_info->cq_map, &returned_id);
	FUNC7(&p_info->lock);

	if (rc != ECORE_SUCCESS)
	{
		FUNC1(p_hwfn, false, "Can't create CQ, rc = %d\n", rc);
		return rc;
	}

	*icid = (u16)(returned_id +
		      FUNC11(
			      p_hwfn, p_info->proto));

	/* Check if icid requires a page allocation */
	rc = FUNC10(p_hwfn, ECORE_ELEM_CXT, *icid);
	if (rc != ECORE_SUCCESS)
		goto err;

	/* Get SPQ entry */
	FUNC5(&init_data, 0, sizeof(init_data));
	init_data.cid = *icid;
	init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
	init_data.comp_mode = ECORE_SPQ_MODE_EBLOCK;

	/* Send create CQ ramrod */
	rc = FUNC14(p_hwfn, &p_ent,
				   RDMA_RAMROD_CREATE_CQ,
				   p_info->proto, &init_data);
	if (rc != ECORE_SUCCESS)
		goto err;

	p_ramrod = &p_ent->ramrod.rdma_create_cq;

	p_ramrod->cq_handle.hi = FUNC4(params->cq_handle_hi);
	p_ramrod->cq_handle.lo = FUNC4(params->cq_handle_lo);
	p_ramrod->dpi = FUNC3(params->dpi);
	p_ramrod->is_two_level_pbl = params->pbl_two_level;
	p_ramrod->max_cqes = FUNC4(params->cq_size);
	FUNC0(p_ramrod->pbl_addr, params->pbl_ptr);
	p_ramrod->pbl_num_pages = FUNC3(params->pbl_num_pages);
	p_ramrod->cnq_id = (u8)FUNC8(p_hwfn, ECORE_RDMA_CNQ_RAM)
			+ params->cnq_id;
	p_ramrod->int_timeout = params->int_timeout;
	/* INTERNAL: Two layer PBL is currently not supported, ignoring next line */
	/* INTERNAL: p_ramrod->pbl_log_page_size = params->pbl_page_size_log - 12; */

	/* toggle the bit for every resize or create cq for a given icid */
	toggle_bit = FUNC13(p_hwfn, *icid);

	p_ramrod->toggle_bit = toggle_bit;

	rc = FUNC15(p_hwfn, p_ent, OSAL_NULL);
	if (rc != ECORE_SUCCESS) {
		/* restore toggle bit */
		FUNC13(p_hwfn, *icid);
		goto err;
	}

	FUNC2(p_hwfn, ECORE_MSG_RDMA, "Created CQ, rc = %d\n", rc);
	return rc;

err:
	/* release allocated icid */
	FUNC6(&p_info->lock);
	FUNC9(p_hwfn, &p_info->cq_map, returned_id);
	FUNC7(&p_info->lock);

	FUNC1(p_hwfn, false, "Create CQ failed, rc = %d\n", rc);

	return rc;
}