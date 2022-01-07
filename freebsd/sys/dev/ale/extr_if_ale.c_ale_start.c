
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct ale_softc* if_softc; } ;
struct ale_softc {int dummy; } ;


 int ALE_LOCK (struct ale_softc*) ;
 int ALE_UNLOCK (struct ale_softc*) ;
 int ale_start_locked (struct ifnet*) ;

__attribute__((used)) static void
ale_start(struct ifnet *ifp)
{
        struct ale_softc *sc;

 sc = ifp->if_softc;
 ALE_LOCK(sc);
 ale_start_locked(ifp);
 ALE_UNLOCK(sc);
}
