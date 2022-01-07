
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet {int if_drv_flags; } ;
struct TYPE_2__ {int (* stop ) (struct ifnet*) ;struct ifnet* ifp; } ;
typedef TYPE_1__ cvm_oct_private_t ;


 int IFF_DRV_RUNNING ;
 int stub1 (struct ifnet*) ;

__attribute__((used)) static void
octe_stop(void *arg)
{
 struct ifnet *ifp;
 cvm_oct_private_t *priv;

 priv = arg;
 ifp = priv->ifp;

 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
  return;

 if (priv->stop != ((void*)0))
  priv->stop(ifp);

 ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
}
