
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct stge_softc {struct ifnet* sc_ifp; } ;
struct ifnet {int if_capenable; } ;


 int CSR_READ_4 (struct stge_softc*,int ) ;
 int CSR_WRITE_4 (struct stge_softc*,int ,int) ;
 int IFCAP_VLAN_HWTAGGING ;
 int MC_AutoVLANuntagging ;
 int MC_MASK ;
 int STGE_MACCtrl ;

__attribute__((used)) static void
stge_vlan_setup(struct stge_softc *sc)
{
 struct ifnet *ifp;
 uint32_t v;

 ifp = sc->sc_ifp;
 v = CSR_READ_4(sc, STGE_MACCtrl) & MC_MASK;
 if ((ifp->if_capenable & IFCAP_VLAN_HWTAGGING) != 0)
  v |= MC_AutoVLANuntagging;
 else
  v &= ~MC_AutoVLANuntagging;
 CSR_WRITE_4(sc, STGE_MACCtrl, v);
}
