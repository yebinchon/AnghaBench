
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int64_t ;
typedef size_t u_int16_t ;
struct TYPE_3__ {int reqs_errored; int reqs_out; } ;
struct tws_softc {TYPE_2__* reqs; TYPE_1__ stats; } ;
struct TYPE_4__ {int (* cb ) (TYPE_2__*) ;} ;


 size_t TWS_INVALID_REQID ;
 int TWS_TRACE_DEBUG (struct tws_softc*,char*,int ,size_t) ;
 int stub1 (TYPE_2__*) ;
 int tws_err_complete (struct tws_softc*,int ) ;
 scalar_t__ tws_get_response (struct tws_softc*,size_t*,int *) ;

__attribute__((used)) static void
tws_intr_resp(struct tws_softc *sc)
{
    u_int16_t req_id;
    u_int64_t mfa;

    while ( tws_get_response(sc, &req_id, &mfa) ) {
        sc->stats.reqs_out++;
        if ( req_id == TWS_INVALID_REQID ) {
            TWS_TRACE_DEBUG(sc, "invalid req_id", mfa, req_id);
            sc->stats.reqs_errored++;
            tws_err_complete(sc, mfa);
            continue;
        }
        sc->reqs[req_id].cb(&sc->reqs[req_id]);
    }

}
