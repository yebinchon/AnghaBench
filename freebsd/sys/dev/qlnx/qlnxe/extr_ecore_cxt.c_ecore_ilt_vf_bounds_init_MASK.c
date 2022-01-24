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
typedef  scalar_t__ u32 ;
struct TYPE_6__ {int /*<<< orphan*/  val; } ;
struct ecore_ilt_client_cfg {scalar_t__ vf_total_lines; scalar_t__ pf_total_lines; scalar_t__ active; TYPE_3__ p_size; } ;
struct ecore_hwfn {TYPE_2__* p_cxt_mngr; TYPE_1__* p_dev; } ;
struct ecore_hw_sriov_info {scalar_t__ total_vfs; scalar_t__ first_vf_in_pf; } ;
struct TYPE_5__ {struct ecore_ilt_client_cfg* clients; } ;
struct TYPE_4__ {struct ecore_hw_sriov_info* p_iov_info; } ;

/* Variables and functions */
 size_t ILT_CLI_CDUC ; 
 size_t ILT_CLI_CDUT ; 
 size_t ILT_CLI_TM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  PSWRQ2_REG_CDUC_BLOCKS_FACTOR_RT_OFFSET ; 
 int /*<<< orphan*/  PSWRQ2_REG_CDUC_NUMBER_OF_PF_BLOCKS_RT_OFFSET ; 
 int /*<<< orphan*/  PSWRQ2_REG_CDUC_VF_BLOCKS_RT_OFFSET ; 
 int /*<<< orphan*/  PSWRQ2_REG_CDUT_BLOCKS_FACTOR_RT_OFFSET ; 
 int /*<<< orphan*/  PSWRQ2_REG_CDUT_NUMBER_OF_PF_BLOCKS_RT_OFFSET ; 
 int /*<<< orphan*/  PSWRQ2_REG_CDUT_VF_BLOCKS_RT_OFFSET ; 
 int /*<<< orphan*/  PSWRQ2_REG_TM_BLOCKS_FACTOR_RT_OFFSET ; 
 int /*<<< orphan*/  PSWRQ2_REG_TM_NUMBER_OF_PF_BLOCKS_RT_OFFSET ; 
 int /*<<< orphan*/  PSWRQ2_REG_TM_VF_BLOCKS_RT_OFFSET ; 
 int /*<<< orphan*/  PSWRQ2_REG_VF_BASE_RT_OFFSET ; 
 int /*<<< orphan*/  PSWRQ2_REG_VF_LAST_ILT_RT_OFFSET ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct ecore_hwfn *p_hwfn)
{
	struct ecore_ilt_client_cfg *p_cli;
	u32 blk_factor;

	/* For simplicty  we set the 'block' to be an ILT page */
	if (p_hwfn->p_dev->p_iov_info) {
		struct ecore_hw_sriov_info *p_iov = p_hwfn->p_dev->p_iov_info;

		FUNC2(p_hwfn,
			     PSWRQ2_REG_VF_BASE_RT_OFFSET,
			     p_iov->first_vf_in_pf);
		FUNC2(p_hwfn,
			     PSWRQ2_REG_VF_LAST_ILT_RT_OFFSET,
			     p_iov->first_vf_in_pf + p_iov->total_vfs);
	}

	p_cli = &p_hwfn->p_cxt_mngr->clients[ILT_CLI_CDUC];
	blk_factor = FUNC1(FUNC0(p_cli->p_size.val) >> 10);
	if (p_cli->active) {
		FUNC2(p_hwfn,
			     PSWRQ2_REG_CDUC_BLOCKS_FACTOR_RT_OFFSET,
			     blk_factor);
		FUNC2(p_hwfn,
			     PSWRQ2_REG_CDUC_NUMBER_OF_PF_BLOCKS_RT_OFFSET,
			     p_cli->pf_total_lines);
		FUNC2(p_hwfn,
			     PSWRQ2_REG_CDUC_VF_BLOCKS_RT_OFFSET,
			     p_cli->vf_total_lines);
	}

	p_cli = &p_hwfn->p_cxt_mngr->clients[ILT_CLI_CDUT];
	blk_factor = FUNC1(FUNC0(p_cli->p_size.val) >> 10);
	if (p_cli->active) {
		FUNC2(p_hwfn,
			     PSWRQ2_REG_CDUT_BLOCKS_FACTOR_RT_OFFSET,
			     blk_factor);
		FUNC2(p_hwfn,
			     PSWRQ2_REG_CDUT_NUMBER_OF_PF_BLOCKS_RT_OFFSET,
			     p_cli->pf_total_lines);
		FUNC2(p_hwfn,
			     PSWRQ2_REG_CDUT_VF_BLOCKS_RT_OFFSET,
			     p_cli->vf_total_lines);
	}

	p_cli = &p_hwfn->p_cxt_mngr->clients[ILT_CLI_TM];
	blk_factor = FUNC1(FUNC0(p_cli->p_size.val) >> 10);
	if (p_cli->active) {
		FUNC2(p_hwfn,
			     PSWRQ2_REG_TM_BLOCKS_FACTOR_RT_OFFSET,
			     blk_factor);
		FUNC2(p_hwfn,
			     PSWRQ2_REG_TM_NUMBER_OF_PF_BLOCKS_RT_OFFSET,
			     p_cli->pf_total_lines);
		FUNC2(p_hwfn,
			     PSWRQ2_REG_TM_VF_BLOCKS_RT_OFFSET,
			     p_cli->vf_total_lines);
	}
}