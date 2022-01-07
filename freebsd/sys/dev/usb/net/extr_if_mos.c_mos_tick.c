
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct mos_softc {int mos_link; } ;
struct mii_data {int mii_media_status; int mii_media_active; } ;


 struct mii_data* GET_MII (struct mos_softc*) ;
 int IFM_ACTIVE ;
 scalar_t__ IFM_NONE ;
 scalar_t__ IFM_SUBTYPE (int ) ;
 int MA_OWNED ;
 int MOS_DPRINTFN (char*) ;
 int MOS_LOCK_ASSERT (struct mos_softc*,int ) ;
 int mii_tick (struct mii_data*) ;
 int mos_start (struct usb_ether*) ;
 struct mos_softc* uether_getsc (struct usb_ether*) ;

__attribute__((used)) static void
mos_tick(struct usb_ether *ue)
{
 struct mos_softc *sc = uether_getsc(ue);
 struct mii_data *mii = GET_MII(sc);

 MOS_LOCK_ASSERT(sc, MA_OWNED);

 mii_tick(mii);
 if (!sc->mos_link && mii->mii_media_status & IFM_ACTIVE &&
     IFM_SUBTYPE(mii->mii_media_active) != IFM_NONE) {
  MOS_DPRINTFN("got link");
  sc->mos_link++;
  mos_start(ue);
 }
}
