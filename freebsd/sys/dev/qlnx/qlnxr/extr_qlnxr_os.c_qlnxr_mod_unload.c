
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int qlnx_rdma_deregister_if (int *) ;
 int qlnxr_drv ;

__attribute__((used)) static int
qlnxr_mod_unload(void)
{
 int ret;

 ret = qlnx_rdma_deregister_if(&qlnxr_drv);
 return (ret);
}
