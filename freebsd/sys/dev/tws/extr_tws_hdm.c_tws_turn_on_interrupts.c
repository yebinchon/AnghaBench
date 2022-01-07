
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tws_softc {int dummy; } ;


 int TWS_BIT0 ;
 int TWS_I2O0_HIMASK ;
 int TWS_TRACE_DEBUG (struct tws_softc*,char*,int ,int ) ;
 int tws_write_reg (struct tws_softc*,int ,int ,int) ;

void
tws_turn_on_interrupts(struct tws_softc *sc)
{

    TWS_TRACE_DEBUG(sc, "entry", 0, 0);

    tws_write_reg(sc, TWS_I2O0_HIMASK, TWS_BIT0, 4);

}
