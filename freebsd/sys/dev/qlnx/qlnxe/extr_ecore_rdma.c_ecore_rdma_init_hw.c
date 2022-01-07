
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int b_rdma_enabled_in_prs; int p_dev; int rdma_prs_search_reg; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*) ;
 scalar_t__ ECORE_IS_BB_A0 (int ) ;
 scalar_t__ ECORE_IS_CMT (int ) ;
 int ECORE_MSG_RDMA ;
 int ECORE_SUCCESS ;
 int ECORE_UNKNOWN_ERROR ;
 scalar_t__ IS_IWARP (struct ecore_hwfn*) ;
 scalar_t__ NIG_REG_LLH_ENG_CLS_ENG_ID_TBL ;
 int PROTOCOLID_ROCE ;
 scalar_t__ PRS_REG_LIGHT_L2_ETHERTYPE_EN ;
 scalar_t__ PRS_REG_ROCE_DEST_QP_MAX_PF ;
 int PRS_REG_SEARCH_ROCE ;
 int ecore_cxt_get_proto_cid_start (struct ecore_hwfn*,int ) ;
 int ecore_iwarp_init_hw (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_rd (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__) ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__,int) ;

__attribute__((used)) static enum _ecore_status_t ecore_rdma_init_hw(
 struct ecore_hwfn *p_hwfn,
 struct ecore_ptt *p_ptt)
{
 u32 ll2_ethertype_en;

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "Initializing HW\n");
 p_hwfn->b_rdma_enabled_in_prs = 0;

 if (IS_IWARP(p_hwfn))
  return ecore_iwarp_init_hw(p_hwfn, p_ptt);

 ecore_wr(p_hwfn,
   p_ptt,
   PRS_REG_ROCE_DEST_QP_MAX_PF,
   0);

 p_hwfn->rdma_prs_search_reg = PRS_REG_SEARCH_ROCE;





 ll2_ethertype_en = ecore_rd(p_hwfn,
        p_ptt,
        PRS_REG_LIGHT_L2_ETHERTYPE_EN);
 ecore_wr(p_hwfn, p_ptt, PRS_REG_LIGHT_L2_ETHERTYPE_EN,
   (ll2_ethertype_en | 0x01));


 if (ECORE_IS_BB_A0(p_hwfn->p_dev) && ECORE_IS_CMT(p_hwfn->p_dev)) {
  ecore_wr(p_hwfn,
    p_ptt,
    NIG_REG_LLH_ENG_CLS_ENG_ID_TBL,
    0);
  ecore_wr(p_hwfn,
    p_ptt,
    NIG_REG_LLH_ENG_CLS_ENG_ID_TBL + 4,
    0);
 }


 if (ecore_cxt_get_proto_cid_start(p_hwfn, PROTOCOLID_ROCE) % 2)
 {
  DP_NOTICE(p_hwfn,
     1,
     "The first RoCE's cid should be even\n");
  return ECORE_UNKNOWN_ERROR;
 }

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "Initializing HW - Done\n");
 return ECORE_SUCCESS;
}
