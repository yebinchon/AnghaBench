
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int sc_mtx; } ;


 int DELAY (int) ;
 int msecs_to_ticks (int) ;
 int mtx_sleep (struct rtwn_softc*,int *,int ,char*,int ) ;

void
rtwn_pci_delay(struct rtwn_softc *sc, int usec)
{
 if (usec < 1000)
  DELAY(usec);
 else {
  (void) mtx_sleep(sc, &sc->sc_mtx, 0, "rtwn_pci",
      msecs_to_ticks(usec / 1000));
 }
}
