
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_6__ {int val; } ;
struct ecore_ilt_client_cfg {scalar_t__ vf_total_lines; scalar_t__ pf_total_lines; scalar_t__ active; TYPE_3__ p_size; } ;
struct ecore_hwfn {TYPE_2__* p_cxt_mngr; TYPE_1__* p_dev; } ;
struct ecore_hw_sriov_info {scalar_t__ total_vfs; scalar_t__ first_vf_in_pf; } ;
struct TYPE_5__ {struct ecore_ilt_client_cfg* clients; } ;
struct TYPE_4__ {struct ecore_hw_sriov_info* p_iov_info; } ;


 size_t ILT_CLI_CDUC ;
 size_t ILT_CLI_CDUT ;
 size_t ILT_CLI_TM ;
 int ILT_PAGE_IN_BYTES (int ) ;
 scalar_t__ OSAL_LOG2 (int) ;
 int PSWRQ2_REG_CDUC_BLOCKS_FACTOR_RT_OFFSET ;
 int PSWRQ2_REG_CDUC_NUMBER_OF_PF_BLOCKS_RT_OFFSET ;
 int PSWRQ2_REG_CDUC_VF_BLOCKS_RT_OFFSET ;
 int PSWRQ2_REG_CDUT_BLOCKS_FACTOR_RT_OFFSET ;
 int PSWRQ2_REG_CDUT_NUMBER_OF_PF_BLOCKS_RT_OFFSET ;
 int PSWRQ2_REG_CDUT_VF_BLOCKS_RT_OFFSET ;
 int PSWRQ2_REG_TM_BLOCKS_FACTOR_RT_OFFSET ;
 int PSWRQ2_REG_TM_NUMBER_OF_PF_BLOCKS_RT_OFFSET ;
 int PSWRQ2_REG_TM_VF_BLOCKS_RT_OFFSET ;
 int PSWRQ2_REG_VF_BASE_RT_OFFSET ;
 int PSWRQ2_REG_VF_LAST_ILT_RT_OFFSET ;
 int STORE_RT_REG (struct ecore_hwfn*,int ,scalar_t__) ;

__attribute__((used)) static void ecore_ilt_vf_bounds_init(struct ecore_hwfn *p_hwfn)
{
 struct ecore_ilt_client_cfg *p_cli;
 u32 blk_factor;


 if (p_hwfn->p_dev->p_iov_info) {
  struct ecore_hw_sriov_info *p_iov = p_hwfn->p_dev->p_iov_info;

  STORE_RT_REG(p_hwfn,
        PSWRQ2_REG_VF_BASE_RT_OFFSET,
        p_iov->first_vf_in_pf);
  STORE_RT_REG(p_hwfn,
        PSWRQ2_REG_VF_LAST_ILT_RT_OFFSET,
        p_iov->first_vf_in_pf + p_iov->total_vfs);
 }

 p_cli = &p_hwfn->p_cxt_mngr->clients[ILT_CLI_CDUC];
 blk_factor = OSAL_LOG2(ILT_PAGE_IN_BYTES(p_cli->p_size.val) >> 10);
 if (p_cli->active) {
  STORE_RT_REG(p_hwfn,
        PSWRQ2_REG_CDUC_BLOCKS_FACTOR_RT_OFFSET,
        blk_factor);
  STORE_RT_REG(p_hwfn,
        PSWRQ2_REG_CDUC_NUMBER_OF_PF_BLOCKS_RT_OFFSET,
        p_cli->pf_total_lines);
  STORE_RT_REG(p_hwfn,
        PSWRQ2_REG_CDUC_VF_BLOCKS_RT_OFFSET,
        p_cli->vf_total_lines);
 }

 p_cli = &p_hwfn->p_cxt_mngr->clients[ILT_CLI_CDUT];
 blk_factor = OSAL_LOG2(ILT_PAGE_IN_BYTES(p_cli->p_size.val) >> 10);
 if (p_cli->active) {
  STORE_RT_REG(p_hwfn,
        PSWRQ2_REG_CDUT_BLOCKS_FACTOR_RT_OFFSET,
        blk_factor);
  STORE_RT_REG(p_hwfn,
        PSWRQ2_REG_CDUT_NUMBER_OF_PF_BLOCKS_RT_OFFSET,
        p_cli->pf_total_lines);
  STORE_RT_REG(p_hwfn,
        PSWRQ2_REG_CDUT_VF_BLOCKS_RT_OFFSET,
        p_cli->vf_total_lines);
 }

 p_cli = &p_hwfn->p_cxt_mngr->clients[ILT_CLI_TM];
 blk_factor = OSAL_LOG2(ILT_PAGE_IN_BYTES(p_cli->p_size.val) >> 10);
 if (p_cli->active) {
  STORE_RT_REG(p_hwfn,
        PSWRQ2_REG_TM_BLOCKS_FACTOR_RT_OFFSET,
        blk_factor);
  STORE_RT_REG(p_hwfn,
        PSWRQ2_REG_TM_NUMBER_OF_PF_BLOCKS_RT_OFFSET,
        p_cli->pf_total_lines);
  STORE_RT_REG(p_hwfn,
        PSWRQ2_REG_TM_VF_BLOCKS_RT_OFFSET,
        p_cli->vf_total_lines);
 }
}
