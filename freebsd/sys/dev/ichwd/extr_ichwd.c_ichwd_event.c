
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;
struct ichwd_softc {int tco_version; unsigned int timeout; scalar_t__ active; } ;


 unsigned int ICHWD_TCO_V3_TICK ;
 unsigned int ICHWD_TICK ;
 unsigned int WD_INTERVAL ;
 int ichwd_tmr_disable (struct ichwd_softc*) ;
 int ichwd_tmr_enable (struct ichwd_softc*) ;
 int ichwd_tmr_reload (struct ichwd_softc*) ;
 int ichwd_tmr_set (struct ichwd_softc*,unsigned int) ;

__attribute__((used)) static void
ichwd_event(void *arg, unsigned int cmd, int *error)
{
 struct ichwd_softc *sc = arg;
 unsigned int timeout;


 cmd &= WD_INTERVAL;

 if (sc->tco_version == 3) {
  timeout = ((uint64_t)1 << cmd) / ICHWD_TCO_V3_TICK;
 } else {
  timeout = ((uint64_t)1 << cmd) / ICHWD_TICK;
 }

 if (cmd) {
  if (!sc->active)
   ichwd_tmr_enable(sc);
  if (timeout != sc->timeout)
   ichwd_tmr_set(sc, timeout);
  ichwd_tmr_reload(sc);
  *error = 0;
 } else {
  if (sc->active)
   ichwd_tmr_disable(sc);
 }
}
