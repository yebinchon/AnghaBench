
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int scsi_ios; int ioctls; int num_intrs; int reqs_errored; int reqs_out; int reqs_in; } ;
struct tws_softc {int stats_timer; TYPE_1__ stats; } ;


 int TWS_TRACE (struct tws_softc*,char*,int ,int ) ;
 int callout_reset (int *,int,void (*) (void*),struct tws_softc*) ;
 int hz ;

void
tws_print_stats(void *arg)
{

    struct tws_softc *sc = (struct tws_softc *)arg;

    TWS_TRACE(sc, "reqs(in, out)", sc->stats.reqs_in, sc->stats.reqs_out);
    TWS_TRACE(sc, "reqs(err, intrs)", sc->stats.reqs_errored
                                      , sc->stats.num_intrs);
    TWS_TRACE(sc, "reqs(ioctls, scsi)", sc->stats.ioctls
                                      , sc->stats.scsi_ios);
    callout_reset(&sc->stats_timer, 300 * hz, tws_print_stats, sc);
}
