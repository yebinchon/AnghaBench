
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int txdesc ;
struct ti_txdesc {int * tx_m; int tx_dmamap; } ;
struct ti_tx_desc {int ti_flags; } ;
struct TYPE_6__ {int ti_txbusyq; int ti_txfreeq; int ti_tx_tag; int ti_tx_ring_map; int ti_tx_ring_tag; } ;
struct TYPE_5__ {struct ti_tx_desc* ti_tx_ring; } ;
struct TYPE_4__ {int ti_idx; } ;
struct ti_softc {int ti_tx_saved_considx; scalar_t__ ti_hwrev; scalar_t__ ti_txcnt; scalar_t__ ti_timer; TYPE_3__ ti_cdata; TYPE_2__ ti_rdata; TYPE_1__ ti_tx_considx; struct ifnet* ti_ifp; } ;
struct ifnet {int if_drv_flags; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int IFCOUNTER_OPACKETS ;
 int IFF_DRV_OACTIVE ;
 struct ti_txdesc* STAILQ_FIRST (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct ti_txdesc*,int ) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int TI_BDFLAG_END ;
 scalar_t__ TI_HWREV_TIGON ;
 int TI_INC (int,int ) ;
 scalar_t__ TI_TX_RING_BASE ;
 int TI_TX_RING_CNT ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int m_freem (int *) ;
 int ti_mem_read (struct ti_softc*,scalar_t__,int,struct ti_tx_desc*) ;
 int tx_q ;

__attribute__((used)) static void
ti_txeof(struct ti_softc *sc)
{
 struct ti_txdesc *txd;
 struct ti_tx_desc txdesc;
 struct ti_tx_desc *cur_tx = ((void*)0);
 struct ifnet *ifp;
 int idx;

 ifp = sc->ti_ifp;

 txd = STAILQ_FIRST(&sc->ti_cdata.ti_txbusyq);
 if (txd == ((void*)0))
  return;

 if (sc->ti_rdata.ti_tx_ring != ((void*)0))
  bus_dmamap_sync(sc->ti_cdata.ti_tx_ring_tag,
      sc->ti_cdata.ti_tx_ring_map, BUS_DMASYNC_POSTWRITE);




 for (idx = sc->ti_tx_saved_considx; idx != sc->ti_tx_considx.ti_idx;
     TI_INC(idx, TI_TX_RING_CNT)) {
  if (sc->ti_hwrev == TI_HWREV_TIGON) {
   ti_mem_read(sc, TI_TX_RING_BASE + idx * sizeof(txdesc),
       sizeof(txdesc), &txdesc);
   cur_tx = &txdesc;
  } else
   cur_tx = &sc->ti_rdata.ti_tx_ring[idx];
  sc->ti_txcnt--;
  ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
  if ((cur_tx->ti_flags & TI_BDFLAG_END) == 0)
   continue;
  bus_dmamap_sync(sc->ti_cdata.ti_tx_tag, txd->tx_dmamap,
      BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(sc->ti_cdata.ti_tx_tag, txd->tx_dmamap);

  if_inc_counter(ifp, IFCOUNTER_OPACKETS, 1);
  m_freem(txd->tx_m);
  txd->tx_m = ((void*)0);
  STAILQ_REMOVE_HEAD(&sc->ti_cdata.ti_txbusyq, tx_q);
  STAILQ_INSERT_TAIL(&sc->ti_cdata.ti_txfreeq, txd, tx_q);
  txd = STAILQ_FIRST(&sc->ti_cdata.ti_txbusyq);
 }
 sc->ti_tx_saved_considx = idx;
 if (sc->ti_txcnt == 0)
  sc->ti_timer = 0;
}
