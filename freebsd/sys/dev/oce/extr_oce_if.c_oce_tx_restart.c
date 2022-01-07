
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct oce_wq {int txtask; int br; } ;
struct TYPE_5__ {int if_drv_flags; int if_snd; } ;
struct TYPE_4__ {TYPE_3__* ifp; } ;
typedef TYPE_1__* POCE_SOFTC ;


 int IFF_DRV_RUNNING ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int drbr_empty (TYPE_3__*,int ) ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_swi ;

__attribute__((used)) static void
oce_tx_restart(POCE_SOFTC sc, struct oce_wq *wq)
{

 if ((sc->ifp->if_drv_flags & IFF_DRV_RUNNING) != IFF_DRV_RUNNING)
  return;




 if (!IFQ_DRV_IS_EMPTY(&sc->ifp->if_snd))

  taskqueue_enqueue(taskqueue_swi, &wq->txtask);

}
