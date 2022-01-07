
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct bce_softc* if_softc; } ;
struct bce_softc {int dummy; } ;


 int BCE_LOCK (struct bce_softc*) ;
 int BCE_UNLOCK (struct bce_softc*) ;
 int BCE_VERBOSE ;
 int DBENTER (int ) ;
 int DBEXIT (int ) ;
 int bce_ifmedia_upd_locked (struct ifnet*) ;

__attribute__((used)) static int
bce_ifmedia_upd(struct ifnet *ifp)
{
 struct bce_softc *sc = ifp->if_softc;
 int error;

 DBENTER(BCE_VERBOSE);

 BCE_LOCK(sc);
 error = bce_ifmedia_upd_locked(ifp);
 BCE_UNLOCK(sc);

 DBEXIT(BCE_VERBOSE);
 return (error);
}
