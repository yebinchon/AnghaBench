
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct et_softc* if_softc; } ;
struct et_softc {int dummy; } ;


 int ET_LOCK (struct et_softc*) ;
 int ET_UNLOCK (struct et_softc*) ;
 int et_ifmedia_upd_locked (struct ifnet*) ;

__attribute__((used)) static int
et_ifmedia_upd(struct ifnet *ifp)
{
 struct et_softc *sc;
 int res;

 sc = ifp->if_softc;
 ET_LOCK(sc);
 res = et_ifmedia_upd_locked(ifp);
 ET_UNLOCK(sc);

 return (res);
}
