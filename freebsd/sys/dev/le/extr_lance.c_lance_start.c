
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lance_softc {int (* sc_start_locked ) (struct lance_softc*) ;} ;
struct ifnet {struct lance_softc* if_softc; } ;


 int LE_LOCK (struct lance_softc*) ;
 int LE_UNLOCK (struct lance_softc*) ;
 int stub1 (struct lance_softc*) ;

__attribute__((used)) static void
lance_start(struct ifnet *ifp)
{
 struct lance_softc *sc = ifp->if_softc;

 LE_LOCK(sc);
 (*sc->sc_start_locked)(sc);
 LE_UNLOCK(sc);
}
