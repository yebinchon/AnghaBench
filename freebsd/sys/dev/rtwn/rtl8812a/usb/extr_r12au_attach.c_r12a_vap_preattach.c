
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {struct r12a_softc* sc_priv; } ;
struct r12a_softc {int rs_flags; } ;
struct ifnet {int if_capabilities; int if_capenable; } ;
struct ieee80211vap {struct ifnet* iv_ifp; } ;


 int IFCAP_RXCSUM ;
 int IFCAP_RXCSUM_IPV6 ;
 int R12A_RXCKSUM6_EN ;
 int R12A_RXCKSUM_EN ;
 int RTWN_LOCK (struct rtwn_softc*) ;
 int RTWN_UNLOCK (struct rtwn_softc*) ;

void
r12a_vap_preattach(struct rtwn_softc *sc, struct ieee80211vap *vap)
{
 struct r12a_softc *rs = sc->sc_priv;
 struct ifnet *ifp = vap->iv_ifp;

 ifp->if_capabilities = IFCAP_RXCSUM | IFCAP_RXCSUM_IPV6;
 RTWN_LOCK(sc);
 if (rs->rs_flags & R12A_RXCKSUM_EN)
  ifp->if_capenable |= IFCAP_RXCSUM;
 if (rs->rs_flags & R12A_RXCKSUM6_EN)
  ifp->if_capenable |= IFCAP_RXCSUM_IPV6;
 RTWN_UNLOCK(sc);
}
