
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_drv_flags; } ;
struct ffec_softc {int tx_idx_tail; int tx_idx_head; struct ffec_hwdesc* rxdesc_ring; int txbuf_tag; struct ffec_bufmap* txbuf_map; struct ffec_hwdesc* txdesc_ring; int ffec_callout; scalar_t__ tx_watchdog_count; struct ifnet* ifp; } ;
struct ffec_hwdesc {scalar_t__ buf_paddr; } ;
struct ffec_bufmap {int * mbuf; int map; } ;


 int FEC_ECR_ETHEREN ;
 int FEC_ECR_REG ;
 int FEC_IEM_REG ;
 int FEC_IER_REG ;
 int FFEC_ASSERT_LOCKED (struct ffec_softc*) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int RD4 (struct ffec_softc*,int ) ;
 int RX_DESC_COUNT ;
 int WR4 (struct ffec_softc*,int ,int) ;
 int bus_dmamap_unload (int ,int ) ;
 int callout_stop (int *) ;
 int ffec_setup_rxdesc (struct ffec_softc*,int,scalar_t__) ;
 int ffec_setup_txdesc (struct ffec_softc*,int,int ,int ) ;
 int m_freem (int *) ;
 int next_txidx (struct ffec_softc*,int) ;

__attribute__((used)) static void
ffec_stop_locked(struct ffec_softc *sc)
{
 struct ifnet *ifp;
 struct ffec_hwdesc *desc;
 struct ffec_bufmap *bmap;
 int idx;

 FFEC_ASSERT_LOCKED(sc);

 ifp = sc->ifp;
 ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
 sc->tx_watchdog_count = 0;





 WR4(sc, FEC_ECR_REG, RD4(sc, FEC_ECR_REG) & ~FEC_ECR_ETHEREN);
 WR4(sc, FEC_IEM_REG, 0x00000000);
 WR4(sc, FEC_IER_REG, 0xffffffff);
 callout_stop(&sc->ffec_callout);
 idx = sc->tx_idx_tail;
 while (idx != sc->tx_idx_head) {
  desc = &sc->txdesc_ring[idx];
  bmap = &sc->txbuf_map[idx];
  if (desc->buf_paddr != 0) {
   bus_dmamap_unload(sc->txbuf_tag, bmap->map);
   m_freem(bmap->mbuf);
   bmap->mbuf = ((void*)0);
   ffec_setup_txdesc(sc, idx, 0, 0);
  }
  idx = next_txidx(sc, idx);
 }







 for (idx = 0; idx < RX_DESC_COUNT; ++idx) {
  desc = &sc->rxdesc_ring[idx];
  ffec_setup_rxdesc(sc, idx, desc->buf_paddr);
 }
}
