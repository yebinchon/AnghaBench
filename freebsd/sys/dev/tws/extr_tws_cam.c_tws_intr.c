
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_2__ {int num_intrs; } ;
struct tws_softc {TYPE_1__ stats; int tws_dev; } ;


 int TWS_BIT18 ;
 int TWS_BIT2 ;
 int TWS_BIT21 ;
 int TWS_BIT3 ;
 int TWS_I2O0_HISTAT ;
 int TWS_I2O0_IOBDB ;
 scalar_t__ TWS_ONLINE ;
 scalar_t__ TWS_RESET ;
 int TWS_TRACE_DEBUG (struct tws_softc*,char*,int,int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ tws_get_state (struct tws_softc*) ;
 int tws_intr_attn_aen (struct tws_softc*) ;
 int tws_intr_attn_error (struct tws_softc*) ;
 int tws_intr_resp (struct tws_softc*) ;
 int tws_read_reg (struct tws_softc*,int ,int) ;

void
tws_intr(void *arg)
{
    struct tws_softc *sc = (struct tws_softc *)arg;
    u_int32_t histat=0, db=0;

    if (!(sc)) {
        device_printf(sc->tws_dev, "null softc!!!\n");
        return;
    }

    if ( tws_get_state(sc) == TWS_RESET ) {
        return;
    }

    if ( tws_get_state(sc) != TWS_ONLINE ) {
        return;
    }

    sc->stats.num_intrs++;
    histat = tws_read_reg(sc, TWS_I2O0_HISTAT, 4);
    if ( histat & TWS_BIT2 ) {
        TWS_TRACE_DEBUG(sc, "door bell :)", histat, TWS_I2O0_HISTAT);
        db = tws_read_reg(sc, TWS_I2O0_IOBDB, 4);
        if ( db & TWS_BIT21 ) {
            tws_intr_attn_error(sc);
            return;
        }
        if ( db & TWS_BIT18 ) {
            tws_intr_attn_aen(sc);
        }
    }

    if ( histat & TWS_BIT3 ) {
        tws_intr_resp(sc);
    }
}
