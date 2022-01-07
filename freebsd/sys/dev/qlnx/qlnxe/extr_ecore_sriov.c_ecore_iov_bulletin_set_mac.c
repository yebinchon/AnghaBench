
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct TYPE_4__ {TYPE_1__* p_virt; } ;
struct ecore_vf_info {TYPE_2__ bulletin; scalar_t__ b_malicious; } ;
struct ecore_hwfn {int p_dev; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_3__ {int valid_bitmap; int mac; } ;


 int DP_NOTICE (int ,int,char*,int) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*) ;
 int ECORE_INVAL ;
 int ECORE_MSG_IOV ;
 int ECORE_SUCCESS ;
 int ETH_ALEN ;
 int MAC_ADDR_FORCED ;
 int OSAL_MEMCPY (int ,int *,int ) ;
 int VFPF_BULLETIN_MAC_ADDR ;
 struct ecore_vf_info* ecore_iov_get_vf_info (struct ecore_hwfn*,int ,int) ;

enum _ecore_status_t ecore_iov_bulletin_set_mac(struct ecore_hwfn *p_hwfn,
      u8 *mac, int vfid)
{
 struct ecore_vf_info *vf_info;
 u64 feature;

 vf_info = ecore_iov_get_vf_info(p_hwfn, (u16)vfid, 1);
 if (!vf_info) {
  DP_NOTICE(p_hwfn->p_dev, 1, "Can not set MAC, invalid vfid [%d]\n",
     vfid);
  return ECORE_INVAL;
 }
 if (vf_info->b_malicious) {
  DP_NOTICE(p_hwfn->p_dev, 0, "Can't set MAC to malicious VF [%d]\n",
     vfid);
  return ECORE_INVAL;
 }

 if (vf_info->bulletin.p_virt->valid_bitmap & (1 << MAC_ADDR_FORCED)) {
  DP_VERBOSE(p_hwfn, ECORE_MSG_IOV, "Can not set MAC, Forced MAC is configured\n");
  return ECORE_INVAL;
 }

 feature = 1 << VFPF_BULLETIN_MAC_ADDR;
 OSAL_MEMCPY(vf_info->bulletin.p_virt->mac,
      mac, ETH_ALEN);

 vf_info->bulletin.p_virt->valid_bitmap |= feature;

 return ECORE_SUCCESS;
}
