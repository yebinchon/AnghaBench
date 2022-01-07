
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nge_softc {int dummy; } ;
struct ifnet {struct nge_softc* if_softc; } ;


 int NGE_LOCK (struct nge_softc*) ;
 int NGE_UNLOCK (struct nge_softc*) ;
 int nge_start_locked (struct ifnet*) ;

__attribute__((used)) static void
nge_start(struct ifnet *ifp)
{
 struct nge_softc *sc;

 sc = ifp->if_softc;
 NGE_LOCK(sc);
 nge_start_locked(ifp);
 NGE_UNLOCK(sc);
}
