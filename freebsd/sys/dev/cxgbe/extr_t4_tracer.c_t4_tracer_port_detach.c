
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adapter {int media; int ifp_lock; TYPE_1__* ifp; } ;
struct TYPE_2__ {int * if_softc; } ;


 int ifmedia_removeall (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int t4_trace_lock ;

void
t4_tracer_port_detach(struct adapter *sc)
{

 sx_xlock(&t4_trace_lock);
 if (sc->ifp != ((void*)0)) {
  mtx_lock(&sc->ifp_lock);
  sc->ifp->if_softc = ((void*)0);
  sc->ifp = ((void*)0);
  mtx_unlock(&sc->ifp_lock);
 }
 ifmedia_removeall(&sc->media);
 sx_xunlock(&t4_trace_lock);
}
