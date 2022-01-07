
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int ue_dev; } ;
struct mii_data {int dummy; } ;
struct axe_softc {int sc_flags; } ;


 int AXE_FLAG_LINK ;
 int AXE_LOCK_ASSERT (struct axe_softc*,int ) ;
 struct mii_data* GET_MII (struct axe_softc*) ;
 int MA_OWNED ;
 int axe_miibus_statchg (int ) ;
 int axe_start (struct usb_ether*) ;
 int mii_tick (struct mii_data*) ;
 struct axe_softc* uether_getsc (struct usb_ether*) ;

__attribute__((used)) static void
axe_tick(struct usb_ether *ue)
{
 struct axe_softc *sc = uether_getsc(ue);
 struct mii_data *mii = GET_MII(sc);

 AXE_LOCK_ASSERT(sc, MA_OWNED);

 mii_tick(mii);
 if ((sc->sc_flags & AXE_FLAG_LINK) == 0) {
  axe_miibus_statchg(ue->ue_dev);
  if ((sc->sc_flags & AXE_FLAG_LINK) != 0)
   axe_start(ue);
 }
}
