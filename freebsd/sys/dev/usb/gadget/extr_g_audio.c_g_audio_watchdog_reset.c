
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_audio_softc {int sc_watchdog; } ;


 int g_audio_watchdog ;
 int hz ;
 int usb_callout_reset (int *,int ,int *,struct g_audio_softc*) ;

__attribute__((used)) static void
g_audio_watchdog_reset(struct g_audio_softc *sc)
{
 usb_callout_reset(&sc->sc_watchdog, hz, &g_audio_watchdog, sc);
}
