
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
struct dwc_softc {int link_is_up; struct mii_data* mii_softc; } ;
typedef int device_t ;


 int CONF_DM ;
 int CONF_FES ;
 int CONF_PS ;
 int DWC_ASSERT_LOCKED (struct dwc_softc*) ;




 int IFM_ACTIVE ;
 int IFM_FDX ;

 int IFM_OPTIONS (int ) ;
 int IFM_SUBTYPE (int ) ;
 int MAC_CONFIGURATION ;
 int READ4 (struct dwc_softc*,int ) ;
 int WRITE4 (struct dwc_softc*,int ,int) ;
 struct dwc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static void
dwc_miibus_statchg(device_t dev)
{
 struct dwc_softc *sc;
 struct mii_data *mii;
 uint32_t reg;






 sc = device_get_softc(dev);

 DWC_ASSERT_LOCKED(sc);

 mii = sc->mii_softc;

 if (mii->mii_media_status & IFM_ACTIVE)
  sc->link_is_up = 1;
 else
  sc->link_is_up = 0;

 reg = READ4(sc, MAC_CONFIGURATION);
 switch (IFM_SUBTYPE(mii->mii_media_active)) {
 case 131:
 case 132:
  reg &= ~(CONF_FES | CONF_PS);
  break;
 case 130:
  reg |= (CONF_FES | CONF_PS);
  break;
 case 129:
  reg &= ~(CONF_FES);
  reg |= (CONF_PS);
  break;
 case 128:
  sc->link_is_up = 0;
  return;
 default:
  sc->link_is_up = 0;
  device_printf(dev, "Unsupported media %u\n",
      IFM_SUBTYPE(mii->mii_media_active));
  return;
 }
 if ((IFM_OPTIONS(mii->mii_media_active) & IFM_FDX) != 0)
  reg |= (CONF_DM);
 else
  reg &= ~(CONF_DM);
 WRITE4(sc, MAC_CONFIGURATION, reg);
}
