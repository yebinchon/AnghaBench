
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct dtsec_softc* if_softc; } ;
struct dtsec_softc {int (* sc_start_locked ) (struct dtsec_softc*) ;} ;


 int DTSEC_LOCK (struct dtsec_softc*) ;
 int DTSEC_UNLOCK (struct dtsec_softc*) ;
 int stub1 (struct dtsec_softc*) ;

__attribute__((used)) static void
dtsec_if_start(struct ifnet *ifp)
{
 struct dtsec_softc *sc;

 sc = ifp->if_softc;
 DTSEC_LOCK(sc);
 sc->sc_start_locked(sc);
 DTSEC_UNLOCK(sc);
}
