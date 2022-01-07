
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;
struct viawd_softc {unsigned int timeout; } ;


 unsigned int WD_INTERVAL ;
 int viawd_tmr_set (struct viawd_softc*,unsigned int) ;
 int viawd_tmr_state (struct viawd_softc*,int) ;

__attribute__((used)) static void
viawd_event(void *arg, unsigned int cmd, int *error)
{
 struct viawd_softc *sc = arg;
 unsigned int timeout;


 cmd &= WD_INTERVAL;
 timeout = ((uint64_t)1 << cmd) / 1000000000;
 if (cmd) {
  if (timeout != sc->timeout)
   viawd_tmr_set(sc, timeout);
  viawd_tmr_state(sc, 1);
  *error = 0;
 } else
  viawd_tmr_state(sc, 0);
}
