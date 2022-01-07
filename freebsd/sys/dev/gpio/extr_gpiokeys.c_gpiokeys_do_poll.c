
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct gpiokeys_softc {int sc_flags; scalar_t__ sc_inputs; } ;


 int GPIOKEYS_ASSERT_LOCKED (struct gpiokeys_softc*) ;
 int GPIOKEYS_GLOBAL_FLAG_POLLING ;
 int KASSERT (int,char*) ;
 int PRI_UNCHANGED ;
 int SCHEDULER_STOPPED () ;
 int kdb_active ;
 int kern_yield (int ) ;
 int printf (char*) ;

__attribute__((used)) static void
gpiokeys_do_poll(struct gpiokeys_softc *sc, uint8_t wait)
{

 KASSERT((sc->sc_flags & GPIOKEYS_GLOBAL_FLAG_POLLING) != 0,
     ("gpiokeys_do_poll called when not polling\n"));

 GPIOKEYS_ASSERT_LOCKED(sc);

 if (!kdb_active && !SCHEDULER_STOPPED()) {
  while (sc->sc_inputs == 0) {
   kern_yield(PRI_UNCHANGED);
   if (!wait)
    break;
  }
  return;
 }

 while ((sc->sc_inputs == 0) && wait) {
  printf("POLL!\n");
 }
}
