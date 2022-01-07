
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct tws_softc {int dummy; } ;


 int TWS_BIT8 ;
 int TWS_I2O0_HIBDB ;
 int TWS_TRACE_DEBUG (struct tws_softc*,char*,int,int ) ;
 int tws_read_reg (struct tws_softc*,int ,int) ;
 int tws_write_reg (struct tws_softc*,int ,int,int) ;

void
tws_assert_soft_reset(struct tws_softc *sc)
{
    u_int32_t reg;

    reg = tws_read_reg(sc, TWS_I2O0_HIBDB, 4);
    TWS_TRACE_DEBUG(sc, "in bound door bell read ", reg, TWS_I2O0_HIBDB);
    tws_write_reg(sc, TWS_I2O0_HIBDB, reg | TWS_BIT8, 4);

}
