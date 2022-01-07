
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twe_softc {int twe_state; } ;


 int TWE_CONTROL (struct twe_softc*,int) ;
 int TWE_CONTROL_CLEAR_ATTENTION_INTERRUPT ;
 int TWE_CONTROL_ENABLE_INTERRUPTS ;
 int TWE_CONTROL_UNMASK_RESPONSE_INTERRUPT ;
 int TWE_STATE_INTEN ;

void
twe_enable_interrupts(struct twe_softc *sc)
{
    sc->twe_state |= TWE_STATE_INTEN;
    TWE_CONTROL(sc,
        TWE_CONTROL_CLEAR_ATTENTION_INTERRUPT |
        TWE_CONTROL_UNMASK_RESPONSE_INTERRUPT |
        TWE_CONTROL_ENABLE_INTERRUPTS);
}
