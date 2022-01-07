
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct dwc_softc* if_softc; } ;
struct dwc_softc {int dummy; } ;


 int DWC_LOCK (struct dwc_softc*) ;
 int DWC_UNLOCK (struct dwc_softc*) ;
 int dwc_media_change_locked (struct dwc_softc*) ;

__attribute__((used)) static int
dwc_media_change(struct ifnet * ifp)
{
 struct dwc_softc *sc;
 int error;

 sc = ifp->if_softc;

 DWC_LOCK(sc);
 error = dwc_media_change_locked(sc);
 DWC_UNLOCK(sc);
 return (error);
}
