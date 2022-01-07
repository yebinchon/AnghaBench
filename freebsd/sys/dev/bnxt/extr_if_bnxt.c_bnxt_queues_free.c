
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_softc {int * rx_cp_rings; int * rx_rings; int * ag_rings; int * grp_info; int hw_rx_port_stats; int hw_tx_port_stats; int rx_stats; scalar_t__ ntxqsets; int * tx_cp_rings; int * tx_rings; int tx_stats; } ;
typedef int if_ctx_t ;


 int M_DEVBUF ;
 int free (int *,int ) ;
 int iflib_dma_free (int *) ;
 struct bnxt_softc* iflib_get_softc (int ) ;

__attribute__((used)) static void
bnxt_queues_free(if_ctx_t ctx)
{
 struct bnxt_softc *softc = iflib_get_softc(ctx);


 iflib_dma_free(&softc->tx_stats);
 free(softc->tx_rings, M_DEVBUF);
 softc->tx_rings = ((void*)0);
 free(softc->tx_cp_rings, M_DEVBUF);
 softc->tx_cp_rings = ((void*)0);
 softc->ntxqsets = 0;


 iflib_dma_free(&softc->rx_stats);
 iflib_dma_free(&softc->hw_tx_port_stats);
 iflib_dma_free(&softc->hw_rx_port_stats);
 free(softc->grp_info, M_DEVBUF);
 free(softc->ag_rings, M_DEVBUF);
 free(softc->rx_rings, M_DEVBUF);
 free(softc->rx_cp_rings, M_DEVBUF);
}
