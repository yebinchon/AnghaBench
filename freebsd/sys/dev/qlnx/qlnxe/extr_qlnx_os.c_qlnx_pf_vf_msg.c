
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int __qlnx_pf_vf_msg (void*,int ) ;

int
qlnx_pf_vf_msg(void *p_hwfn, uint16_t relative_vf_id)
{
 return (__qlnx_pf_vf_msg(p_hwfn, relative_vf_id));
}
