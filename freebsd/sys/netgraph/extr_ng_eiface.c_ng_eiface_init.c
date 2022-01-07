
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet {int if_drv_flags; } ;
typedef TYPE_1__* priv_p ;
struct TYPE_2__ {struct ifnet* ifp; } ;


 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;

__attribute__((used)) static void
ng_eiface_init(void *xsc)
{
 priv_p sc = xsc;
 struct ifnet *ifp = sc->ifp;

 ifp->if_drv_flags |= IFF_DRV_RUNNING;
 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
}
