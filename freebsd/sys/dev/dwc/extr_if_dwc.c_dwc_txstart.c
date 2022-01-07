
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct dwc_softc* if_softc; } ;
struct dwc_softc {int dummy; } ;


 int DWC_LOCK (struct dwc_softc*) ;
 int DWC_UNLOCK (struct dwc_softc*) ;
 int dwc_txstart_locked (struct dwc_softc*) ;

__attribute__((used)) static void
dwc_txstart(struct ifnet *ifp)
{
 struct dwc_softc *sc = ifp->if_softc;

 DWC_LOCK(sc);
 dwc_txstart_locked(sc);
 DWC_UNLOCK(sc);
}
