
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet {int if_drv_flags; int if_softc; } ;
typedef TYPE_1__* priv_p ;
struct TYPE_2__ {int node; } ;


 int IFF_DRV_OACTIVE ;
 int ng_eiface_start2 ;
 scalar_t__ ng_send_fn (int ,int *,int *,struct ifnet*,int ) ;

__attribute__((used)) static void
ng_eiface_start(struct ifnet *ifp)
{
 const priv_p priv = (priv_p)ifp->if_softc;


 if (ifp->if_drv_flags & IFF_DRV_OACTIVE)
  return;

 ifp->if_drv_flags |= IFF_DRV_OACTIVE;

 if (ng_send_fn(priv->node, ((void*)0), &ng_eiface_start2, ifp, 0) != 0)
  ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
}
