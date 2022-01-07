
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int sc_mtx; } ;


 int DELAY (int) ;
 int msecs_to_ticks (int) ;
 int usb_pause_mtx (int *,int ) ;

void
rtwn_usb_delay(struct rtwn_softc *sc, int usec)
{


 if (usec < 1000)
  DELAY(usec);
 else
  usb_pause_mtx(&sc->sc_mtx, msecs_to_ticks(usec / 1000));
}
