
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ecore_vf_info {void* ctx; } ;
struct ecore_hwfn {int dummy; } ;


 void* OSAL_NULL ;
 struct ecore_vf_info* ecore_iov_get_vf_info (struct ecore_hwfn*,int ,int) ;

void *ecore_iov_get_vf_ctx(struct ecore_hwfn *p_hwfn,
      u16 rel_vf_id)
{
 struct ecore_vf_info *p_vf;

 p_vf = ecore_iov_get_vf_info(p_hwfn, rel_vf_id, 1);
 if (!p_vf)
  return OSAL_NULL;

 return p_vf->ctx;
}
