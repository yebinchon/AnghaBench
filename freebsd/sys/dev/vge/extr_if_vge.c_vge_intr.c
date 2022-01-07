
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vge_softc {int vge_flags; struct ifnet* vge_ifp; } ;
struct ifnet {int if_flags; int if_capenable; int if_drv_flags; int if_snd; } ;


 int CSR_READ_4 (struct vge_softc*,int ) ;
 int CSR_WRITE_1 (struct vge_softc*,int ,int ) ;
 int CSR_WRITE_4 (struct vge_softc*,int ,int) ;
 int IFCAP_POLLING ;
 int IFF_DRV_RUNNING ;
 int IFF_UP ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int VGE_CR3_INT_GMSK ;
 int VGE_CRC3 ;
 int VGE_CRS3 ;
 int VGE_FLAG_SUSPENDED ;
 int VGE_INTRS ;
 int VGE_ISR ;
 int VGE_ISR_HOLDOFF_RELOAD ;
 int VGE_ISR_LINKSTS ;
 int VGE_ISR_RXDMA_STALL ;
 int VGE_ISR_RXNODESC ;
 int VGE_ISR_RXOFLOW ;
 int VGE_ISR_RXOK ;
 int VGE_ISR_RXOK_HIPRIO ;
 int VGE_ISR_TXDMA_STALL ;
 int VGE_ISR_TXOK0 ;
 int VGE_ISR_TXOK_HIPRIO ;
 int VGE_LOCK (struct vge_softc*) ;
 int VGE_RXQCSRS ;
 int VGE_RXQCSR_RUN ;
 int VGE_RXQCSR_WAK ;
 int VGE_RX_DESC_CNT ;
 int VGE_UNLOCK (struct vge_softc*) ;
 int vge_init_locked (struct vge_softc*) ;
 int vge_link_statchg (struct vge_softc*) ;
 int vge_rxeof (struct vge_softc*,int ) ;
 int vge_start_locked (struct ifnet*) ;
 int vge_txeof (struct vge_softc*) ;

__attribute__((used)) static void
vge_intr(void *arg)
{
 struct vge_softc *sc;
 struct ifnet *ifp;
 uint32_t status;

 sc = arg;
 VGE_LOCK(sc);

 ifp = sc->vge_ifp;
 if ((sc->vge_flags & VGE_FLAG_SUSPENDED) != 0 ||
     (ifp->if_flags & IFF_UP) == 0) {
  VGE_UNLOCK(sc);
  return;
 }
 CSR_WRITE_1(sc, VGE_CRC3, VGE_CR3_INT_GMSK);
 status = CSR_READ_4(sc, VGE_ISR);
 CSR_WRITE_4(sc, VGE_ISR, status | VGE_ISR_HOLDOFF_RELOAD);

 if (status == 0xFFFFFFFF || (status & VGE_INTRS) == 0)
  goto done;
 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
  if (status & (VGE_ISR_RXOK|VGE_ISR_RXOK_HIPRIO))
   vge_rxeof(sc, VGE_RX_DESC_CNT);
  if (status & (VGE_ISR_RXOFLOW|VGE_ISR_RXNODESC)) {
   vge_rxeof(sc, VGE_RX_DESC_CNT);
   CSR_WRITE_1(sc, VGE_RXQCSRS, VGE_RXQCSR_RUN);
   CSR_WRITE_1(sc, VGE_RXQCSRS, VGE_RXQCSR_WAK);
  }

  if (status & (VGE_ISR_TXOK0|VGE_ISR_TXOK_HIPRIO))
   vge_txeof(sc);

  if (status & (VGE_ISR_TXDMA_STALL|VGE_ISR_RXDMA_STALL)) {
   ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
   vge_init_locked(sc);
  }

  if (status & VGE_ISR_LINKSTS)
   vge_link_statchg(sc);
 }
done:
 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {

  CSR_WRITE_1(sc, VGE_CRS3, VGE_CR3_INT_GMSK);

  if (!IFQ_DRV_IS_EMPTY(&ifp->if_snd))
   vge_start_locked(ifp);
 }
 VGE_UNLOCK(sc);
}
