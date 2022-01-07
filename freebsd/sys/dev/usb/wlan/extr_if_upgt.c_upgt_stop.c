
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upgt_softc {int sc_flags; scalar_t__ sc_tx_timer; } ;


 int IEEE80211_S_INIT ;
 int UPGT_ASSERT_LOCKED (struct upgt_softc*) ;
 int UPGT_FLAG_INITDONE ;
 int upgt_abort_xfers_locked (struct upgt_softc*) ;
 int upgt_set_macfilter (struct upgt_softc*,int ) ;

__attribute__((used)) static void
upgt_stop(struct upgt_softc *sc)
{

 UPGT_ASSERT_LOCKED(sc);

 if (sc->sc_flags & UPGT_FLAG_INITDONE)
  upgt_set_macfilter(sc, IEEE80211_S_INIT);
 upgt_abort_xfers_locked(sc);

 sc->sc_tx_timer = 0;
 sc->sc_flags &= ~UPGT_FLAG_INITDONE;
}
