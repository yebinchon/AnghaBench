
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __qlnx_iov_chk_ucast (void*,int,void*) ;

int
qlnx_iov_chk_ucast(void *p_hwfn, int vfid, void *params)
{
 return (__qlnx_iov_chk_ucast(p_hwfn, vfid, params));
}
