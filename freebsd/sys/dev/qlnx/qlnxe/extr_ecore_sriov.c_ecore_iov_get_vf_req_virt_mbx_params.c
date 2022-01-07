
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {void* req_virt; } ;
struct ecore_vf_info {TYPE_1__ vf_mbx; } ;
struct ecore_hwfn {int dummy; } ;


 struct ecore_vf_info* ecore_iov_get_vf_info (struct ecore_hwfn*,int,int) ;

void ecore_iov_get_vf_req_virt_mbx_params(struct ecore_hwfn *p_hwfn,
       u16 rel_vf_id,
       void **pp_req_virt_addr,
       u16 *p_req_virt_size)
{
 struct ecore_vf_info *vf_info =
  ecore_iov_get_vf_info(p_hwfn, rel_vf_id, 1);

 if (!vf_info)
  return;

 if (pp_req_virt_addr)
  *pp_req_virt_addr = vf_info->vf_mbx.req_virt;

 if (p_req_virt_size)
  *p_req_virt_size = sizeof(*vf_info->vf_mbx.req_virt);
}
