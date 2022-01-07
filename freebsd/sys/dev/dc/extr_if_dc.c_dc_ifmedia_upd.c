
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct dc_softc* if_softc; } ;
struct dc_softc {int dummy; } ;


 int DC_LOCK (struct dc_softc*) ;
 int DC_UNLOCK (struct dc_softc*) ;
 int dc_ifmedia_upd_locked (struct dc_softc*) ;

__attribute__((used)) static int
dc_ifmedia_upd(struct ifnet *ifp)
{
 struct dc_softc *sc;
 int error;

 sc = ifp->if_softc;
 DC_LOCK(sc);
 error = dc_ifmedia_upd_locked(sc);
 DC_UNLOCK(sc);
 return (error);
}
