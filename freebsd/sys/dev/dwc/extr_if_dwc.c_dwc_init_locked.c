
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ifnet {int if_drv_flags; } ;
struct dwc_softc {int dwc_callout; int mii_softc; struct ifnet* ifp; } ;


 int CONF_ACS ;
 int CONF_BE ;
 int CONF_JD ;
 int CONF_RE ;
 int CONF_TE ;
 int DWC_ASSERT_LOCKED (struct dwc_softc*) ;
 int IFF_DRV_RUNNING ;
 int INTERRUPT_ENABLE ;
 int INT_EN_DEFAULT ;
 int MAC_CONFIGURATION ;
 int MODE_FUF ;
 int MODE_OSF ;
 int MODE_RSF ;
 int MODE_RTC_LEV32 ;
 int MODE_RTC_SHIFT ;
 int MODE_SR ;
 int MODE_ST ;
 int MODE_TSF ;
 int OPERATION_MODE ;
 int READ4 (struct dwc_softc*,int ) ;
 int WRITE4 (struct dwc_softc*,int ,int) ;
 int callout_reset (int *,int ,int ,struct dwc_softc*) ;
 int dwc_setup_rxfilter (struct dwc_softc*) ;
 int dwc_tick ;
 int hz ;
 int mii_mediachg (int ) ;

__attribute__((used)) static void
dwc_init_locked(struct dwc_softc *sc)
{
 struct ifnet *ifp = sc->ifp;
 uint32_t reg;

 DWC_ASSERT_LOCKED(sc);

 if (ifp->if_drv_flags & IFF_DRV_RUNNING)
  return;

 ifp->if_drv_flags |= IFF_DRV_RUNNING;

 dwc_setup_rxfilter(sc);


 reg = READ4(sc, OPERATION_MODE);
 reg |= (MODE_TSF | MODE_OSF | MODE_FUF);
 reg &= ~(MODE_RSF);
 reg |= (MODE_RTC_LEV32 << MODE_RTC_SHIFT);
 WRITE4(sc, OPERATION_MODE, reg);

 WRITE4(sc, INTERRUPT_ENABLE, INT_EN_DEFAULT);


 reg = READ4(sc, OPERATION_MODE);
 reg |= (MODE_ST | MODE_SR);
 WRITE4(sc, OPERATION_MODE, reg);


 reg = READ4(sc, MAC_CONFIGURATION);
 reg |= (CONF_JD | CONF_ACS | CONF_BE);
 reg |= (CONF_TE | CONF_RE);
 WRITE4(sc, MAC_CONFIGURATION, reg);





 mii_mediachg(sc->mii_softc);
 callout_reset(&sc->dwc_callout, hz, dwc_tick, sc);
}
