
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet {scalar_t__ if_softc; } ;
struct TYPE_2__ {int (* stop ) (struct ifnet*) ;int open; } ;
typedef TYPE_1__ cvm_oct_private_t ;


 int ENXIO ;
 scalar_t__ cvm_oct_common_init (struct ifnet*) ;
 int cvm_oct_common_open ;
 int cvm_oct_common_stop (struct ifnet*) ;
 int stub1 (struct ifnet*) ;

int cvm_oct_xaui_init(struct ifnet *ifp)
{
 cvm_oct_private_t *priv = (cvm_oct_private_t *)ifp->if_softc;

 if (cvm_oct_common_init(ifp) != 0)
     return ENXIO;

 priv->open = cvm_oct_common_open;
 priv->stop = cvm_oct_common_stop;
 priv->stop(ifp);

 return 0;
}
