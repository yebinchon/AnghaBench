
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct ecore_qm_info {int pf_rl_en; int pf_wfq_en; int qm_port_params; int vport_wfq_en; int vport_rl_en; int max_phys_tcs_per_port; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {scalar_t__ rel_pf_id; TYPE_2__* mcp_info; struct ecore_dev* p_dev; struct ecore_qm_info qm_info; } ;
struct ecore_dev {int num_ports_in_engine; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_3__ {scalar_t__ bandwidth_min; scalar_t__ bandwidth_max; } ;
struct TYPE_4__ {TYPE_1__ func_info; } ;


 int CCFC_REG_STRONG_ENABLE_VF ;
 int CCFC_REG_WEAK_ENABLE_VF ;
 scalar_t__ CHIP_REV_IS_EMUL (struct ecore_dev*) ;
 scalar_t__ ECORE_IS_AH (struct ecore_dev*) ;
 scalar_t__ ECORE_IS_BB (struct ecore_dev*) ;
 int ECORE_PATH_ID (struct ecore_hwfn*) ;
 int ECORE_SUCCESS ;
 scalar_t__ MAX_NUM_VFS_BB ;
 scalar_t__ MAX_NUM_VFS_K2 ;
 scalar_t__ NUM_OF_ENG_PFS (struct ecore_dev*) ;
 int PGLUE_B_REG_USE_CLIENTID_IN_TAG ;
 int PHASE_ENGINE ;
 int PRS_REG_SEARCH_ROCE ;
 int PRS_REG_SEARCH_TCP ;
 int PSWRQ2_REG_L2P_VALIDATE_VFID ;
 int TCFC_REG_STRONG_ENABLE_VF ;
 int TCFC_REG_WEAK_ENABLE_VF ;
 int ecore_cxt_hw_init_common (struct ecore_hwfn*) ;
 int ecore_fid_pretend (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__) ;
 int ecore_gtt_init (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_hw_init_chip (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_init_cache_line_size (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_init_cau_rt_data (struct ecore_dev*) ;
 int ecore_init_run (struct ecore_hwfn*,struct ecore_ptt*,int ,int ,int) ;
 int ecore_qm_common_rt_init (struct ecore_hwfn*,int ,int ,int,int,int ,int ,int ) ;
 scalar_t__ ecore_vfid_to_concrete (struct ecore_hwfn*,scalar_t__) ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,int ,int) ;

__attribute__((used)) static enum _ecore_status_t ecore_hw_init_common(struct ecore_hwfn *p_hwfn,
       struct ecore_ptt *p_ptt,
       int hw_mode)
{
 struct ecore_qm_info *qm_info = &p_hwfn->qm_info;
 struct ecore_dev *p_dev = p_hwfn->p_dev;
 u8 vf_id, max_num_vfs;
 u16 num_pfs, pf_id;
 u32 concrete_fid;
 enum _ecore_status_t rc = ECORE_SUCCESS;

 ecore_init_cau_rt_data(p_dev);


 ecore_gtt_init(p_hwfn, p_ptt);


 if (CHIP_REV_IS_EMUL(p_dev)) {
  rc = ecore_hw_init_chip(p_hwfn, p_ptt);
  if (rc != ECORE_SUCCESS)
   return rc;
 }


 if (p_hwfn->mcp_info) {
  if (p_hwfn->mcp_info->func_info.bandwidth_max)
   qm_info->pf_rl_en = 1;
  if (p_hwfn->mcp_info->func_info.bandwidth_min)
   qm_info->pf_wfq_en = 1;
 }

 ecore_qm_common_rt_init(p_hwfn,
    p_dev->num_ports_in_engine,
    qm_info->max_phys_tcs_per_port,
    qm_info->pf_rl_en, qm_info->pf_wfq_en,
    qm_info->vport_rl_en, qm_info->vport_wfq_en,
    qm_info->qm_port_params);

 ecore_cxt_hw_init_common(p_hwfn);

 ecore_init_cache_line_size(p_hwfn, p_ptt);

 rc = ecore_init_run(p_hwfn, p_ptt, PHASE_ENGINE, ECORE_PATH_ID(p_hwfn),
       hw_mode);
 if (rc != ECORE_SUCCESS)
  return rc;




 ecore_wr(p_hwfn, p_ptt, PSWRQ2_REG_L2P_VALIDATE_VFID, 0);
 ecore_wr(p_hwfn, p_ptt, PGLUE_B_REG_USE_CLIENTID_IN_TAG, 1);

 if (ECORE_IS_BB(p_dev)) {



  num_pfs = NUM_OF_ENG_PFS(p_dev);
  for (pf_id = 0; pf_id < num_pfs; pf_id++) {
   ecore_fid_pretend(p_hwfn, p_ptt, pf_id);
   ecore_wr(p_hwfn, p_ptt, PRS_REG_SEARCH_ROCE, 0x0);
   ecore_wr(p_hwfn, p_ptt, PRS_REG_SEARCH_TCP, 0x0);
  }

  ecore_fid_pretend(p_hwfn, p_ptt, p_hwfn->rel_pf_id);
 }







 max_num_vfs = ECORE_IS_AH(p_dev) ? MAX_NUM_VFS_K2 : MAX_NUM_VFS_BB;
 for (vf_id = 0; vf_id < max_num_vfs; vf_id++) {
  concrete_fid = ecore_vfid_to_concrete(p_hwfn, vf_id);
  ecore_fid_pretend(p_hwfn, p_ptt, (u16)concrete_fid);
  ecore_wr(p_hwfn, p_ptt, CCFC_REG_STRONG_ENABLE_VF, 0x1);
  ecore_wr(p_hwfn, p_ptt, CCFC_REG_WEAK_ENABLE_VF, 0x0);
  ecore_wr(p_hwfn, p_ptt, TCFC_REG_STRONG_ENABLE_VF, 0x1);
  ecore_wr(p_hwfn, p_ptt, TCFC_REG_WEAK_ENABLE_VF, 0x0);
 }

 ecore_fid_pretend(p_hwfn, p_ptt, p_hwfn->rel_pf_id);

 return rc;
}
