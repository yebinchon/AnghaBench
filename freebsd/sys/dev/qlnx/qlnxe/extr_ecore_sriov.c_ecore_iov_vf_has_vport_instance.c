
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ecore_vf_info {int vport_instance; } ;
struct ecore_hwfn {int dummy; } ;


 struct ecore_vf_info* ecore_iov_get_vf_info (struct ecore_hwfn*,int ,int) ;

bool ecore_iov_vf_has_vport_instance(struct ecore_hwfn *p_hwfn, int vfid)
{
 struct ecore_vf_info *p_vf_info;

 p_vf_info = ecore_iov_get_vf_info(p_hwfn, (u16)vfid, 1);
 if (!p_vf_info)
  return 0;

 return !!p_vf_info->vport_instance;
}
