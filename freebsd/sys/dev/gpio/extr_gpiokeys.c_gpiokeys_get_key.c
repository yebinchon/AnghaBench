
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct gpiokeys_softc {int sc_flags; scalar_t__ sc_inputs; int* sc_input; size_t sc_inputhead; } ;
typedef int int32_t ;


 int GPIOKEYS_ASSERT_LOCKED (struct gpiokeys_softc*) ;
 int GPIOKEYS_GLOBAL_FLAG_POLLING ;
 size_t GPIOKEYS_GLOBAL_IN_BUF_SIZE ;
 int KASSERT (int,char*) ;
 int SCHEDULER_STOPPED () ;
 int gpiokeys_do_poll (struct gpiokeys_softc*,int ) ;
 int kdb_active ;

__attribute__((used)) static int32_t
gpiokeys_get_key(struct gpiokeys_softc *sc, uint8_t wait)
{
 int32_t c;

 KASSERT((!kdb_active && !SCHEDULER_STOPPED())
     || (sc->sc_flags & GPIOKEYS_GLOBAL_FLAG_POLLING) != 0,
     ("not polling in kdb or panic\n"));

 GPIOKEYS_ASSERT_LOCKED(sc);

 if (sc->sc_flags & GPIOKEYS_GLOBAL_FLAG_POLLING)
  gpiokeys_do_poll(sc, wait);

 if (sc->sc_inputs == 0) {
  c = -1;
 } else {
  c = sc->sc_input[sc->sc_inputhead];
  --(sc->sc_inputs);
  ++(sc->sc_inputhead);
  if (sc->sc_inputhead >= GPIOKEYS_GLOBAL_IN_BUF_SIZE) {
   sc->sc_inputhead = 0;
  }
 }

 return (c);
}
