
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct bridge_softc* if_bridge; } ;
struct bridge_softc {int dummy; } ;
struct bridge_iflist {int bif_stp; } ;


 int BRIDGE_LOCK (struct bridge_softc*) ;
 int BRIDGE_UNLOCK (struct bridge_softc*) ;
 int bridge_linkcheck (struct bridge_softc*) ;
 struct bridge_iflist* bridge_lookup_member_if (struct bridge_softc*,struct ifnet*) ;
 int bstp_linkstate (int *) ;

__attribute__((used)) static void
bridge_linkstate(struct ifnet *ifp)
{
 struct bridge_softc *sc = ifp->if_bridge;
 struct bridge_iflist *bif;

 BRIDGE_LOCK(sc);
 bif = bridge_lookup_member_if(sc, ifp);
 if (bif == ((void*)0)) {
  BRIDGE_UNLOCK(sc);
  return;
 }
 bridge_linkcheck(sc);
 BRIDGE_UNLOCK(sc);

 bstp_linkstate(&bif->bif_stp);
}
