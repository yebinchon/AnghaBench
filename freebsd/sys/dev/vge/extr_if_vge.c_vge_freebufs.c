
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vge_txdesc {int * tx_m; int tx_dmamap; } ;
struct TYPE_2__ {int vge_tx_tag; struct vge_txdesc* vge_txdesc; int vge_rx_tag; struct vge_rxdesc* vge_rxdesc; } ;
struct vge_softc {TYPE_1__ vge_cdata; struct ifnet* vge_ifp; } ;
struct vge_rxdesc {int * rx_m; int rx_dmamap; } ;
struct ifnet {int dummy; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int IFCOUNTER_OERRORS ;
 int VGE_LOCK_ASSERT (struct vge_softc*) ;
 int VGE_RX_DESC_CNT ;
 int VGE_TX_DESC_CNT ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int m_freem (int *) ;

__attribute__((used)) static void
vge_freebufs(struct vge_softc *sc)
{
 struct vge_txdesc *txd;
 struct vge_rxdesc *rxd;
 struct ifnet *ifp;
 int i;

 VGE_LOCK_ASSERT(sc);

 ifp = sc->vge_ifp;



 for (i = 0; i < VGE_RX_DESC_CNT; i++) {
  rxd = &sc->vge_cdata.vge_rxdesc[i];
  if (rxd->rx_m != ((void*)0)) {
   bus_dmamap_sync(sc->vge_cdata.vge_rx_tag,
       rxd->rx_dmamap, BUS_DMASYNC_POSTREAD);
   bus_dmamap_unload(sc->vge_cdata.vge_rx_tag,
       rxd->rx_dmamap);
   m_freem(rxd->rx_m);
   rxd->rx_m = ((void*)0);
  }
 }

 for (i = 0; i < VGE_TX_DESC_CNT; i++) {
  txd = &sc->vge_cdata.vge_txdesc[i];
  if (txd->tx_m != ((void*)0)) {
   bus_dmamap_sync(sc->vge_cdata.vge_tx_tag,
       txd->tx_dmamap, BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(sc->vge_cdata.vge_tx_tag,
       txd->tx_dmamap);
   m_freem(txd->tx_m);
   txd->tx_m = ((void*)0);
   if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
  }
 }
}
