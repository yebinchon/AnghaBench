
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_error_t ;
typedef int uint32_t ;
struct urtw_softc {int sc_flags; scalar_t__ (* sc_rf_set_chan ) (struct urtw_softc*,int ) ;int sc_dev; int * sc_curchan; int sc_mtx; } ;
struct ieee80211com {int * ic_curchan; struct urtw_softc* ic_softc; } ;


 int URTW_ATIM_TR_ITV ;
 int URTW_ATIM_WND ;
 int URTW_BEACON_INTERVAL ;
 int URTW_BEACON_INTERVAL_TIME ;
 int URTW_LOCK (struct urtw_softc*) ;
 int URTW_RUNNING ;
 int URTW_TX_CONF ;
 int URTW_TX_LOOPBACK_MAC ;
 int URTW_TX_LOOPBACK_MASK ;
 int URTW_UNLOCK (struct urtw_softc*) ;
 int device_printf (int ,char*) ;
 int ieee80211_chan2ieee (struct ieee80211com*,int *) ;
 scalar_t__ stub1 (struct urtw_softc*,int ) ;
 int urtw_read32_m (struct urtw_softc*,int ,int*) ;
 int urtw_write16_m (struct urtw_softc*,int ,int) ;
 int urtw_write32_m (struct urtw_softc*,int ,int) ;
 int usb_pause_mtx (int *,int) ;

__attribute__((used)) static void
urtw_set_channel(struct ieee80211com *ic)
{
 struct urtw_softc *sc = ic->ic_softc;
 uint32_t data, orig;
 usb_error_t error;







 if (!(sc->sc_flags & URTW_RUNNING))
  return;

 if (sc->sc_curchan != ((void*)0) && sc->sc_curchan == ic->ic_curchan)
  return;

 URTW_LOCK(sc);





 urtw_read32_m(sc, URTW_TX_CONF, &orig);
 data = orig & ~URTW_TX_LOOPBACK_MASK;
 urtw_write32_m(sc, URTW_TX_CONF, data | URTW_TX_LOOPBACK_MAC);

 error = sc->sc_rf_set_chan(sc, ieee80211_chan2ieee(ic, ic->ic_curchan));
 if (error != 0)
  goto fail;
 usb_pause_mtx(&sc->sc_mtx, 10);
 urtw_write32_m(sc, URTW_TX_CONF, orig);

 urtw_write16_m(sc, URTW_ATIM_WND, 2);
 urtw_write16_m(sc, URTW_ATIM_TR_ITV, 100);
 urtw_write16_m(sc, URTW_BEACON_INTERVAL, 100);
 urtw_write16_m(sc, URTW_BEACON_INTERVAL_TIME, 100);

fail:
 URTW_UNLOCK(sc);

 sc->sc_curchan = ic->ic_curchan;

 if (error != 0)
  device_printf(sc->sc_dev, "could not change the channel\n");
}
