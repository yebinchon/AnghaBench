
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
typedef scalar_t__ u16 ;
struct ecore_vf_info {int dummy; } ;
struct ecore_hwfn {TYPE_3__* pf_iov_info; TYPE_2__* p_dev; } ;
struct TYPE_6__ {struct ecore_vf_info* vfs_array; } ;
struct TYPE_5__ {TYPE_1__* p_iov_info; } ;
struct TYPE_4__ {scalar_t__ first_vf_in_pf; } ;


 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,scalar_t__) ;
 int ECORE_MSG_IOV ;
 struct ecore_vf_info* OSAL_NULL ;
 int _ecore_iov_pf_sanity_check (struct ecore_hwfn*,size_t,int) ;

__attribute__((used)) static struct ecore_vf_info *
ecore_sriov_get_vf_from_absid(struct ecore_hwfn *p_hwfn, u16 abs_vfid)
{
 u8 min = (u8)p_hwfn->p_dev->p_iov_info->first_vf_in_pf;

 if (!_ecore_iov_pf_sanity_check(p_hwfn, (int)abs_vfid - min, 0)) {
  DP_VERBOSE(p_hwfn, ECORE_MSG_IOV,
      "Got indication for VF [abs 0x%08x] that cannot be handled by PF\n",
      abs_vfid);
  return OSAL_NULL;
 }

 return &p_hwfn->pf_iov_info->vfs_array[(u8)abs_vfid - min];
}
