
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int __qlnx_osal_iov_vf_cleanup (void*,int ) ;

void
qlnx_osal_iov_vf_cleanup(void *p_hwfn, uint8_t relative_vf_id)
{
 __qlnx_osal_iov_vf_cleanup(p_hwfn, relative_vf_id);
 return;
}
