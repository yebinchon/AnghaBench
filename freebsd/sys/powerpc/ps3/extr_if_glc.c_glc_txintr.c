
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet {int if_drv_flags; int if_snd; } ;
struct glc_txsoft {size_t txs_lastdesc; int txs_firstdesc; int * txs_mbuf; scalar_t__ txs_ndescs; int txs_dmamap; } ;
struct glc_softc {int first_used_txdma_slot; int sc_wdog_timer; int sc_txdirtyq; int sc_self; scalar_t__ sc_txdmadesc_phys; int sc_dev; int sc_bus; int sc_txfreeq; TYPE_1__* sc_txdmadesc; int bsy_txdma_slots; int sc_txdma_tag; int sc_txdmadesc_map; int sc_dmadesc_tag; struct ifnet* sc_ifp; } ;
struct glc_dmadesc {int dummy; } ;
struct TYPE_2__ {int cmd_stat; } ;


 int BUS_DMASYNC_POSTREAD ;
 int GELIC_CMDSTAT_CHAIN_END ;
 int GELIC_DESCR_OWNED ;
 int IFCOUNTER_OERRORS ;
 int IFCOUNTER_OPACKETS ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 scalar_t__ STAILQ_EMPTY (int *) ;
 struct glc_txsoft* STAILQ_FIRST (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct glc_txsoft*,int ) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int device_printf (int ,char*,int) ;
 int glc_start_locked (struct ifnet*) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int lv1_net_start_tx_dma (int ,int ,scalar_t__,int ) ;
 int lv1_net_stop_tx_dma (int ,int ,int ) ;
 int m_freem (int *) ;
 int txs_q ;

__attribute__((used)) static void
glc_txintr(struct glc_softc *sc)
{
 struct ifnet *ifp = sc->sc_ifp;
 struct glc_txsoft *txs;
 int progress = 0, kickstart = 0, error;

 bus_dmamap_sync(sc->sc_dmadesc_tag, sc->sc_txdmadesc_map,
     BUS_DMASYNC_POSTREAD);

 while ((txs = STAILQ_FIRST(&sc->sc_txdirtyq)) != ((void*)0)) {
  if (sc->sc_txdmadesc[txs->txs_lastdesc].cmd_stat
      & GELIC_DESCR_OWNED)
   break;

  STAILQ_REMOVE_HEAD(&sc->sc_txdirtyq, txs_q);
  bus_dmamap_unload(sc->sc_txdma_tag, txs->txs_dmamap);
  sc->bsy_txdma_slots -= txs->txs_ndescs;

  if (txs->txs_mbuf != ((void*)0)) {
   m_freem(txs->txs_mbuf);
   txs->txs_mbuf = ((void*)0);
  }

  if ((sc->sc_txdmadesc[txs->txs_lastdesc].cmd_stat & 0xf0000000)
      != 0) {
   lv1_net_stop_tx_dma(sc->sc_bus, sc->sc_dev, 0);
   kickstart = 1;
   if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
  }

  if (sc->sc_txdmadesc[txs->txs_lastdesc].cmd_stat &
      GELIC_CMDSTAT_CHAIN_END)
   kickstart = 1;

  STAILQ_INSERT_TAIL(&sc->sc_txfreeq, txs, txs_q);
  if_inc_counter(ifp, IFCOUNTER_OPACKETS, 1);
  progress = 1;
 }

 if (txs != ((void*)0))
  sc->first_used_txdma_slot = txs->txs_firstdesc;
 else
  sc->first_used_txdma_slot = -1;

 if (kickstart || txs != ((void*)0)) {

  error = lv1_net_start_tx_dma(sc->sc_bus, sc->sc_dev,
      sc->sc_txdmadesc_phys +
      ((txs == ((void*)0)) ? 0 : txs->txs_firstdesc)*
       sizeof(struct glc_dmadesc), 0);
  if (error != 0)
   device_printf(sc->sc_self,
       "lv1_net_start_tx_dma error: %d\n", error);
 }

 if (progress) {




  ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
  sc->sc_wdog_timer = STAILQ_EMPTY(&sc->sc_txdirtyq) ? 0 : 5;

  if ((ifp->if_drv_flags & IFF_DRV_RUNNING) &&
      !IFQ_DRV_IS_EMPTY(&ifp->if_snd))
   glc_start_locked(ifp);
 }
}
