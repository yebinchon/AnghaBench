
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_softc {int dummy; } ;
struct ifnet {struct ti_softc* if_softc; } ;


 int TI_LOCK (struct ti_softc*) ;
 int TI_UNLOCK (struct ti_softc*) ;
 int ti_start_locked (struct ifnet*) ;

__attribute__((used)) static void
ti_start(struct ifnet *ifp)
{
 struct ti_softc *sc;

 sc = ifp->if_softc;
 TI_LOCK(sc);
 ti_start_locked(ifp);
 TI_UNLOCK(sc);
}
