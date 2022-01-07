
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tws_softc {int dummy; } ;


 int TWS_TRACE_DEBUG (struct tws_softc*,char*,int ,int ) ;
 int tws_send_scsi_cmd (struct tws_softc*,int) ;

void
tws_fetch_aen(void *arg)
{
    struct tws_softc *sc = (struct tws_softc *)arg;
    int error = 0;

    TWS_TRACE_DEBUG(sc, "entry", 0, 0);

    if ((error = tws_send_scsi_cmd(sc, 0x03 ))) {
        TWS_TRACE_DEBUG(sc, "aen fetch send in progress", 0, 0);
    }
}
