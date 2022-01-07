
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ifnet {int if_drv_flags; } ;
struct dwc_softc {int dwc_callout; scalar_t__ stats_harvest_count; scalar_t__ tx_watchdog_count; struct ifnet* ifp; } ;


 int CONF_RE ;
 int CONF_TE ;
 int DWC_ASSERT_LOCKED (struct dwc_softc*) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int MAC_CONFIGURATION ;
 int MODE_FTF ;
 int MODE_SR ;
 int MODE_ST ;
 int OPERATION_MODE ;
 int READ4 (struct dwc_softc*,int ) ;
 int WRITE4 (struct dwc_softc*,int ,int) ;
 int callout_stop (int *) ;

__attribute__((used)) static void
dwc_stop_locked(struct dwc_softc *sc)
{
 struct ifnet *ifp;
 uint32_t reg;

 DWC_ASSERT_LOCKED(sc);

 ifp = sc->ifp;
 ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
 sc->tx_watchdog_count = 0;
 sc->stats_harvest_count = 0;

 callout_stop(&sc->dwc_callout);


 reg = READ4(sc, OPERATION_MODE);
 reg &= ~(MODE_ST);
 WRITE4(sc, OPERATION_MODE, reg);


 reg = READ4(sc, OPERATION_MODE);
 reg |= (MODE_FTF);
 WRITE4(sc, OPERATION_MODE, reg);


 reg = READ4(sc, MAC_CONFIGURATION);
 reg &= ~(CONF_TE | CONF_RE);
 WRITE4(sc, MAC_CONFIGURATION, reg);


 reg = READ4(sc, OPERATION_MODE);
 reg &= ~(MODE_SR);
 WRITE4(sc, OPERATION_MODE, reg);
}
