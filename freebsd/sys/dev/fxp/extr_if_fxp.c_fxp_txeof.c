
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fxp_tx {TYPE_2__* tx_cb; int * tx_mbuf; int tx_map; struct fxp_tx* tx_next; } ;
struct TYPE_6__ {struct fxp_tx* tx_first; } ;
struct fxp_softc {scalar_t__ tx_queued; scalar_t__ watchdog_timer; int cbl_map; int cbl_tag; TYPE_3__ fxp_desc; int fxp_txmtag; int ifp; } ;
typedef int if_t ;
struct TYPE_5__ {TYPE_1__* tbd; int cb_status; } ;
struct TYPE_4__ {scalar_t__ tb_addr; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int FXP_CB_STATUS_C ;
 int IFF_DRV_OACTIVE ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bus_dmamap_unload (int ,int ) ;
 int if_setdrvflagbits (int ,int ,int ) ;
 int le16toh (int ) ;
 int m_freem (int *) ;

__attribute__((used)) static void
fxp_txeof(struct fxp_softc *sc)
{
 if_t ifp;
 struct fxp_tx *txp;

 ifp = sc->ifp;
 bus_dmamap_sync(sc->cbl_tag, sc->cbl_map,
     BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
 for (txp = sc->fxp_desc.tx_first; sc->tx_queued &&
     (le16toh(txp->tx_cb->cb_status) & FXP_CB_STATUS_C) != 0;
     txp = txp->tx_next) {
  if (txp->tx_mbuf != ((void*)0)) {
   bus_dmamap_sync(sc->fxp_txmtag, txp->tx_map,
       BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(sc->fxp_txmtag, txp->tx_map);
   m_freem(txp->tx_mbuf);
   txp->tx_mbuf = ((void*)0);

   txp->tx_cb->tbd[0].tb_addr = 0;
  }
  sc->tx_queued--;
  if_setdrvflagbits(ifp, 0, IFF_DRV_OACTIVE);
 }
 sc->fxp_desc.tx_first = txp;
 bus_dmamap_sync(sc->cbl_tag, sc->cbl_map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
 if (sc->tx_queued == 0)
  sc->watchdog_timer = 0;
}
