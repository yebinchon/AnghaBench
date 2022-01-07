
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stge_softc {int dummy; } ;
struct ifnet {struct stge_softc* if_softc; } ;


 int STGE_LOCK (struct stge_softc*) ;
 int STGE_UNLOCK (struct stge_softc*) ;
 int stge_start_locked (struct ifnet*) ;

__attribute__((used)) static void
stge_start(struct ifnet *ifp)
{
 struct stge_softc *sc;

 sc = ifp->if_softc;
 STGE_LOCK(sc);
 stge_start_locked(ifp);
 STGE_UNLOCK(sc);
}
