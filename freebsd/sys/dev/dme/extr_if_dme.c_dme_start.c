
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct dme_softc* if_softc; } ;
struct dme_softc {int dummy; } ;


 int DME_LOCK (struct dme_softc*) ;
 int DME_UNLOCK (struct dme_softc*) ;
 int dme_start_locked (struct ifnet*) ;

__attribute__((used)) static void
dme_start(struct ifnet *ifp)
{
 struct dme_softc *sc;

 sc = ifp->if_softc;
 DME_LOCK(sc);
 dme_start_locked(ifp);
 DME_UNLOCK(sc);
}
