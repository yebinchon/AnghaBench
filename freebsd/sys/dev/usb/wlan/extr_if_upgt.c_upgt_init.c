
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upgt_softc {int sc_flags; int sc_watchdog_ch; int * sc_xfer; } ;


 int IEEE80211_S_SCAN ;
 int UPGT_ASSERT_LOCKED (struct upgt_softc*) ;
 size_t UPGT_BULK_RX ;
 int UPGT_FLAG_INITDONE ;
 int callout_reset (int *,int ,int ,struct upgt_softc*) ;
 int hz ;
 int upgt_set_macfilter (struct upgt_softc*,int ) ;
 int upgt_stop (struct upgt_softc*) ;
 int upgt_watchdog ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static void
upgt_init(struct upgt_softc *sc)
{

 UPGT_ASSERT_LOCKED(sc);

 if (sc->sc_flags & UPGT_FLAG_INITDONE)
  upgt_stop(sc);

 usbd_transfer_start(sc->sc_xfer[UPGT_BULK_RX]);

 (void)upgt_set_macfilter(sc, IEEE80211_S_SCAN);

 sc->sc_flags |= UPGT_FLAG_INITDONE;

 callout_reset(&sc->sc_watchdog_ch, hz, upgt_watchdog, sc);
}
