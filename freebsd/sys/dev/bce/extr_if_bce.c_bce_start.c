
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct bce_softc* if_softc; } ;
struct bce_softc {int dummy; } ;


 int BCE_LOCK (struct bce_softc*) ;
 int BCE_UNLOCK (struct bce_softc*) ;
 int BCE_VERBOSE_SEND ;
 int DBENTER (int ) ;
 int DBEXIT (int ) ;
 int bce_start_locked (struct ifnet*) ;

__attribute__((used)) static void
bce_start(struct ifnet *ifp)
{
 struct bce_softc *sc = ifp->if_softc;

 DBENTER(BCE_VERBOSE_SEND);

 BCE_LOCK(sc);
 bce_start_locked(ifp);
 BCE_UNLOCK(sc);

 DBEXIT(BCE_VERBOSE_SEND);
}
