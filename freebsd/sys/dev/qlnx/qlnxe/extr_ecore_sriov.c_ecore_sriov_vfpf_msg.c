
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct regpair {int lo; scalar_t__ hi; } ;
struct TYPE_2__ {int pending_req; int b_pending_msg; } ;
struct ecore_vf_info {int relative_vf_id; TYPE_1__ vf_mbx; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int ECORE_SUCCESS ;
 int OSAL_PF_VF_MSG (struct ecore_hwfn*,int ) ;
 struct ecore_vf_info* ecore_sriov_get_vf_from_absid (struct ecore_hwfn*,int ) ;

__attribute__((used)) static enum _ecore_status_t ecore_sriov_vfpf_msg(struct ecore_hwfn *p_hwfn,
       u16 abs_vfid,
       struct regpair *vf_msg)
{
 struct ecore_vf_info *p_vf = ecore_sriov_get_vf_from_absid(p_hwfn,
           abs_vfid);

 if (!p_vf)
  return ECORE_SUCCESS;




 p_vf->vf_mbx.pending_req = (((u64)vf_msg->hi) << 32) |
       vf_msg->lo;

 p_vf->vf_mbx.b_pending_msg = 1;

 return OSAL_PF_VF_MSG(p_hwfn, p_vf->relative_vf_id);
}
