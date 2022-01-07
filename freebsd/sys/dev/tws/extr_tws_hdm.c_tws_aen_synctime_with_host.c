
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tws_softc {int dummy; } ;


 int TWS_LOCAL_TIME ;
 int TWS_PARAM_TIME_SCHED_TIME ;
 int TWS_PARAM_TIME_TABLE ;
 int TWS_TRACE_DEBUG (struct tws_softc*,char*,long,int) ;
 int time_second ;
 int tws_set_param (struct tws_softc*,int ,int ,int,long*) ;
 long utc_offset () ;

void
tws_aen_synctime_with_host(struct tws_softc *sc)
{

    int error;
    long int sync_time;

    TWS_TRACE_DEBUG(sc, "entry", sc, 0);

    sync_time = (TWS_LOCAL_TIME - (3 * 86400)) % 604800;
    TWS_TRACE_DEBUG(sc, "sync_time,ts", sync_time, time_second);
    TWS_TRACE_DEBUG(sc, "utc_offset", utc_offset(), 0);
    error = tws_set_param(sc, TWS_PARAM_TIME_TABLE, TWS_PARAM_TIME_SCHED_TIME,
                           4, &sync_time);
    if ( error )
        TWS_TRACE_DEBUG(sc, "set param failed", sync_time, error);
}
