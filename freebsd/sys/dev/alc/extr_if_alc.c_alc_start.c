
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct alc_softc* if_softc; } ;
struct alc_softc {int dummy; } ;


 int ALC_LOCK (struct alc_softc*) ;
 int ALC_UNLOCK (struct alc_softc*) ;
 int alc_start_locked (struct ifnet*) ;

__attribute__((used)) static void
alc_start(struct ifnet *ifp)
{
 struct alc_softc *sc;

 sc = ifp->if_softc;
 ALC_LOCK(sc);
 alc_start_locked(ifp);
 ALC_UNLOCK(sc);
}
