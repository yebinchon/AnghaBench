
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_flags; } ;
struct hme_softc {struct ifnet* sc_ifp; } ;


 int HME_LOCK (struct hme_softc*) ;
 int HME_UNLOCK (struct hme_softc*) ;
 int IFF_UP ;
 int hme_init_locked (struct hme_softc*) ;

void
hme_resume(struct hme_softc *sc)
{
 struct ifnet *ifp = sc->sc_ifp;

 HME_LOCK(sc);
 if ((ifp->if_flags & IFF_UP) != 0)
  hme_init_locked(sc);
 HME_UNLOCK(sc);
}
