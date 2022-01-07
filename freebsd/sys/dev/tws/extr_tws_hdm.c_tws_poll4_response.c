
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
typedef scalar_t__ u_int16_t ;
typedef scalar_t__ time_t ;
struct tws_softc {int dummy; } ;


 scalar_t__ TWS_INVALID_REQID ;
 scalar_t__ TWS_LOCAL_TIME ;
 scalar_t__ TWS_POLL_TIMEOUT ;
 int TWS_TRACE_DEBUG (struct tws_softc*,char*,int ,scalar_t__) ;
 scalar_t__ tws_get_response (struct tws_softc*,scalar_t__*,int *) ;

u_int16_t
tws_poll4_response(struct tws_softc *sc, u_int64_t *mfa)
{
    u_int16_t req_id;
    time_t endt;

    endt = TWS_LOCAL_TIME + TWS_POLL_TIMEOUT;
    do {
        if(tws_get_response(sc, &req_id, mfa)) {

            if ( req_id == TWS_INVALID_REQID ) {
                TWS_TRACE_DEBUG(sc, "invalid req_id", 0, req_id);
                return(TWS_INVALID_REQID);
            }
            return(req_id);
        }
    } while (TWS_LOCAL_TIME <= endt);
    TWS_TRACE_DEBUG(sc, "poll timeout", 0, 0);
    return(TWS_INVALID_REQID);
}
