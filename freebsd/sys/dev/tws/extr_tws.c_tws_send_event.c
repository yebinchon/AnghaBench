
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct tws_softc {int tws_state; int tws_dev; int tws_prev_state; int gen_lock; } ;


 int MA_OWNED ;
 int TWS_INIT ;


 int TWS_OFFLINE ;
 int TWS_ONLINE ;
 int TWS_RESET ;



 int TWS_TRACE_DEBUG (struct tws_softc*,char*,int ,int) ;
 int TWS_UNINIT ;

 int device_printf (int ,char*,int ,...) ;
 int mtx_assert (int *,int ) ;

void
tws_send_event(struct tws_softc *sc, u_int8_t event)
{
    mtx_assert(&sc->gen_lock, MA_OWNED);
    TWS_TRACE_DEBUG(sc, "received event ", 0, event);
    switch (event) {

        case 132:
            sc->tws_state = TWS_INIT;
            break;

        case 133:
            if (sc->tws_state != TWS_INIT) {
                device_printf(sc->tws_dev, "invalid state transition %d => TWS_ONLINE\n", sc->tws_state);
            } else {
                sc->tws_state = TWS_ONLINE;
            }
            break;

        case 130:

            if (sc->tws_state != TWS_RESET) {
                sc->tws_prev_state = sc->tws_state;
                sc->tws_state = TWS_RESET;
            }
            break;

        case 131:
            if (sc->tws_state != TWS_RESET) {
                device_printf(sc->tws_dev, "invalid state transition %d => %d (previous state)\n", sc->tws_state, sc->tws_prev_state);
            } else {
                sc->tws_state = sc->tws_prev_state;
            }
            break;

        case 129:
            if (sc->tws_state != TWS_ONLINE) {
                device_printf(sc->tws_dev, "invalid state transition %d => TWS_OFFLINE\n", sc->tws_state);
            } else {
                sc->tws_state = TWS_OFFLINE;
            }
            break;

        case 128:
            if ((sc->tws_state != TWS_ONLINE) && (sc->tws_state != TWS_OFFLINE)) {
                device_printf(sc->tws_dev, "invalid state transition %d => TWS_UNINIT\n", sc->tws_state);
            } else {
                sc->tws_state = TWS_UNINIT;
            }
            break;
    }

}
