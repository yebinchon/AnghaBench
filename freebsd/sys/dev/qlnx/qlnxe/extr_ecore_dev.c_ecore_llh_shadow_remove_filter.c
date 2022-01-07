
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ecore_llh_filter {int dummy; } ecore_llh_filter ;
typedef scalar_t__ u8 ;
typedef int u32 ;
struct ecore_dev {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_NOTICE (struct ecore_dev*,int,char*) ;
 int ECORE_INVAL ;
 scalar_t__ ECORE_LLH_INVALID_FILTER_IDX ;
 int ECORE_SUCCESS ;
 int __ecore_llh_shadow_remove_filter (struct ecore_dev*,scalar_t__,scalar_t__,int *) ;
 int ecore_llh_shadow_search_filter (struct ecore_dev*,scalar_t__,union ecore_llh_filter*,scalar_t__*) ;

__attribute__((used)) static enum _ecore_status_t
ecore_llh_shadow_remove_filter(struct ecore_dev *p_dev, u8 ppfid,
          union ecore_llh_filter *p_filter,
          u8 *p_filter_idx, u32 *p_ref_cnt)
{
 enum _ecore_status_t rc;

 rc = ecore_llh_shadow_search_filter(p_dev, ppfid, p_filter,
         p_filter_idx);
 if (rc != ECORE_SUCCESS)
  return rc;


 if (*p_filter_idx == ECORE_LLH_INVALID_FILTER_IDX) {
  DP_NOTICE(p_dev, 0,
     "Failed to find a filter in the LLH shadow\n");
  return ECORE_INVAL;
 }

 return __ecore_llh_shadow_remove_filter(p_dev, ppfid, *p_filter_idx,
      p_ref_cnt);
}
