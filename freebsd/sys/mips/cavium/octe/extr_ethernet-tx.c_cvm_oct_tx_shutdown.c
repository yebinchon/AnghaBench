
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet {scalar_t__ if_softc; } ;
struct TYPE_2__ {int * tx_free_queue; } ;
typedef TYPE_1__ cvm_oct_private_t ;


 int IF_DRAIN (int *) ;

void cvm_oct_tx_shutdown(struct ifnet *ifp)
{
 cvm_oct_private_t *priv = (cvm_oct_private_t *)ifp->if_softc;
 int qos;

 for (qos = 0; qos < 16; qos++) {
  IF_DRAIN(&priv->tx_free_queue[qos]);
 }
}
