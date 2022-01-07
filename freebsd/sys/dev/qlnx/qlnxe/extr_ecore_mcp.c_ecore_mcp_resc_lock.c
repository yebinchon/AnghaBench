
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ecore_resc_lock_params {scalar_t__ retry_num; scalar_t__ b_granted; int retry_interval; scalar_t__ sleep_b4_retry; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 scalar_t__ DIV_ROUND_UP (int ,int) ;
 int ECORE_SUCCESS ;
 int OSAL_MSLEEP (scalar_t__) ;
 int OSAL_UDELAY (int ) ;
 int __ecore_mcp_resc_lock (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_resc_lock_params*) ;

enum _ecore_status_t
ecore_mcp_resc_lock(struct ecore_hwfn *p_hwfn, struct ecore_ptt *p_ptt,
      struct ecore_resc_lock_params *p_params)
{
 u32 retry_cnt = 0;
 enum _ecore_status_t rc;

 do {

  if (retry_cnt) {
   if (p_params->sleep_b4_retry) {
    u32 retry_interval_in_ms =
     DIV_ROUND_UP(p_params->retry_interval,
           1000);

    OSAL_MSLEEP(retry_interval_in_ms);
   } else {
    OSAL_UDELAY(p_params->retry_interval);
   }
  }

  rc = __ecore_mcp_resc_lock(p_hwfn, p_ptt, p_params);
  if (rc != ECORE_SUCCESS)
   return rc;

  if (p_params->b_granted)
   break;
 } while (retry_cnt++ < p_params->retry_num);

 return ECORE_SUCCESS;
}
