
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {char** macs; } ;
struct TYPE_5__ {TYPE_1__* p_virt; } ;
struct ecore_vf_info {TYPE_3__ shadow_config; TYPE_2__ bulletin; } ;
struct ecore_hwfn {int dummy; } ;
struct ecore_filter_ucast {scalar_t__ opcode; char* mac; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_4__ {int valid_bitmap; } ;


 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,...) ;
 int ECORE_ETH_VF_NUM_MAC_FILTERS ;
 scalar_t__ ECORE_FILTER_ADD ;
 scalar_t__ ECORE_FILTER_FLUSH ;
 scalar_t__ ECORE_FILTER_REMOVE ;
 scalar_t__ ECORE_FILTER_REPLACE ;
 int ECORE_INVAL ;
 int ECORE_MSG_IOV ;
 int ECORE_SUCCESS ;
 int ETH_ALEN ;
 int MAC_ADDR_FORCED ;
 int OSAL_MEMCMP (char*,char*,int) ;
 int OSAL_MEMCPY (char*,char*,int) ;
 int OSAL_MEM_ZERO (char*,int) ;

__attribute__((used)) static enum _ecore_status_t ecore_iov_vf_update_mac_shadow(struct ecore_hwfn *p_hwfn,
          struct ecore_vf_info *p_vf,
          struct ecore_filter_ucast *p_params)
{
 char empty_mac[ETH_ALEN];
 int i;

 OSAL_MEM_ZERO(empty_mac, ETH_ALEN);






 if (p_vf->bulletin.p_virt->valid_bitmap & (1 << MAC_ADDR_FORCED))
  return ECORE_SUCCESS;


 if (p_params->opcode == ECORE_FILTER_REMOVE) {
  for (i = 0; i < ECORE_ETH_VF_NUM_MAC_FILTERS; i++) {
   if (!OSAL_MEMCMP(p_vf->shadow_config.macs[i],
      p_params->mac, ETH_ALEN)) {
    OSAL_MEM_ZERO(p_vf->shadow_config.macs[i],
           ETH_ALEN);
    break;
   }
  }

  if (i == ECORE_ETH_VF_NUM_MAC_FILTERS) {
   DP_VERBOSE(p_hwfn, ECORE_MSG_IOV,
       "MAC isn't configured\n");
   return ECORE_INVAL;
  }
 } else if (p_params->opcode == ECORE_FILTER_REPLACE ||
     p_params->opcode == ECORE_FILTER_FLUSH) {
  for (i = 0; i < ECORE_ETH_VF_NUM_MAC_FILTERS; i++)
   OSAL_MEM_ZERO(p_vf->shadow_config.macs[i], ETH_ALEN);
 }


 if (p_params->opcode != ECORE_FILTER_ADD &&
     p_params->opcode != ECORE_FILTER_REPLACE)
  return ECORE_SUCCESS;

 for (i = 0; i < ECORE_ETH_VF_NUM_MAC_FILTERS; i++) {
  if (!OSAL_MEMCMP(p_vf->shadow_config.macs[i],
     empty_mac, ETH_ALEN)) {
   OSAL_MEMCPY(p_vf->shadow_config.macs[i],
        p_params->mac, ETH_ALEN);
   DP_VERBOSE(p_hwfn, ECORE_MSG_IOV,
       "Added MAC at %d entry in shadow\n", i);
   break;
  }
 }

 if (i == ECORE_ETH_VF_NUM_MAC_FILTERS) {
  DP_VERBOSE(p_hwfn, ECORE_MSG_IOV,
      "No available place for MAC\n");
  return ECORE_INVAL;
 }

 return ECORE_SUCCESS;
}
