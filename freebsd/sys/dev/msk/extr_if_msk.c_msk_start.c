
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msk_if_softc {int dummy; } ;
struct ifnet {struct msk_if_softc* if_softc; } ;


 int MSK_IF_LOCK (struct msk_if_softc*) ;
 int MSK_IF_UNLOCK (struct msk_if_softc*) ;
 int msk_start_locked (struct ifnet*) ;

__attribute__((used)) static void
msk_start(struct ifnet *ifp)
{
 struct msk_if_softc *sc_if;

 sc_if = ifp->if_softc;
 MSK_IF_LOCK(sc_if);
 msk_start_locked(ifp);
 MSK_IF_UNLOCK(sc_if);
}
