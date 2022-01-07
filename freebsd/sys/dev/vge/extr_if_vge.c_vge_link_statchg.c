
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct vge_softc {struct ifnet* vge_ifp; int vge_flags; } ;
struct ifnet {int if_snd; } ;


 int CSR_READ_1 (struct vge_softc*,int ) ;
 int CSR_WRITE_1 (struct vge_softc*,int ,int) ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int LINK_STATE_DOWN ;
 int LINK_STATE_UP ;
 int VGE_CR2_FDX_RXFLOWCTL_ENABLE ;
 int VGE_CR2_FDX_TXFLOWCTL_ENABLE ;
 int VGE_CRC2 ;
 int VGE_CRS2 ;
 int VGE_FLAG_LINK ;
 int VGE_LOCK_ASSERT (struct vge_softc*) ;
 int VGE_PHYSTS0 ;
 int VGE_PHYSTS_FDX ;
 int VGE_PHYSTS_LINK ;
 int VGE_PHYSTS_RESETSTS ;
 int VGE_PHYSTS_RXFLOWCAP ;
 int VGE_PHYSTS_TXFLOWCAP ;
 int if_link_state_change (struct ifnet*,int ) ;
 int vge_miipoll_start (struct vge_softc*) ;
 int vge_start_locked (struct ifnet*) ;

__attribute__((used)) static void
vge_link_statchg(void *xsc)
{
 struct vge_softc *sc;
 struct ifnet *ifp;
 uint8_t physts;

 sc = xsc;
 ifp = sc->vge_ifp;
 VGE_LOCK_ASSERT(sc);

 physts = CSR_READ_1(sc, VGE_PHYSTS0);
 if ((physts & VGE_PHYSTS_RESETSTS) == 0) {
  if ((physts & VGE_PHYSTS_LINK) == 0) {
   sc->vge_flags &= ~VGE_FLAG_LINK;
   if_link_state_change(sc->vge_ifp,
       LINK_STATE_DOWN);
  } else {
   sc->vge_flags |= VGE_FLAG_LINK;
   if_link_state_change(sc->vge_ifp,
       LINK_STATE_UP);
   CSR_WRITE_1(sc, VGE_CRC2, VGE_CR2_FDX_TXFLOWCTL_ENABLE |
       VGE_CR2_FDX_RXFLOWCTL_ENABLE);
   if ((physts & VGE_PHYSTS_FDX) != 0) {
    if ((physts & VGE_PHYSTS_TXFLOWCAP) != 0)
     CSR_WRITE_1(sc, VGE_CRS2,
         VGE_CR2_FDX_TXFLOWCTL_ENABLE);
    if ((physts & VGE_PHYSTS_RXFLOWCAP) != 0)
     CSR_WRITE_1(sc, VGE_CRS2,
         VGE_CR2_FDX_RXFLOWCTL_ENABLE);
   }
   if (!IFQ_DRV_IS_EMPTY(&ifp->if_snd))
    vge_start_locked(ifp);
  }
 }




 vge_miipoll_start(sc);
}
