
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int abs_pf_id; TYPE_1__* p_dev; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_2__ {int mf_bits; } ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int ECORE_INVAL ;
 int ECORE_MF_NEED_DEF_PF ;
 int ECORE_SUCCESS ;
 int NIG_REG_LLH_TAGMAC_DEF_PF_VECTOR ;
 scalar_t__ OSAL_TEST_BIT (int ,int *) ;
 int PRS_REG_MSG_INFO ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,int ,int) ;

enum _ecore_status_t
ecore_llh_set_function_as_default(struct ecore_hwfn *p_hwfn,
      struct ecore_ptt *p_ptt)
{
 if (OSAL_TEST_BIT(ECORE_MF_NEED_DEF_PF, &p_hwfn->p_dev->mf_bits)) {
  ecore_wr(p_hwfn, p_ptt,
    NIG_REG_LLH_TAGMAC_DEF_PF_VECTOR,
    1 << p_hwfn->abs_pf_id / 2);
  ecore_wr(p_hwfn, p_ptt, PRS_REG_MSG_INFO, 0);
  return ECORE_SUCCESS;
 } else {
  DP_NOTICE(p_hwfn, 0,
     "This function can't be set as default\n");
  return ECORE_INVAL;
 }
}
