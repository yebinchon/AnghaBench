
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uath_softc {scalar_t__ sc_tx_timer; int watchdog_ch; int stat_ch; int sc_flags; } ;


 int UATH_ASSERT_LOCKED (struct uath_softc*) ;
 int UATH_FLAG_INITDONE ;
 int WDCMSG_TARGET_STOP ;
 int callout_stop (int *) ;
 int uath_abort_xfers (struct uath_softc*) ;
 int uath_cmd_write (struct uath_softc*,int ,int *,int ,int ) ;
 int uath_flush (struct uath_softc*) ;
 int uath_set_ledstate (struct uath_softc*,int ) ;

__attribute__((used)) static void
uath_stop(struct uath_softc *sc)
{

 UATH_ASSERT_LOCKED(sc);

 sc->sc_flags &= ~UATH_FLAG_INITDONE;

 callout_stop(&sc->stat_ch);
 callout_stop(&sc->watchdog_ch);
 sc->sc_tx_timer = 0;

 uath_abort_xfers(sc);

 (void)uath_flush(sc);

 uath_set_ledstate(sc, 0);

 uath_cmd_write(sc, WDCMSG_TARGET_STOP, ((void*)0), 0, 0);
}
