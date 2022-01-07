
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbni_softc {scalar_t__ tx_frameno; } ;
struct ifnet {struct sbni_softc* if_softc; } ;


 int prepare_to_send (struct sbni_softc*) ;

__attribute__((used)) static void
sbni_start_locked(struct ifnet *ifp)
{
 struct sbni_softc *sc = ifp->if_softc;

 if (sc->tx_frameno == 0)
  prepare_to_send(sc);
}
