
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct vge_softc {struct ifnet* vge_ifp; } ;
struct ifnet {int if_capenable; } ;


 int CSR_READ_1 (struct vge_softc*,int ) ;
 int CSR_WRITE_1 (struct vge_softc*,int ,int ) ;
 int IFCAP_VLAN_HWTAGGING ;
 int VGE_LOCK_ASSERT (struct vge_softc*) ;
 int VGE_RXCFG ;
 int VGE_VTAG_OPT2 ;

__attribute__((used)) static void
vge_setvlan(struct vge_softc *sc)
{
 struct ifnet *ifp;
 uint8_t cfg;

 VGE_LOCK_ASSERT(sc);

 ifp = sc->vge_ifp;
 cfg = CSR_READ_1(sc, VGE_RXCFG);
 if ((ifp->if_capenable & IFCAP_VLAN_HWTAGGING) != 0)
  cfg |= VGE_VTAG_OPT2;
 else
  cfg &= ~VGE_VTAG_OPT2;
 CSR_WRITE_1(sc, VGE_RXCFG, cfg);
}
