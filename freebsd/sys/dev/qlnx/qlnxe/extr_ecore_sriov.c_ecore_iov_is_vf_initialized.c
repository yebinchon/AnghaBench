
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ecore_vf_info {scalar_t__ state; } ;
struct ecore_hwfn {int dummy; } ;


 scalar_t__ VF_ENABLED ;
 struct ecore_vf_info* ecore_iov_get_vf_info (struct ecore_hwfn*,int ,int) ;

bool ecore_iov_is_vf_initialized(struct ecore_hwfn *p_hwfn,
     u16 rel_vf_id)
{
 struct ecore_vf_info *p_vf;

 p_vf = ecore_iov_get_vf_info(p_hwfn, rel_vf_id, 1);
 if (!p_vf)
  return 0;

 return (p_vf->state == VF_ENABLED);
}
