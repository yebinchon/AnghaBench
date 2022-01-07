
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct ure_softc {int sc_flags; } ;
struct mii_data {int mii_media_status; int mii_media_active; } ;


 struct mii_data* GET_MII (struct ure_softc*) ;
 int IFM_ACTIVE ;
 scalar_t__ IFM_NONE ;
 scalar_t__ IFM_SUBTYPE (int ) ;
 int MA_OWNED ;
 int URE_FLAG_LINK ;
 int URE_LOCK_ASSERT (struct ure_softc*,int ) ;
 int mii_tick (struct mii_data*) ;
 struct ure_softc* uether_getsc (struct usb_ether*) ;
 int ure_start (struct usb_ether*) ;

__attribute__((used)) static void
ure_tick(struct usb_ether *ue)
{
 struct ure_softc *sc = uether_getsc(ue);
 struct mii_data *mii = GET_MII(sc);

 URE_LOCK_ASSERT(sc, MA_OWNED);

 mii_tick(mii);
 if ((sc->sc_flags & URE_FLAG_LINK) == 0
     && mii->mii_media_status & IFM_ACTIVE &&
     IFM_SUBTYPE(mii->mii_media_active) != IFM_NONE) {
  sc->sc_flags |= URE_FLAG_LINK;
  ure_start(ue);
 }
}
