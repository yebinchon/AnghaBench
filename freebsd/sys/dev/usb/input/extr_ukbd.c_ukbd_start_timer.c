
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kb_delay2; } ;
struct ukbd_softc {int sc_delay; scalar_t__ sc_co_basetime; int sc_callout; TYPE_1__ sc_kbd; } ;
typedef scalar_t__ sbintime_t ;


 int C_ABSOLUTE ;
 int SBT_1MS ;
 scalar_t__ qmin (scalar_t__,int) ;
 scalar_t__ sbinuptime () ;
 int ukbd_timeout ;
 int usb_callout_reset_sbt (int *,scalar_t__,scalar_t__,int ,struct ukbd_softc*,int ) ;

__attribute__((used)) static void
ukbd_start_timer(struct ukbd_softc *sc)
{
 sbintime_t delay, now, prec;

 now = sbinuptime();


 if (sc->sc_delay == 0)
  sc->sc_delay = sc->sc_kbd.kb_delay2;


 delay = SBT_1MS * sc->sc_delay;
 sc->sc_co_basetime += delay;


 if (sc->sc_co_basetime < now)
  sc->sc_co_basetime = now;


 prec = qmin(delay >> 7, SBT_1MS * 10);
 usb_callout_reset_sbt(&sc->sc_callout, sc->sc_co_basetime, prec,
     ukbd_timeout, sc, C_ABSOLUTE);
}
