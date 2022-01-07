
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {struct udav_softc* ue_sc; } ;
struct udav_softc {int sc_flags; } ;
struct mii_data {int mii_media_status; int mii_media_active; } ;


 struct mii_data* GET_MII (struct udav_softc*) ;
 int IFM_ACTIVE ;
 scalar_t__ IFM_NONE ;
 scalar_t__ IFM_SUBTYPE (int ) ;
 int MA_OWNED ;
 int UDAV_FLAG_LINK ;
 int UDAV_LOCK_ASSERT (struct udav_softc*,int ) ;
 int mii_tick (struct mii_data*) ;
 int udav_start (struct usb_ether*) ;

__attribute__((used)) static void
udav_tick(struct usb_ether *ue)
{
 struct udav_softc *sc = ue->ue_sc;
 struct mii_data *mii = GET_MII(sc);

 UDAV_LOCK_ASSERT(sc, MA_OWNED);

 mii_tick(mii);
 if ((sc->sc_flags & UDAV_FLAG_LINK) == 0
     && mii->mii_media_status & IFM_ACTIVE &&
     IFM_SUBTYPE(mii->mii_media_active) != IFM_NONE) {
  sc->sc_flags |= UDAV_FLAG_LINK;
  udav_start(ue);
 }
}
