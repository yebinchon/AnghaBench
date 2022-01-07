
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ecore_ptt {int dummy; } ;
struct ecore_mcp_function_info {scalar_t__ bandwidth_min; } ;
struct TYPE_6__ {int ovlan; scalar_t__ personality; } ;
struct TYPE_5__ {int pf_rl; scalar_t__ pf_wfq; } ;
struct ecore_hwfn {TYPE_3__ hw_info; scalar_t__ p_dev; int my_id; TYPE_2__ qm_info; TYPE_1__* mcp_info; int rel_pf_id; } ;
struct ecore_hw_init_params {scalar_t__ pci_rlx_odr_mode; int allow_npar_tx_switch; int p_tunn; int int_mode; scalar_t__ b_hw_start; int avoid_eng_affin; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_4__ {struct ecore_mcp_function_info func_info; } ;


 int DP_INFO (struct ecore_hwfn*,char*) ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,...) ;
 scalar_t__ ECORE_DISABLE_RLX_ODR ;
 scalar_t__ ECORE_ENABLE_RLX_ODR ;
 int ECORE_IO ;
 int ECORE_MSG_HW ;
 int ECORE_MSG_STORAGE ;
 scalar_t__ ECORE_PCI_FCOE ;
 scalar_t__ ECORE_PCI_ISCSI ;
 int ECORE_SUCCESS ;
 scalar_t__ IS_LEAD_HWFN (struct ecore_hwfn*) ;
 int MODE_MF_SD ;
 int MODE_MF_SI ;
 int NIG_REG_LLH_FUNC_FILTER_HDR_SEL_RT_OFFSET ;
 int NIG_REG_LLH_FUNC_TAGMAC_CLS_TYPE_RT_OFFSET ;
 int NIG_REG_LLH_FUNC_TAG_EN_RT_OFFSET ;
 int NIG_REG_LLH_FUNC_TAG_VALUE_RT_OFFSET ;
 int OSAL_BEFORE_PF_START (void*,int ) ;
 int OSAL_PCI_FIND_CAPABILITY (scalar_t__,int ) ;
 int OSAL_PCI_READ_CONFIG_WORD (scalar_t__,scalar_t__,int *) ;
 int OSAL_PCI_WRITE_CONFIG_WORD (scalar_t__,scalar_t__,int ) ;
 int PCI_CAP_ID_EXP ;
 scalar_t__ PCI_EXP_DEVCTL ;
 int PCI_EXP_DEVCTL_RELAX_EN ;
 int PHASE_PF ;
 int PHASE_QM_PF ;
 int PRS_REG_PKT_LEN_STAT_TAGS_NOT_COUNTED_FIRST ;
 int PRS_REG_SEARCH_FCOE ;
 int PRS_REG_SEARCH_FCOE_RT_OFFSET ;
 int PRS_REG_SEARCH_ROCE ;
 int PRS_REG_SEARCH_ROCE_RT_OFFSET ;
 int PRS_REG_SEARCH_TAG1 ;
 int PRS_REG_SEARCH_TCP ;
 int PRS_REG_SEARCH_TCP_FIRST_FRAG ;
 int PRS_REG_SEARCH_TCP_RT_OFFSET ;
 int PRS_REG_SEARCH_UDP ;
 int STORE_RT_REG (struct ecore_hwfn*,int ,int) ;
 int ecore_cxt_hw_init_pf (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_dmae_sanity (struct ecore_hwfn*,struct ecore_ptt*,char*) ;
 int ecore_hw_init_pf_doorbell_bar (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_init_run (struct ecore_hwfn*,struct ecore_ptt*,int ,int ,int) ;
 int ecore_int_igu_enable (struct ecore_hwfn*,struct ecore_ptt*,int ) ;
 int ecore_int_igu_init_pure_rt (struct ecore_hwfn*,struct ecore_ptt*,int,int) ;
 int ecore_int_igu_init_rt (struct ecore_hwfn*) ;
 int ecore_llh_hw_init_pf (struct ecore_hwfn*,struct ecore_ptt*,int ) ;
 scalar_t__ ecore_mcp_rlx_odr_supported (struct ecore_hwfn*) ;
 int ecore_rd (struct ecore_hwfn*,struct ecore_ptt*,int ) ;
 int ecore_sp_pf_start (struct ecore_hwfn*,struct ecore_ptt*,int ,int ) ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,int ,int) ;

__attribute__((used)) static enum _ecore_status_t
ecore_hw_init_pf(struct ecore_hwfn *p_hwfn, struct ecore_ptt *p_ptt,
   int hw_mode, struct ecore_hw_init_params *p_params)
{
 u8 rel_pf_id = p_hwfn->rel_pf_id;
 u32 prs_reg;
 enum _ecore_status_t rc = ECORE_SUCCESS;
 u16 ctrl;
 int pos;

 if (p_hwfn->mcp_info) {
  struct ecore_mcp_function_info *p_info;

  p_info = &p_hwfn->mcp_info->func_info;
  if (p_info->bandwidth_min)
   p_hwfn->qm_info.pf_wfq = p_info->bandwidth_min;


  p_hwfn->qm_info.pf_rl = 100000;
 }
 ecore_cxt_hw_init_pf(p_hwfn, p_ptt);

 ecore_int_igu_init_rt(p_hwfn);


 if (hw_mode & (1 << MODE_MF_SD)) {
  DP_VERBOSE(p_hwfn, ECORE_MSG_HW, "Configuring LLH_FUNC_TAG\n");
  STORE_RT_REG(p_hwfn, NIG_REG_LLH_FUNC_TAG_EN_RT_OFFSET, 1);
  STORE_RT_REG(p_hwfn, NIG_REG_LLH_FUNC_TAG_VALUE_RT_OFFSET,
        p_hwfn->hw_info.ovlan);

  DP_VERBOSE(p_hwfn, ECORE_MSG_HW,
      "Configuring LLH_FUNC_FILTER_HDR_SEL\n");
  STORE_RT_REG(p_hwfn, NIG_REG_LLH_FUNC_FILTER_HDR_SEL_RT_OFFSET,
        1);
 }


 if (hw_mode & (1 << MODE_MF_SI)) {
  DP_VERBOSE(p_hwfn, ECORE_MSG_HW, "Configuring TAGMAC_CLS_TYPE\n");
  STORE_RT_REG(p_hwfn,
        NIG_REG_LLH_FUNC_TAGMAC_CLS_TYPE_RT_OFFSET, 1);
 }


 STORE_RT_REG(p_hwfn, PRS_REG_SEARCH_TCP_RT_OFFSET,
       (p_hwfn->hw_info.personality == ECORE_PCI_ISCSI) ? 1 : 0);
 STORE_RT_REG(p_hwfn, PRS_REG_SEARCH_FCOE_RT_OFFSET,
       (p_hwfn->hw_info.personality == ECORE_PCI_FCOE) ? 1 : 0);
 STORE_RT_REG(p_hwfn, PRS_REG_SEARCH_ROCE_RT_OFFSET, 0);


 OSAL_BEFORE_PF_START((void *)p_hwfn->p_dev, p_hwfn->my_id);


 rc = ecore_dmae_sanity(p_hwfn, p_ptt, "pf_phase");
 if (rc)
  return rc;


 rc = ecore_init_run(p_hwfn, p_ptt, PHASE_PF, rel_pf_id, hw_mode);
 if (rc)
  return rc;


 rc = ecore_init_run(p_hwfn, p_ptt, PHASE_QM_PF, rel_pf_id, hw_mode);
 if (rc)
  return rc;


 ecore_int_igu_init_pure_rt(p_hwfn, p_ptt, 1, 1);






 pos = OSAL_PCI_FIND_CAPABILITY(p_hwfn->p_dev, PCI_CAP_ID_EXP);
 if (!pos) {
  DP_NOTICE(p_hwfn, 1,
     "Failed to find the PCI Express Capability structure in the PCI config space\n");
  return ECORE_IO;
 }

 OSAL_PCI_READ_CONFIG_WORD(p_hwfn->p_dev, pos + PCI_EXP_DEVCTL, &ctrl);

 if (p_params->pci_rlx_odr_mode == ECORE_ENABLE_RLX_ODR) {
  ctrl |= PCI_EXP_DEVCTL_RELAX_EN;
  OSAL_PCI_WRITE_CONFIG_WORD(p_hwfn->p_dev,
        pos + PCI_EXP_DEVCTL, ctrl);
 } else if (p_params->pci_rlx_odr_mode == ECORE_DISABLE_RLX_ODR) {
  ctrl &= ~PCI_EXP_DEVCTL_RELAX_EN;
  OSAL_PCI_WRITE_CONFIG_WORD(p_hwfn->p_dev,
        pos + PCI_EXP_DEVCTL, ctrl);
 } else if (ecore_mcp_rlx_odr_supported(p_hwfn)) {
  DP_INFO(p_hwfn, "PCI relax ordering configured by MFW\n");
 } else {
  ctrl &= ~PCI_EXP_DEVCTL_RELAX_EN;
  OSAL_PCI_WRITE_CONFIG_WORD(p_hwfn->p_dev,
        pos + PCI_EXP_DEVCTL, ctrl);
 }

 rc = ecore_hw_init_pf_doorbell_bar(p_hwfn, p_ptt);
 if (rc != ECORE_SUCCESS)
  return rc;


 if (IS_LEAD_HWFN(p_hwfn)) {
  rc = ecore_llh_hw_init_pf(p_hwfn, p_ptt,
       p_params->avoid_eng_affin);
  if (rc != ECORE_SUCCESS)
   return rc;
 }

 if (p_params->b_hw_start) {

  rc = ecore_int_igu_enable(p_hwfn, p_ptt, p_params->int_mode);
  if (rc != ECORE_SUCCESS)
   return rc;


  rc = ecore_sp_pf_start(p_hwfn, p_ptt, p_params->p_tunn,
           p_params->allow_npar_tx_switch);
  if (rc) {
   DP_NOTICE(p_hwfn, 1, "Function start ramrod failed\n");
   return rc;
  }
  prs_reg = ecore_rd(p_hwfn, p_ptt, PRS_REG_SEARCH_TAG1);
  DP_VERBOSE(p_hwfn, ECORE_MSG_STORAGE,
    "PRS_REG_SEARCH_TAG1: %x\n", prs_reg);

  if (p_hwfn->hw_info.personality == ECORE_PCI_FCOE)
  {
   ecore_wr(p_hwfn, p_ptt, PRS_REG_SEARCH_TAG1,
     (1 << 2));
   ecore_wr(p_hwfn, p_ptt,
     PRS_REG_PKT_LEN_STAT_TAGS_NOT_COUNTED_FIRST,
     0x100);
  }
  DP_VERBOSE(p_hwfn, ECORE_MSG_STORAGE,
    "PRS_REG_SEARCH registers after start PFn\n");
  prs_reg = ecore_rd(p_hwfn, p_ptt, PRS_REG_SEARCH_TCP);
  DP_VERBOSE(p_hwfn, ECORE_MSG_STORAGE,
    "PRS_REG_SEARCH_TCP: %x\n", prs_reg);
  prs_reg = ecore_rd(p_hwfn, p_ptt, PRS_REG_SEARCH_UDP);
  DP_VERBOSE(p_hwfn, ECORE_MSG_STORAGE,
    "PRS_REG_SEARCH_UDP: %x\n", prs_reg);
  prs_reg = ecore_rd(p_hwfn, p_ptt, PRS_REG_SEARCH_FCOE);
  DP_VERBOSE(p_hwfn, ECORE_MSG_STORAGE,
    "PRS_REG_SEARCH_FCOE: %x\n", prs_reg);
  prs_reg = ecore_rd(p_hwfn, p_ptt, PRS_REG_SEARCH_ROCE);
  DP_VERBOSE(p_hwfn, ECORE_MSG_STORAGE,
    "PRS_REG_SEARCH_ROCE: %x\n", prs_reg);
  prs_reg = ecore_rd(p_hwfn, p_ptt,
    PRS_REG_SEARCH_TCP_FIRST_FRAG);
  DP_VERBOSE(p_hwfn, ECORE_MSG_STORAGE,
    "PRS_REG_SEARCH_TCP_FIRST_FRAG: %x\n",
    prs_reg);
  prs_reg = ecore_rd(p_hwfn, p_ptt, PRS_REG_SEARCH_TAG1);
  DP_VERBOSE(p_hwfn, ECORE_MSG_STORAGE,
    "PRS_REG_SEARCH_TAG1: %x\n", prs_reg);
 }
 return ECORE_SUCCESS;
}
