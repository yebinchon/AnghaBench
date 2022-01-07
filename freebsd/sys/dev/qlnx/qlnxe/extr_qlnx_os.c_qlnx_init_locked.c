
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct ifnet {int if_drv_flags; } ;
struct TYPE_8__ {struct ifnet* ifp; } ;
typedef TYPE_1__ qlnx_host_t ;


 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int QL_DPRINT1 (TYPE_1__*,char*) ;
 scalar_t__ qlnx_load (TYPE_1__*) ;
 int qlnx_rdma_dev_open (TYPE_1__*) ;
 int qlnx_stop (TYPE_1__*) ;
 scalar_t__ qlnx_vf_device (TYPE_1__*) ;

__attribute__((used)) static void
qlnx_init_locked(qlnx_host_t *ha)
{
 struct ifnet *ifp = ha->ifp;

 QL_DPRINT1(ha, "Driver Initialization start \n");

 qlnx_stop(ha);

 if (qlnx_load(ha) == 0) {

  ifp->if_drv_flags |= IFF_DRV_RUNNING;
  ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;






 }

 return;
}
