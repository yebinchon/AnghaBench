
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twe_softc {int twe_state; } ;


 int TWE_CONTROL (struct twe_softc*,int ) ;
 int TWE_CONTROL_DISABLE_INTERRUPTS ;
 int TWE_STATE_INTEN ;

void
twe_disable_interrupts(struct twe_softc *sc)
{
    TWE_CONTROL(sc, TWE_CONTROL_DISABLE_INTERRUPTS);
    sc->twe_state &= ~TWE_STATE_INTEN;
}
