
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_softc {int dummy; } ;
struct ifnet {struct ti_softc* if_softc; } ;


 int TI_LOCK (struct ti_softc*) ;
 int TI_UNLOCK (struct ti_softc*) ;
 int ti_ifmedia_upd_locked (struct ti_softc*) ;

__attribute__((used)) static int
ti_ifmedia_upd(struct ifnet *ifp)
{
 struct ti_softc *sc;
 int error;

 sc = ifp->if_softc;
 TI_LOCK(sc);
 error = ti_ifmedia_upd_locked(sc);
 TI_UNLOCK(sc);

 return (error);
}
