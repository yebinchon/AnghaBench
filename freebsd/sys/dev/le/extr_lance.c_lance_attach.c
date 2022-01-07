
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lance_softc {int sc_enaddr; struct ifnet* sc_ifp; } ;
struct ifnet {int if_hdrlen; int if_capenable; int if_capabilities; } ;
struct ether_vlan_header {int dummy; } ;


 int IFCAP_VLAN_MTU ;
 int ether_ifattach (struct ifnet*,int ) ;

void
lance_attach(struct lance_softc *sc)
{
 struct ifnet *ifp = sc->sc_ifp;


 ether_ifattach(ifp, sc->sc_enaddr);


 ifp->if_hdrlen = sizeof(struct ether_vlan_header);
 ifp->if_capabilities |= IFCAP_VLAN_MTU;
 ifp->if_capenable |= IFCAP_VLAN_MTU;
}
