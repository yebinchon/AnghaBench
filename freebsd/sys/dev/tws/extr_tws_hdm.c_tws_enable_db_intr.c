
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct tws_softc {int dummy; } ;


 int TWS_BIT2 ;
 int TWS_I2O0_HIMASK ;
 int TWS_TRACE_DEBUG (struct tws_softc*,char*,int ,int ) ;
 int tws_read_reg (struct tws_softc*,int ,int) ;
 int tws_write_reg (struct tws_softc*,int ,int,int) ;

void
tws_enable_db_intr(struct tws_softc *sc)
{
    u_int32_t reg;

    TWS_TRACE_DEBUG(sc, "entry", 0, 0);
    reg = tws_read_reg(sc, TWS_I2O0_HIMASK, 4);
    reg = reg & ~TWS_BIT2;
    tws_write_reg(sc, TWS_I2O0_HIMASK, reg, 4);
}
