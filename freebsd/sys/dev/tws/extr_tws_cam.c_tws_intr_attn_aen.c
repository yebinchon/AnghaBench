
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct tws_softc {int dummy; } ;


 int TWS_BIT18 ;
 int TWS_I2O0_HOBDBC ;
 int TWS_I2O0_IOBDB ;
 int tws_fetch_aen (void*) ;
 int tws_read_reg (struct tws_softc*,int ,int) ;
 int tws_write_reg (struct tws_softc*,int ,int ,int) ;

__attribute__((used)) static void
tws_intr_attn_aen(struct tws_softc *sc)
{
    u_int32_t db=0;



    tws_fetch_aen((void *)sc);
    tws_write_reg(sc, TWS_I2O0_HOBDBC, TWS_BIT18, 4);
    db = tws_read_reg(sc, TWS_I2O0_IOBDB, 4);

}
