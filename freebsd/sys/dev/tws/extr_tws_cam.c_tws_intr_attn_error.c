
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct tws_softc {int tws_dev; } ;


 int TWS_I2O0_HOBDBC ;
 int TWS_I2O0_IOBDB ;
 int TWS_TRACE (struct tws_softc*,char*,int ,int ) ;
 int device_printf (int ,char*) ;
 int tws_read_reg (struct tws_softc*,int ,int) ;
 int tws_reset (struct tws_softc*) ;
 int tws_write_reg (struct tws_softc*,int ,int ,int) ;

__attribute__((used)) static void
tws_intr_attn_error(struct tws_softc *sc)
{
    u_int32_t db=0;

    TWS_TRACE(sc, "attn error", 0, 0);
    tws_write_reg(sc, TWS_I2O0_HOBDBC, ~0, 4);
    db = tws_read_reg(sc, TWS_I2O0_IOBDB, 4);
    device_printf(sc->tws_dev, "Micro controller error.\n");
    tws_reset(sc);
}
