
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ecore_ptt {int dummy; } ;
struct ecore_llh_filter_e4_details {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef int filter_details ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int OSAL_MEMSET (struct ecore_llh_filter_e4_details*,int ,int) ;
 int ecore_llh_access_filter_e4 (struct ecore_hwfn*,struct ecore_ptt*,int ,int ,struct ecore_llh_filter_e4_details*,int) ;

__attribute__((used)) static enum _ecore_status_t
ecore_llh_remove_filter_e4(struct ecore_hwfn *p_hwfn,
      struct ecore_ptt *p_ptt, u8 abs_ppfid, u8 filter_idx)
{
 struct ecore_llh_filter_e4_details filter_details;

 OSAL_MEMSET(&filter_details, 0, sizeof(filter_details));

 return ecore_llh_access_filter_e4(p_hwfn, p_ptt, abs_ppfid, filter_idx,
       &filter_details,
       1 );
}
