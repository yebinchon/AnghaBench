
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct glc_softc* if_softc; } ;
struct glc_softc {int sc_mtx; } ;


 int glc_start_locked (struct ifnet*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
glc_start(struct ifnet *ifp)
{
 struct glc_softc *sc = ifp->if_softc;

 mtx_lock(&sc->sc_mtx);
 glc_start_locked(ifp);
 mtx_unlock(&sc->sc_mtx);
}
