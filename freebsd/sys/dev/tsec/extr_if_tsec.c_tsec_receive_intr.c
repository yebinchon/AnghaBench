
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tsec_softc {TYPE_1__* tsec_ifp; } ;
struct TYPE_2__ {int if_capenable; } ;


 int IFCAP_POLLING ;
 int TSEC_IEVENT_RXB ;
 int TSEC_IEVENT_RXF ;
 int TSEC_RECEIVE_LOCK (struct tsec_softc*) ;
 int TSEC_RECEIVE_UNLOCK (struct tsec_softc*) ;
 int TSEC_REG_IEVENT ;
 int TSEC_WRITE (struct tsec_softc*,int ,int) ;
 int tsec_receive_intr_locked (struct tsec_softc*,int) ;

void
tsec_receive_intr(void *arg)
{
 struct tsec_softc *sc = arg;

 TSEC_RECEIVE_LOCK(sc);
 TSEC_WRITE(sc, TSEC_REG_IEVENT, TSEC_IEVENT_RXB | TSEC_IEVENT_RXF);
 tsec_receive_intr_locked(sc, -1);

 TSEC_RECEIVE_UNLOCK(sc);
}
