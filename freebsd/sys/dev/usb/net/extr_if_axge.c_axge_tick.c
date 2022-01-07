
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ether {int dummy; } ;
struct mii_data {int dummy; } ;
struct axge_softc {int dummy; } ;


 int AXGE_LOCK_ASSERT (struct axge_softc*,int ) ;
 struct mii_data* GET_MII (struct axge_softc*) ;
 int MA_OWNED ;
 int mii_tick (struct mii_data*) ;
 struct axge_softc* uether_getsc (struct usb_ether*) ;

__attribute__((used)) static void
axge_tick(struct usb_ether *ue)
{
 struct axge_softc *sc;
 struct mii_data *mii;

 sc = uether_getsc(ue);
 mii = GET_MII(sc);
 AXGE_LOCK_ASSERT(sc, MA_OWNED);

 mii_tick(mii);
}
