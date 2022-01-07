
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct vte_txdesc {int tx_flags; int * tx_m; int tx_dmamap; TYPE_1__* tx_desc; } ;
struct TYPE_4__ {scalar_t__ vte_tx_cnt; int vte_tx_cons; int vte_tx_tag; struct vte_txdesc* vte_txdesc; int vte_tx_ring_map; int vte_tx_ring_tag; } ;
struct vte_softc {scalar_t__ vte_watchdog_timer; TYPE_2__ vte_cdata; struct ifnet* vte_ifp; } ;
struct ifnet {int if_drv_flags; } ;
struct TYPE_3__ {int dtst; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int IFF_DRV_OACTIVE ;
 int VTE_DESC_INC (int,int ) ;
 int VTE_DTST_TX_OWN ;
 int VTE_LOCK_ASSERT (struct vte_softc*) ;
 int VTE_TXMBUF ;
 int VTE_TX_RING_CNT ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bus_dmamap_unload (int ,int ) ;
 int le16toh (int ) ;
 int m_freem (int *) ;

__attribute__((used)) static void
vte_txeof(struct vte_softc *sc)
{
 struct ifnet *ifp;
 struct vte_txdesc *txd;
 uint16_t status;
 int cons, prog;

 VTE_LOCK_ASSERT(sc);

 ifp = sc->vte_ifp;

 if (sc->vte_cdata.vte_tx_cnt == 0)
  return;
 bus_dmamap_sync(sc->vte_cdata.vte_tx_ring_tag,
     sc->vte_cdata.vte_tx_ring_map, BUS_DMASYNC_POSTREAD |
     BUS_DMASYNC_POSTWRITE);
 cons = sc->vte_cdata.vte_tx_cons;




 for (prog = 0; sc->vte_cdata.vte_tx_cnt > 0; prog++) {
  txd = &sc->vte_cdata.vte_txdesc[cons];
  status = le16toh(txd->tx_desc->dtst);
  if ((status & VTE_DTST_TX_OWN) != 0)
   break;
  sc->vte_cdata.vte_tx_cnt--;

  bus_dmamap_sync(sc->vte_cdata.vte_tx_tag, txd->tx_dmamap,
      BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(sc->vte_cdata.vte_tx_tag, txd->tx_dmamap);
  if ((txd->tx_flags & VTE_TXMBUF) == 0)
   m_freem(txd->tx_m);
  txd->tx_flags &= ~VTE_TXMBUF;
  txd->tx_m = ((void*)0);
  prog++;
  VTE_DESC_INC(cons, VTE_TX_RING_CNT);
 }

 if (prog > 0) {
  ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
  sc->vte_cdata.vte_tx_cons = cons;




  if (sc->vte_cdata.vte_tx_cnt == 0)
   sc->vte_watchdog_timer = 0;
 }
}
