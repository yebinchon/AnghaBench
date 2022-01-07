
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mge_softc {int dummy; } ;
struct ifnet {struct mge_softc* if_softc; } ;


 int MGE_TRANSMIT_LOCK (struct mge_softc*) ;
 int MGE_TRANSMIT_UNLOCK (struct mge_softc*) ;
 int mge_start_locked (struct ifnet*) ;

__attribute__((used)) static void
mge_start(struct ifnet *ifp)
{
 struct mge_softc *sc = ifp->if_softc;

 MGE_TRANSMIT_LOCK(sc);

 mge_start_locked(ifp);

 MGE_TRANSMIT_UNLOCK(sc);
}
