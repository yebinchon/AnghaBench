
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uart_softc {int sc_ttypend; int sc_softih; } ;


 int SER_INT_MASK ;
 int atomic_cmpset_32 (int*,int,int) ;
 int swi_sched (int ,int ) ;

void
uart_sched_softih(struct uart_softc *sc, uint32_t ipend)
{
 uint32_t new, old;

 do {
  old = sc->sc_ttypend;
  new = old | ipend;
 } while (!atomic_cmpset_32(&sc->sc_ttypend, old, new));

 if ((old & SER_INT_MASK) == 0)
  swi_sched(sc->sc_softih, 0);
}
