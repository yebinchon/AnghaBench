
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tws_softc {int obfl_q_overrun; int is64bit; int tws_dev; int gen_lock; } ;


 int TWS_RESET_TIMEOUT ;
 int TWS_TRACE_DEBUG (struct tws_softc*,char*,int ,int ) ;
 int device_printf (int ,char*) ;
 int hz ;
 int mtx_sleep (struct tws_softc*,int *,int ,char*,int) ;
 int tws_assert_soft_reset (struct tws_softc*) ;
 scalar_t__ tws_ctlr_ready (struct tws_softc*) ;
 scalar_t__ tws_init_connect (struct tws_softc*,int ) ;
 int tws_init_obfl_q (struct tws_softc*) ;
 int tws_queue_depth ;
 int tws_turn_on_interrupts (struct tws_softc*) ;
 int wakeup_one (struct tws_softc*) ;

__attribute__((used)) static void
tws_reinit(void *arg)
{
    struct tws_softc *sc = (struct tws_softc *)arg;
    int timeout_val=0;
    int try=2;
    int done=0;



    while ( !done && try ) {
        if ( tws_ctlr_ready(sc) ) {
            done = 1;
            break;
        } else {
            timeout_val += 5;
            if ( timeout_val >= TWS_RESET_TIMEOUT ) {
               timeout_val = 0;
               if ( try )
                   tws_assert_soft_reset(sc);
               try--;
            }
            mtx_sleep(sc, &sc->gen_lock, 0, "tws_reinit", 5*hz);
        }
    }

    if (!done) {
        device_printf(sc->tws_dev, "FAILED to get Controller Ready!\n");
        return;
    }

    sc->obfl_q_overrun = 0;

    if ( tws_init_connect(sc, tws_queue_depth) ) {
        TWS_TRACE_DEBUG(sc, "initConnect failed", 0, sc->is64bit);
    }
    tws_init_obfl_q(sc);

    tws_turn_on_interrupts(sc);

    wakeup_one(sc);
}
