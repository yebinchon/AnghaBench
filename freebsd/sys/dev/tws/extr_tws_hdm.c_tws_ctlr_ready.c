
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct tws_softc {int dummy; } ;
typedef int boolean ;


 int TWS_BIT13 ;
 int TWS_I2O0_SCRPD3 ;
 int tws_read_reg (struct tws_softc*,int ,int) ;

boolean
tws_ctlr_ready(struct tws_softc *sc)
{
    u_int32_t reg;

    reg = tws_read_reg(sc, TWS_I2O0_SCRPD3, 4);
    if ( reg & TWS_BIT13 )
        return(1);
    else
        return(0);
}
