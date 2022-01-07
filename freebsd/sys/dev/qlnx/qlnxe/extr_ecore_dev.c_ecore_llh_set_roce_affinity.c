
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
struct ecore_dev {TYPE_1__* p_llh_info; } ;
typedef enum ecore_eng { ____Placeholder_ecore_eng } ecore_eng ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_2__ {scalar_t__ num_ppfid; } ;


 int DP_NOTICE (struct ecore_dev*,int,char*,int) ;
 int ECORE_AGAIN ;



 int ECORE_INVAL ;
 int ECORE_IS_CMT (struct ecore_dev*) ;
 struct ecore_hwfn* ECORE_LEADING_HWFN (struct ecore_dev*) ;
 int ECORE_SUCCESS ;
 int NIG_REG_LLH_ENG_CLS_ROCE_QP_SEL ;
 int NIG_REG_PPF_TO_ENGINE_SEL ;
 int NIG_REG_PPF_TO_ENGINE_SEL_ROCE ;
 struct ecore_ptt* OSAL_NULL ;
 int SET_FIELD (int,int ,int) ;
 int ecore_abs_ppfid (struct ecore_dev*,scalar_t__,scalar_t__*) ;
 struct ecore_ptt* ecore_ptt_acquire (struct ecore_hwfn*) ;
 int ecore_ptt_release (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_rd (struct ecore_hwfn*,struct ecore_ptt*,int) ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,int,int) ;

enum _ecore_status_t ecore_llh_set_roce_affinity(struct ecore_dev *p_dev,
       enum ecore_eng eng)
{
 struct ecore_hwfn *p_hwfn = ECORE_LEADING_HWFN(p_dev);
 struct ecore_ptt *p_ptt = ecore_ptt_acquire(p_hwfn);
 u32 addr, val, eng_sel;
 enum _ecore_status_t rc = ECORE_SUCCESS;
 u8 ppfid, abs_ppfid;

 if (p_ptt == OSAL_NULL)
  return ECORE_AGAIN;

 if (!ECORE_IS_CMT(p_dev))
  goto out;

 switch (eng) {
 case 129:
  eng_sel = 0;
  break;
 case 128:
  eng_sel = 1;
  break;
 case 130:
  eng_sel = 2;
  ecore_wr(p_hwfn, p_ptt, NIG_REG_LLH_ENG_CLS_ROCE_QP_SEL,
    0xf );
  break;
 default:
  DP_NOTICE(p_dev, 0,
     "Invalid affinity value for RoCE [%d]\n", eng);
  rc = ECORE_INVAL;
  goto out;
 }

 for (ppfid = 0; ppfid < p_dev->p_llh_info->num_ppfid; ppfid++) {
  rc = ecore_abs_ppfid(p_dev, ppfid, &abs_ppfid);
  if (rc != ECORE_SUCCESS)
   goto out;

  addr = NIG_REG_PPF_TO_ENGINE_SEL + abs_ppfid * 0x4;
  val = ecore_rd(p_hwfn, p_ptt, addr);
  SET_FIELD(val, NIG_REG_PPF_TO_ENGINE_SEL_ROCE, eng_sel);
  ecore_wr(p_hwfn, p_ptt, addr, val);
 }
out:
 ecore_ptt_release(p_hwfn, p_ptt);

 return rc;
}
