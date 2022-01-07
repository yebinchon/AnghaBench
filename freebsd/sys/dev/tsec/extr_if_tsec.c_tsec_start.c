
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsec_softc {int dummy; } ;
struct ifnet {struct tsec_softc* if_softc; } ;


 int TSEC_TRANSMIT_LOCK (struct tsec_softc*) ;
 int TSEC_TRANSMIT_UNLOCK (struct tsec_softc*) ;
 int tsec_start_locked (struct ifnet*) ;

__attribute__((used)) static void
tsec_start(struct ifnet *ifp)
{
 struct tsec_softc *sc = ifp->if_softc;

 TSEC_TRANSMIT_LOCK(sc);
 tsec_start_locked(ifp);
 TSEC_TRANSMIT_UNLOCK(sc);
}
