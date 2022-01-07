
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct ecore_ptt {int dummy; } ;
struct TYPE_4__ {int hw_mac_addr; } ;
struct ecore_hwfn {TYPE_2__ hw_info; int rel_pf_id; struct ecore_dev* p_dev; } ;
struct ecore_dev {int mf_bits; TYPE_1__* p_llh_info; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_3__ {scalar_t__ num_ppfid; } ;


 int DP_NOTICE (struct ecore_dev*,int,char*) ;
 scalar_t__ ECORE_IS_CMT (struct ecore_dev*) ;
 int ECORE_IS_FCOE_PERSONALITY (struct ecore_hwfn*) ;
 int ECORE_MF_LLH_MAC_CLSS ;
 int ECORE_SUCCESS ;
 scalar_t__ NIG_REG_LLH_PPFID2PFID_TBL_0 ;
 scalar_t__ OSAL_TEST_BIT (int ,int *) ;
 int ecore_abs_ppfid (struct ecore_dev*,scalar_t__,scalar_t__*) ;
 int ecore_llh_add_mac_filter (struct ecore_dev*,int ,int ) ;
 int ecore_llh_set_engine_affin (struct ecore_hwfn*,struct ecore_ptt*,int) ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__,int ) ;

__attribute__((used)) static enum _ecore_status_t ecore_llh_hw_init_pf(struct ecore_hwfn *p_hwfn,
       struct ecore_ptt *p_ptt,
       bool avoid_eng_affin)
{
 struct ecore_dev *p_dev = p_hwfn->p_dev;
 u8 ppfid, abs_ppfid;
 enum _ecore_status_t rc;

 for (ppfid = 0; ppfid < p_dev->p_llh_info->num_ppfid; ppfid++) {
  u32 addr;

  rc = ecore_abs_ppfid(p_dev, ppfid, &abs_ppfid);
  if (rc != ECORE_SUCCESS)
   return rc;

  addr = NIG_REG_LLH_PPFID2PFID_TBL_0 + abs_ppfid * 0x4;
  ecore_wr(p_hwfn, p_ptt, addr, p_hwfn->rel_pf_id);
 }

 if (OSAL_TEST_BIT(ECORE_MF_LLH_MAC_CLSS, &p_dev->mf_bits) &&
     !ECORE_IS_FCOE_PERSONALITY(p_hwfn)) {
  rc = ecore_llh_add_mac_filter(p_dev, 0,
           p_hwfn->hw_info.hw_mac_addr);
  if (rc != ECORE_SUCCESS)
   DP_NOTICE(p_dev, 0,
      "Failed to add an LLH filter with the primary MAC\n");
 }

 if (ECORE_IS_CMT(p_dev)) {
  rc = ecore_llh_set_engine_affin(p_hwfn, p_ptt, avoid_eng_affin);
  if (rc != ECORE_SUCCESS)
   return rc;
 }

 return ECORE_SUCCESS;
}
