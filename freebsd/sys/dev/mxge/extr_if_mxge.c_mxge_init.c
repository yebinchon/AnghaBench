
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ifnet {int if_drv_flags; } ;
struct TYPE_3__ {int driver_mtx; struct ifnet* ifp; } ;
typedef TYPE_1__ mxge_softc_t ;


 int IFF_DRV_RUNNING ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int mxge_open (TYPE_1__*) ;

__attribute__((used)) static void
mxge_init(void *arg)
{
 mxge_softc_t *sc = arg;
 struct ifnet *ifp = sc->ifp;


 mtx_lock(&sc->driver_mtx);
 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
  (void) mxge_open(sc);
 mtx_unlock(&sc->driver_mtx);
}
