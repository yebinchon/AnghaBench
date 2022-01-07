
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int mii_media_status; } ;
struct mgb_softc {int link_state; int baudrate; int ctx; int miibus; } ;
typedef int device_t ;


 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int LINK_STATE_DOWN ;
 int LINK_STATE_UNKNOWN ;
 int LINK_STATE_UP ;
 struct mii_data* device_get_softc (int ) ;
 struct mgb_softc* iflib_get_softc (struct mii_data*) ;
 int iflib_link_state_change (int ,int,int ) ;

__attribute__((used)) static void
mgb_miibus_linkchg(device_t dev)
{
 struct mgb_softc *sc;
 struct mii_data *miid;
 int link_state;

 sc = iflib_get_softc(device_get_softc(dev));
 miid = device_get_softc(sc->miibus);

 if (miid->mii_media_status & IFM_AVALID) {
  if (miid->mii_media_status & IFM_ACTIVE)
   link_state = LINK_STATE_UP;
  else
   link_state = LINK_STATE_DOWN;
 } else
  link_state = LINK_STATE_UNKNOWN;
 sc->link_state = link_state;
 iflib_link_state_change(sc->ctx, sc->link_state, sc->baudrate);
}
