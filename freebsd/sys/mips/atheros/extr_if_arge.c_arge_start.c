
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct arge_softc* if_softc; } ;
struct arge_softc {int dummy; } ;


 int ARGE_LOCK (struct arge_softc*) ;
 int ARGE_UNLOCK (struct arge_softc*) ;
 int arge_start_locked (struct ifnet*) ;

__attribute__((used)) static void
arge_start(struct ifnet *ifp)
{
 struct arge_softc *sc;

 sc = ifp->if_softc;

 ARGE_LOCK(sc);
 arge_start_locked(ifp);
 ARGE_UNLOCK(sc);
}
