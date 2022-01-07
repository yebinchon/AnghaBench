
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fxp_tx {TYPE_3__* tx_cb; int * tx_mbuf; int tx_map; } ;
struct TYPE_4__ {struct fxp_tx* tx_list; } ;
struct fxp_softc {scalar_t__ tx_queued; int cbl_map; int cbl_tag; int fxp_txmtag; TYPE_1__ fxp_desc; int stat_ch; scalar_t__ watchdog_timer; int ifp; } ;
typedef int if_t ;
struct TYPE_6__ {TYPE_2__* tbd; } ;
struct TYPE_5__ {scalar_t__ tb_addr; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CSR_WRITE_1 (struct fxp_softc*,int ,int ) ;
 int CSR_WRITE_4 (struct fxp_softc*,int ,int ) ;
 int DELAY (int) ;
 int FXP_CSR_PORT ;
 int FXP_CSR_SCB_INTRCNTL ;
 int FXP_NTXCB ;
 int FXP_PORT_SELECTIVE_RESET ;
 int FXP_SCB_INTR_DISABLE ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bus_dmamap_unload (int ,int ) ;
 int callout_stop (int *) ;
 int fxp_update_stats (struct fxp_softc*) ;
 int if_setdrvflagbits (int ,int ,int) ;
 int m_freem (int *) ;

__attribute__((used)) static void
fxp_stop(struct fxp_softc *sc)
{
 if_t ifp = sc->ifp;
 struct fxp_tx *txp;
 int i;

 if_setdrvflagbits(ifp, 0, (IFF_DRV_RUNNING | IFF_DRV_OACTIVE));
 sc->watchdog_timer = 0;




 callout_stop(&sc->stat_ch);





 CSR_WRITE_4(sc, FXP_CSR_PORT, FXP_PORT_SELECTIVE_RESET);
 DELAY(50);

 CSR_WRITE_1(sc, FXP_CSR_SCB_INTRCNTL, FXP_SCB_INTR_DISABLE);

 fxp_update_stats(sc);




 txp = sc->fxp_desc.tx_list;
 for (i = 0; i < FXP_NTXCB; i++) {
  if (txp[i].tx_mbuf != ((void*)0)) {
   bus_dmamap_sync(sc->fxp_txmtag, txp[i].tx_map,
       BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(sc->fxp_txmtag, txp[i].tx_map);
   m_freem(txp[i].tx_mbuf);
   txp[i].tx_mbuf = ((void*)0);

   txp[i].tx_cb->tbd[0].tb_addr = 0;
  }
 }
 bus_dmamap_sync(sc->cbl_tag, sc->cbl_map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
 sc->tx_queued = 0;
}
