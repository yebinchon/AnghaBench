
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct dc_softc* if_softc; } ;
struct dc_softc {int dummy; } ;


 int DC_LOCK (struct dc_softc*) ;
 int DC_UNLOCK (struct dc_softc*) ;
 int dc_start_locked (struct ifnet*) ;

__attribute__((used)) static void
dc_start(struct ifnet *ifp)
{
 struct dc_softc *sc;

 sc = ifp->if_softc;
 DC_LOCK(sc);
 dc_start_locked(ifp);
 DC_UNLOCK(sc);
}
