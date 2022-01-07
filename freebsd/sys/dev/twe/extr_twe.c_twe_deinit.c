
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twe_softc {int twe_state; } ;


 int TWE_IO_ASSERT_LOCKED (struct twe_softc*) ;
 int TWE_SHUTDOWN_MESSAGE_CREDITS ;
 int TWE_STATE_SHUTDOWN ;
 int twe_disable_interrupts (struct twe_softc*) ;
 int twe_init_connection (struct twe_softc*,int ) ;

void
twe_deinit(struct twe_softc *sc)
{



    TWE_IO_ASSERT_LOCKED(sc);
    sc->twe_state |= TWE_STATE_SHUTDOWN;
    twe_disable_interrupts(sc);







}
