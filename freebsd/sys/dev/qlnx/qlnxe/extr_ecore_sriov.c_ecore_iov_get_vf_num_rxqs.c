
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ecore_vf_info {int num_rxqs; } ;
struct ecore_hwfn {int dummy; } ;


 struct ecore_vf_info* ecore_iov_get_vf_info (struct ecore_hwfn*,int ,int) ;

u8 ecore_iov_get_vf_num_rxqs(struct ecore_hwfn *p_hwfn,
        u16 rel_vf_id)
{
 struct ecore_vf_info *p_vf;

 p_vf = ecore_iov_get_vf_info(p_hwfn, rel_vf_id, 1);
 if (!p_vf)
  return 0;

 return p_vf->num_rxqs;
}
