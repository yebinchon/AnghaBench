
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int notify; int remove; int add; } ;


 int qlnx_rdma_register_if (TYPE_1__*) ;
 int qlnxr_add ;
 TYPE_1__ qlnxr_drv ;
 int qlnxr_notify ;
 int qlnxr_remove ;

__attribute__((used)) static int
qlnxr_mod_load(void)
{
 int ret;


 qlnxr_drv.add = qlnxr_add;
 qlnxr_drv.remove = qlnxr_remove;
 qlnxr_drv.notify = qlnxr_notify;

 ret = qlnx_rdma_register_if(&qlnxr_drv);

 return (0);
}
