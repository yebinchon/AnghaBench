
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef scalar_t__ time_t ;
struct tws_softc {int tws_dev; } ;


 int TWS_BIT13 ;
 int TWS_I2O0_SCRPD3 ;
 scalar_t__ TWS_LOCAL_TIME ;
 scalar_t__ TWS_POLL_TIMEOUT ;
 scalar_t__ TWS_RESET ;
 int device_printf (int ,char*) ;
 int tws_drain_busy_queue (struct tws_softc*) ;
 int tws_drain_reserved_reqs (struct tws_softc*) ;
 int tws_drain_response_queue (struct tws_softc*) ;
 scalar_t__ tws_get_state (struct tws_softc*) ;
 int tws_read_reg (struct tws_softc*,int ,int) ;

__attribute__((used)) static void
tws_reset_cb(void *arg)
{
    struct tws_softc *sc = (struct tws_softc *)arg;
    time_t endt;
    int found = 0;
    u_int32_t reg;

    if ( tws_get_state(sc) != TWS_RESET ) {
        return;
    }


    tws_drain_busy_queue(sc);

    tws_drain_reserved_reqs(sc);

    tws_drain_response_queue(sc);


    endt = TWS_LOCAL_TIME + TWS_POLL_TIMEOUT;
    while ((TWS_LOCAL_TIME <= endt) && (!found)) {
        reg = tws_read_reg(sc, TWS_I2O0_SCRPD3, 4);
        if ( reg & TWS_BIT13 ) {
            found = 1;

        }
    }
    if ( !found )
            device_printf(sc->tws_dev, " ... Controller ready flag NOT found!\n");
}
