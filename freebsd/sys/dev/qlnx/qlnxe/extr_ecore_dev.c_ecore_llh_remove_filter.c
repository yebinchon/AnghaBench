
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int p_dev; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 scalar_t__ ECORE_IS_E4 (int ) ;
 int ecore_llh_remove_filter_e4 (struct ecore_hwfn*,struct ecore_ptt*,int ,int ) ;
 int ecore_llh_remove_filter_e5 (struct ecore_hwfn*,struct ecore_ptt*,int ,int ) ;

__attribute__((used)) static enum _ecore_status_t
ecore_llh_remove_filter(struct ecore_hwfn *p_hwfn, struct ecore_ptt *p_ptt,
   u8 abs_ppfid, u8 filter_idx)
{
 if (ECORE_IS_E4(p_hwfn->p_dev))
  return ecore_llh_remove_filter_e4(p_hwfn, p_ptt, abs_ppfid,
        filter_idx);
 else
  return ecore_llh_remove_filter_e5(p_hwfn, p_ptt, abs_ppfid,
        filter_idx);
}
