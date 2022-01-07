
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct oce_wq {int tx_lock; int queue_index; TYPE_1__* parent; } ;
struct ifnet {int dummy; } ;
struct TYPE_2__ {int dev; struct ifnet* ifp; } ;
typedef TYPE_1__* POCE_SOFTC ;


 int LOCK (int *) ;
 int UNLOCK (int *) ;
 int device_printf (int ,char*,int ) ;
 int oce_multiq_transmit (struct ifnet*,int *,struct oce_wq*) ;
 int oce_start (struct ifnet*) ;

void
oce_tx_task(void *arg, int npending)
{
 struct oce_wq *wq = arg;
 POCE_SOFTC sc = wq->parent;
 struct ifnet *ifp = sc->ifp;
 int rc = 0;
 oce_start(ifp);


}
