
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xae_softc {int link_is_up; struct mii_data* mii_softc; } ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
typedef int device_t ;






 int IFM_ACTIVE ;

 int IFM_SUBTYPE (int ) ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int WRITE4 (struct xae_softc*,int ,int ) ;
 int XAE_ASSERT_LOCKED (struct xae_softc*) ;
 int XAE_SPEED ;
 struct xae_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static void
xae_miibus_statchg(device_t dev)
{
 struct xae_softc *sc;
 struct mii_data *mii;
 uint32_t reg;






 sc = device_get_softc(dev);

 XAE_ASSERT_LOCKED(sc);

 mii = sc->mii_softc;

 if (mii->mii_media_status & IFM_ACTIVE)
  sc->link_is_up = 1;
 else
  sc->link_is_up = 0;

 switch (IFM_SUBTYPE(mii->mii_media_active)) {
 case 131:
 case 132:
  reg = SPEED_1000;
  break;
 case 130:
  reg = SPEED_100;
  break;
 case 129:
  reg = SPEED_10;
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

 WRITE4(sc, XAE_SPEED, reg);
}
