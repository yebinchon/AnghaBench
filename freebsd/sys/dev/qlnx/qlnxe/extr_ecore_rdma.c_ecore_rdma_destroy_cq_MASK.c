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
struct rdma_destroy_cq_ramrod_data {int /*<<< orphan*/  output_params_addr; } ;
struct rdma_destroy_cq_output_params {int /*<<< orphan*/  cnq_num; } ;
struct TYPE_5__ {struct rdma_destroy_cq_ramrod_data rdma_destroy_cq; } ;
struct ecore_spq_entry {TYPE_2__ ramrod; } ;
struct ecore_sp_init_data {int cid; int /*<<< orphan*/  comp_mode; int /*<<< orphan*/  opaque_fid; } ;
struct ecore_rdma_destroy_cq_out_params {int /*<<< orphan*/  num_cq_notif; } ;
struct ecore_rdma_destroy_cq_in_params {int icid; } ;
struct TYPE_4__ {int /*<<< orphan*/  opaque_fid; } ;
struct ecore_hwfn {int /*<<< orphan*/  p_dev; TYPE_3__* p_rdma_info; TYPE_1__ hw_info; } ;
typedef  int /*<<< orphan*/  init_data ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_6__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  proto; int /*<<< orphan*/  cq_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  ECORE_MSG_RDMA ; 
 int ECORE_NOMEM ; 
 int /*<<< orphan*/  ECORE_SPQ_MODE_EBLOCK ; 
 int ECORE_SUCCESS ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct rdma_destroy_cq_output_params*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ecore_sp_init_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  OSAL_NULL ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RDMA_RAMROD_DESTROY_CQ ; 
 int /*<<< orphan*/  FUNC9 (struct ecore_hwfn*,int /*<<< orphan*/ *,int) ; 
 int FUNC10 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct ecore_hwfn*,struct ecore_spq_entry**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ecore_sp_init_data*) ; 
 int FUNC12 (struct ecore_hwfn*,struct ecore_spq_entry*,int /*<<< orphan*/ ) ; 

enum _ecore_status_t FUNC13(void			*rdma_cxt,
			struct ecore_rdma_destroy_cq_in_params	*in_params,
			struct ecore_rdma_destroy_cq_out_params	*out_params)
{
	struct ecore_hwfn *p_hwfn = (struct ecore_hwfn *)rdma_cxt;
	struct rdma_destroy_cq_output_params *p_ramrod_res;
	struct rdma_destroy_cq_ramrod_data	*p_ramrod;
	struct ecore_sp_init_data		init_data;
	struct ecore_spq_entry			*p_ent;
	dma_addr_t				ramrod_res_phys;
	enum _ecore_status_t			rc = ECORE_NOMEM;

	FUNC2(p_hwfn, ECORE_MSG_RDMA, "icid = %08x\n", in_params->icid);

	p_ramrod_res = (struct rdma_destroy_cq_output_params *)
			FUNC3(p_hwfn->p_dev, &ramrod_res_phys,
				sizeof(struct rdma_destroy_cq_output_params));
	if (!p_ramrod_res)
	{
		FUNC1(p_hwfn, false,
			  "ecore destroy cq failed: cannot allocate memory (ramrod)\n");
		return rc;
	}

	/* Get SPQ entry */
	FUNC6(&init_data, 0, sizeof(init_data));
	init_data.cid =  in_params->icid;
	init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
	init_data.comp_mode = ECORE_SPQ_MODE_EBLOCK;

	/* Send destroy CQ ramrod */
	rc = FUNC11(p_hwfn, &p_ent,
				   RDMA_RAMROD_DESTROY_CQ,
				   p_hwfn->p_rdma_info->proto, &init_data);
	if (rc != ECORE_SUCCESS)
		goto err;

	p_ramrod = &p_ent->ramrod.rdma_destroy_cq;
	FUNC0(p_ramrod->output_params_addr, ramrod_res_phys);

	rc = FUNC12(p_hwfn, p_ent, OSAL_NULL);
	if (rc != ECORE_SUCCESS)
		goto err;

	out_params->num_cq_notif =
		FUNC5(p_ramrod_res->cnq_num);

	FUNC4(p_hwfn->p_dev, p_ramrod_res, ramrod_res_phys,
			       sizeof(struct rdma_destroy_cq_output_params));

	/* Free icid */
	FUNC7(&p_hwfn->p_rdma_info->lock);

	FUNC9(p_hwfn,
			      &p_hwfn->p_rdma_info->cq_map,
		(in_params->icid - FUNC10(
			p_hwfn, p_hwfn->p_rdma_info->proto)));

	FUNC8(&p_hwfn->p_rdma_info->lock);

	FUNC2(p_hwfn, ECORE_MSG_RDMA, "Destroyed CQ, rc = %d\n", rc);
	return rc;

err:
	FUNC4(p_hwfn->p_dev, p_ramrod_res, ramrod_res_phys,
			       sizeof(struct rdma_destroy_cq_output_params));

	return rc;
}