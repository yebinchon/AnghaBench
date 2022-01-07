
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ecore_vf_info {int opaque_fid; } ;
struct ecore_hwfn {int dummy; } ;


 struct ecore_vf_info* ecore_iov_get_vf_info (struct ecore_hwfn*,int ,int) ;

void ecore_iov_get_vfs_opaque_fid(struct ecore_hwfn *p_hwfn, int vfid,
      u16 *opaque_fid)
{
 struct ecore_vf_info *vf_info;

 vf_info = ecore_iov_get_vf_info(p_hwfn, (u16)vfid, 1);
 if (!vf_info)
  return;

 *opaque_fid = vf_info->opaque_fid;
}
