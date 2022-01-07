
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int ue_dev; } ;
struct muge_softc {int sc_flags; int sc_ue; } ;
struct mii_data {int dummy; } ;


 int MA_OWNED ;
 int MUGE_FLAG_LINK ;
 int MUGE_LOCK_ASSERT (struct muge_softc*,int ) ;
 int lan78xx_miibus_statchg (int ) ;
 int mii_tick (struct mii_data*) ;
 int muge_start (struct usb_ether*) ;
 struct mii_data* uether_getmii (int *) ;
 struct muge_softc* uether_getsc (struct usb_ether*) ;

__attribute__((used)) static void
muge_tick(struct usb_ether *ue)
{

 struct muge_softc *sc = uether_getsc(ue);
 struct mii_data *mii = uether_getmii(&sc->sc_ue);

 MUGE_LOCK_ASSERT(sc, MA_OWNED);

 mii_tick(mii);
 if ((sc->sc_flags & MUGE_FLAG_LINK) == 0) {
  lan78xx_miibus_statchg(ue->ue_dev);
  if ((sc->sc_flags & MUGE_FLAG_LINK) != 0)
   muge_start(ue);
 }
}
