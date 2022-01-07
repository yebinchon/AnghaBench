
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psm_softc {int callout; scalar_t__ watchdog; int kbdc; int unit; } ;


 scalar_t__ FALSE ;
 int LOG_DEBUG ;
 scalar_t__ TRUE ;
 int VLOG (int,int ) ;
 int callout_reset (int *,int ,void (*) (void*),struct psm_softc*) ;
 int hz ;
 scalar_t__ kbdc_lock (int ,scalar_t__) ;
 int psmintr (struct psm_softc*) ;
 int spltty () ;
 int splx (int) ;

__attribute__((used)) static void
psmtimeout(void *arg)
{
 struct psm_softc *sc;
 int s;

 sc = (struct psm_softc *)arg;
 s = spltty();
 if (sc->watchdog && kbdc_lock(sc->kbdc, TRUE)) {
  VLOG(6, (LOG_DEBUG, "psm%d: lost interrupt?\n", sc->unit));
  psmintr(sc);
  kbdc_lock(sc->kbdc, FALSE);
 }
 sc->watchdog = TRUE;
 splx(s);
 callout_reset(&sc->callout, hz, psmtimeout, sc);
}
