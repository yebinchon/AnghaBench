
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twe_softc {int twe_state; } ;


 int TWE_CONFIG_LOCK (struct twe_softc*) ;
 int TWE_CONFIG_UNLOCK (struct twe_softc*) ;
 int TWE_INIT_MESSAGE_CREDITS ;
 int TWE_IO_LOCK (struct twe_softc*) ;
 int TWE_IO_UNLOCK (struct twe_softc*) ;
 int TWE_MAX_UNITS ;
 int TWE_PARAM_FEATURES ;
 int TWE_PARAM_FEATURES_DriverShutdown ;
 int TWE_STATE_SHUTDOWN ;
 int twe_add_unit (struct twe_softc*,int) ;
 int twe_enable_interrupts (struct twe_softc*) ;
 int twe_init_connection (struct twe_softc*,int ) ;
 int twe_set_param_1 (struct twe_softc*,int ,int ,int) ;

void
twe_init(struct twe_softc *sc)
{
    int i;




    TWE_CONFIG_LOCK(sc);
    for (i = 0; i < TWE_MAX_UNITS; i++)
 twe_add_unit(sc, i);
    TWE_CONFIG_UNLOCK(sc);




    TWE_IO_LOCK(sc);
    twe_init_connection(sc, TWE_INIT_MESSAGE_CREDITS);
    sc->twe_state &= ~TWE_STATE_SHUTDOWN;




    twe_enable_interrupts(sc);
    TWE_IO_UNLOCK(sc);
}
