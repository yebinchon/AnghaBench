
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ifnet {int if_drv_flags; } ;
struct TYPE_3__ {int qla_initiate_recovery; int offline; scalar_t__ enable_error_recovery; struct ifnet* ifp; } ;
typedef TYPE_1__ qla_host_t ;


 int IFF_DRV_RUNNING ;
 int cold ;

void
qla_set_error_recovery(qla_host_t *ha)
{
 struct ifnet *ifp = ha->ifp;

 if (!cold && ha->enable_error_recovery) {
  if (ifp)
   ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
  ha->qla_initiate_recovery = 1;
 } else
  ha->offline = 1;
 return;
}
