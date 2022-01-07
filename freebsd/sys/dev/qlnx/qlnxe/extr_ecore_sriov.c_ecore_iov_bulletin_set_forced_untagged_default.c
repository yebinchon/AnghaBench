
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct TYPE_4__ {TYPE_1__* p_virt; } ;
struct ecore_vf_info {scalar_t__ state; TYPE_2__ bulletin; scalar_t__ b_malicious; } ;
struct ecore_hwfn {int p_dev; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_3__ {int valid_bitmap; int default_only_untagged; } ;


 int DP_NOTICE (int ,int,char*,int) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int) ;
 int ECORE_INVAL ;
 int ECORE_MSG_IOV ;
 int ECORE_SUCCESS ;
 int VFPF_BULLETIN_UNTAGGED_DEFAULT ;
 int VFPF_BULLETIN_UNTAGGED_DEFAULT_FORCED ;
 scalar_t__ VF_ENABLED ;
 struct ecore_vf_info* ecore_iov_get_vf_info (struct ecore_hwfn*,int ,int) ;

enum _ecore_status_t
ecore_iov_bulletin_set_forced_untagged_default(struct ecore_hwfn *p_hwfn,
            bool b_untagged_only,
            int vfid)
{
 struct ecore_vf_info *vf_info;
 u64 feature;

 vf_info = ecore_iov_get_vf_info(p_hwfn, (u16)vfid, 1);
 if (!vf_info) {
  DP_NOTICE(p_hwfn->p_dev, 1,
     "Can not set untagged default, invalid vfid [%d]\n",
     vfid);
  return ECORE_INVAL;
 }
 if (vf_info->b_malicious) {
  DP_NOTICE(p_hwfn->p_dev, 0,
     "Can't set untagged default to malicious VF [%d]\n",
     vfid);
  return ECORE_INVAL;
 }




 if (vf_info->state == VF_ENABLED) {
  DP_VERBOSE(p_hwfn, ECORE_MSG_IOV,
      "Can't support untagged change for vfid[%d] - VF is already active\n",
      vfid);
  return ECORE_INVAL;
 }




 feature = (1 << VFPF_BULLETIN_UNTAGGED_DEFAULT) |
    (1 << VFPF_BULLETIN_UNTAGGED_DEFAULT_FORCED);
 vf_info->bulletin.p_virt->valid_bitmap |= feature;

 vf_info->bulletin.p_virt->default_only_untagged = b_untagged_only ? 1
           : 0;

 return ECORE_SUCCESS;
}
