
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct xl_softc {scalar_t__ xl_type; int xl_miibus; } ;
struct mii_data {int mii_media_active; } ;
typedef int device_t ;


 int CSR_READ_1 (struct xl_softc*,int ) ;
 int CSR_WRITE_1 (struct xl_softc*,int ,int ) ;
 int IFM_ETH_RXPAUSE ;
 int IFM_FDX ;
 int IFM_OPTIONS (int ) ;
 int XL_MACCTRL_DUPLEX ;
 int XL_MACCTRL_FLOW_CONTROL_ENB ;
 int XL_SEL_WIN (int) ;
 scalar_t__ XL_TYPE_905B ;
 int XL_W3_MAC_CTRL ;
 void* device_get_softc (int ) ;
 int xl_setcfg (struct xl_softc*) ;

__attribute__((used)) static void
xl_miibus_statchg(device_t dev)
{
 struct xl_softc *sc;
 struct mii_data *mii;
 uint8_t macctl;

 sc = device_get_softc(dev);
 mii = device_get_softc(sc->xl_miibus);

 xl_setcfg(sc);


 XL_SEL_WIN(3);
 macctl = CSR_READ_1(sc, XL_W3_MAC_CTRL);
 if ((IFM_OPTIONS(mii->mii_media_active) & IFM_FDX) != 0) {
  macctl |= XL_MACCTRL_DUPLEX;
  if (sc->xl_type == XL_TYPE_905B) {
   if ((IFM_OPTIONS(mii->mii_media_active) &
       IFM_ETH_RXPAUSE) != 0)
    macctl |= XL_MACCTRL_FLOW_CONTROL_ENB;
   else
    macctl &= ~XL_MACCTRL_FLOW_CONTROL_ENB;
  }
 } else {
  macctl &= ~XL_MACCTRL_DUPLEX;
  if (sc->xl_type == XL_TYPE_905B)
   macctl &= ~XL_MACCTRL_FLOW_CONTROL_ENB;
 }
 CSR_WRITE_1(sc, XL_W3_MAC_CTRL, macctl);
}
