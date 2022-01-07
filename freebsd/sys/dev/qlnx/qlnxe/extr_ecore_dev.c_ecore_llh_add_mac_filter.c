
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; } ;
union ecore_llh_filter {TYPE_1__ mac; } ;
typedef int u8 ;
typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
struct ecore_dev {int mf_bits; } ;
typedef int filter ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_NOTICE (struct ecore_dev*,int,char*,int,int,int,int,int,int,int) ;
 int DP_VERBOSE (struct ecore_dev*,int ,char*,int,int,int,int,int,int,int,int,int,int) ;
 int ECORE_AGAIN ;
 struct ecore_hwfn* ECORE_LEADING_HWFN (struct ecore_dev*) ;
 int ECORE_LLH_FILTER_TYPE_MAC ;
 int ECORE_MF_LLH_MAC_CLSS ;
 int ECORE_MSG_SP ;
 int ECORE_SUCCESS ;
 int ETH_ALEN ;
 int OSAL_MEMCPY (int ,int*,int ) ;
 int OSAL_MEM_ZERO (union ecore_llh_filter*,int) ;
 struct ecore_ptt* OSAL_NULL ;
 int OSAL_TEST_BIT (int ,int *) ;
 int ecore_abs_ppfid (struct ecore_dev*,int,int*) ;
 int ecore_llh_add_filter (struct ecore_hwfn*,struct ecore_ptt*,int,int,int ,int,int) ;
 int ecore_llh_shadow_add_filter (struct ecore_dev*,int,int ,union ecore_llh_filter*,int*,int*) ;
 struct ecore_ptt* ecore_ptt_acquire (struct ecore_hwfn*) ;
 int ecore_ptt_release (struct ecore_hwfn*,struct ecore_ptt*) ;

enum _ecore_status_t ecore_llh_add_mac_filter(struct ecore_dev *p_dev, u8 ppfid,
           u8 mac_addr[ETH_ALEN])
{
 struct ecore_hwfn *p_hwfn = ECORE_LEADING_HWFN(p_dev);
 struct ecore_ptt *p_ptt = ecore_ptt_acquire(p_hwfn);
 union ecore_llh_filter filter;
 u8 filter_idx, abs_ppfid;
 u32 high, low, ref_cnt;
 enum _ecore_status_t rc = ECORE_SUCCESS;

 if (p_ptt == OSAL_NULL)
  return ECORE_AGAIN;

 if (!OSAL_TEST_BIT(ECORE_MF_LLH_MAC_CLSS, &p_dev->mf_bits))
  goto out;

 OSAL_MEM_ZERO(&filter, sizeof(filter));
 OSAL_MEMCPY(filter.mac.addr, mac_addr, ETH_ALEN);
 rc = ecore_llh_shadow_add_filter(p_dev, ppfid,
      ECORE_LLH_FILTER_TYPE_MAC,
      &filter, &filter_idx, &ref_cnt);
 if (rc != ECORE_SUCCESS)
  goto err;

 rc = ecore_abs_ppfid(p_dev, ppfid, &abs_ppfid);
 if (rc != ECORE_SUCCESS)
  goto err;


 if (ref_cnt == 1) {
  high = mac_addr[1] | (mac_addr[0] << 8);
  low = mac_addr[5] | (mac_addr[4] << 8) | (mac_addr[3] << 16) |
        (mac_addr[2] << 24);
  rc = ecore_llh_add_filter(p_hwfn, p_ptt, abs_ppfid, filter_idx,
       0, high, low);
  if (rc != ECORE_SUCCESS)
   goto err;
 }

 DP_VERBOSE(p_dev, ECORE_MSG_SP,
     "LLH: Added MAC filter [%02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx] to ppfid %hhd [abs %hhd] at idx %hhd [ref_cnt %d]\n",
     mac_addr[0], mac_addr[1], mac_addr[2], mac_addr[3],
     mac_addr[4], mac_addr[5], ppfid, abs_ppfid, filter_idx,
     ref_cnt);

 goto out;

err:
 DP_NOTICE(p_dev, 0,
    "LLH: Failed to add MAC filter [%02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx] to ppfid %hhd\n",
    mac_addr[0], mac_addr[1], mac_addr[2], mac_addr[3],
    mac_addr[4], mac_addr[5], ppfid);
out:
 ecore_ptt_release(p_hwfn, p_ptt);

 return rc;
}
