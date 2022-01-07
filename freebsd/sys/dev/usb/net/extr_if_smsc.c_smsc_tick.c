
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int ue_dev; } ;
struct smsc_softc {int sc_flags; int sc_ue; } ;
struct mii_data {int dummy; } ;


 int MA_OWNED ;
 int SMSC_FLAG_LINK ;
 int SMSC_LOCK_ASSERT (struct smsc_softc*,int ) ;
 int mii_tick (struct mii_data*) ;
 int smsc_miibus_statchg (int ) ;
 int smsc_start (struct usb_ether*) ;
 struct mii_data* uether_getmii (int *) ;
 struct smsc_softc* uether_getsc (struct usb_ether*) ;

__attribute__((used)) static void
smsc_tick(struct usb_ether *ue)
{
 struct smsc_softc *sc = uether_getsc(ue);
 struct mii_data *mii = uether_getmii(&sc->sc_ue);

 SMSC_LOCK_ASSERT(sc, MA_OWNED);

 mii_tick(mii);
 if ((sc->sc_flags & SMSC_FLAG_LINK) == 0) {
  smsc_miibus_statchg(ue->ue_dev);
  if ((sc->sc_flags & SMSC_FLAG_LINK) != 0)
   smsc_start(ue);
 }
}
