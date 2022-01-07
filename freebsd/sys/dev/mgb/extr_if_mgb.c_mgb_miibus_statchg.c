
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int mii_media_active; } ;
struct mgb_softc {int baudrate; int link_state; int ctx; int miibus; } ;
typedef int device_t ;


 struct mii_data* device_get_softc (int ) ;
 struct mgb_softc* iflib_get_softc (struct mii_data*) ;
 int iflib_link_state_change (int ,int ,int ) ;
 int ifmedia_baudrate (int ) ;

__attribute__((used)) static void
mgb_miibus_statchg(device_t dev)
{
 struct mgb_softc *sc;
 struct mii_data *miid;

 sc = iflib_get_softc(device_get_softc(dev));
 miid = device_get_softc(sc->miibus);

 sc->baudrate = ifmedia_baudrate(miid->mii_media_active);
 iflib_link_state_change(sc->ctx, sc->link_state, sc->baudrate);
}
