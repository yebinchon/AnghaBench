
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct ecore_hwfn {TYPE_1__* p_dev; } ;
struct ecore_hw_sriov_info {scalar_t__ total_vfs; } ;
struct TYPE_2__ {struct ecore_hw_sriov_info* p_iov_info; } ;


 scalar_t__ MAX_NUM_VFS_E4 ;
 scalar_t__ ecore_iov_is_valid_vfid (struct ecore_hwfn*,scalar_t__,int,int) ;

u16 ecore_iov_get_next_active_vf(struct ecore_hwfn *p_hwfn, u16 rel_vf_id)
{
 struct ecore_hw_sriov_info *p_iov = p_hwfn->p_dev->p_iov_info;
 u16 i;

 if (!p_iov)
  goto out;

 for (i = rel_vf_id; i < p_iov->total_vfs; i++)
  if (ecore_iov_is_valid_vfid(p_hwfn, rel_vf_id, 1, 0))
   return i;

out:
 return MAX_NUM_VFS_E4;
}
