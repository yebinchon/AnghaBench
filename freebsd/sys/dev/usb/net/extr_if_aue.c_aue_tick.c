
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
struct aue_softc {int sc_flags; } ;


 int AUE_FLAG_LINK ;
 int AUE_LOCK_ASSERT (struct aue_softc*,int ) ;
 struct mii_data* GET_MII (struct aue_softc*) ;
 int IFM_ACTIVE ;
 scalar_t__ IFM_NONE ;
 scalar_t__ IFM_SUBTYPE (int ) ;
 int MA_OWNED ;
 int aue_start (struct usb_ether*) ;
 int mii_tick (struct mii_data*) ;
 struct aue_softc* uether_getsc (struct usb_ether*) ;

__attribute__((used)) static void
aue_tick(struct usb_ether *ue)
{
 struct aue_softc *sc = uether_getsc(ue);
 struct mii_data *mii = GET_MII(sc);

 AUE_LOCK_ASSERT(sc, MA_OWNED);

 mii_tick(mii);
 if ((sc->sc_flags & AUE_FLAG_LINK) == 0
     && mii->mii_media_status & IFM_ACTIVE &&
     IFM_SUBTYPE(mii->mii_media_active) != IFM_NONE) {
  sc->sc_flags |= AUE_FLAG_LINK;
  aue_start(ue);
 }
}
